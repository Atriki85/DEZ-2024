import os
import pandas as pd
import pyarrow.csv as pv
import pyarrow.parquet as pq
import pyarrow as pa
import requests
from google.cloud import storage
import logging
import subprocess
import pyarrow.csv as pv


"""
Pre-reqs: 
1. `pip install pandas pyarrow google-cloud-storage`
2. Set GOOGLE_APPLICATION_CREDENTIALS to your project/service-account key
3. Set GCP_GCS_BUCKET as your bucket or change default value of BUCKET
"""

# services = ['fhv','green','yellow']
init_url = 'https://github.com/DataTalksClub/nyc-tlc-data/releases/download/'
BUCKET = os.environ.get("GCP_GCS_BUCKET", "mage-zoomcamp_art")


#  0   dispatching_base_num    566426 non-null  object 
#  1   pickup_datetime         566426 non-null  object 
#  2   dropoff_datetime        566426 non-null  object 
#  3   PULocationID            400323 non-null  float64
#  4   DOLocationID            539612 non-null  float64
#  5   SR_Flag                 0 non-null       float64
#  6   Affiliated_base_number  563479 non-null  object


table_schema_fhv = pa.schema(
   [
        ('dispatching_base_num', pa.string()), 
        ('pickup_datetime', pa.timestamp('s')), 
        ('dropOff_datetime', pa.timestamp('s')), 
        ('PUlocationID', pa.float64()), 
        ('DOlocationID', pa.float64()), 
        ('SR_Flag', pa.float64()), 
        ('Affiliated_base_number', pa.string())
        ]
)

table_schema_green = pa.schema(
    [
        ('VendorID',pa.string()),
        ('lpep_pickup_datetime',pa.timestamp('s')),
        ('lpep_dropoff_datetime',pa.timestamp('s')),
        ('store_and_fwd_flag',pa.string()),
        ('RatecodeID',pa.int64()),
        ('PULocationID',pa.int64()),
        ('DOLocationID',pa.int64()),
        ('passenger_count',pa.int64()),
        ('trip_distance',pa.float64()),
        ('fare_amount',pa.float64()),
        ('extra',pa.float64()),
        ('mta_tax',pa.float64()),
        ('tip_amount',pa.float64()),
        ('tolls_amount',pa.float64()),
        ('ehail_fee',pa.float64()),
        ('improvement_surcharge',pa.float64()),
        ('total_amount',pa.float64()),
        ('payment_type',pa.int64()),
        ('trip_type',pa.int64()),
        ('congestion_surcharge',pa.float64()),
    ]
)

table_schema_yellow = pa.schema(
   [
        ('VendorID', pa.string()), 
        ('tpep_pickup_datetime', pa.timestamp('s')), 
        ('tpep_dropoff_datetime', pa.timestamp('s')), 
        ('passenger_count', pa.int64()), 
        ('trip_distance', pa.float64()), 
        ('RatecodeID', pa.string()), 
        ('store_and_fwd_flag', pa.string()), 
        ('PULocationID', pa.int64()), 
        ('DOLocationID', pa.int64()), 
        ('payment_type', pa.int64()), 
        ('fare_amount',pa.float64()), 
        ('extra',pa.float64()), 
        ('mta_tax', pa.float64()), 
        ('tip_amount', pa.float64()), 
        ('tolls_amount', pa.float64()), 
        ('improvement_surcharge', pa.float64()), 
        ('total_amount', pa.float64()), 
        ('congestion_surcharge', pa.float64())]

)

def format_to_parquet(src_file, service):
    if not src_file.endswith('.csv'):
        logging.error("Can only accept source files in CSV format, for the moment")
        return
    table = pv.read_csv(src_file)

    if service == 'yellow':
        table = table.cast(table_schema_yellow)
    
    elif service == 'green':
        table = table.cast(table_schema_green)
        
    elif service == 'fhv':
        #table = pv.read_csv(src_file)
        table = table.cast(table_schema_fhv)

    pq.write_table(table, src_file.replace('.csv', '.parquet'))


def upload_to_gcs(bucket, object_name, local_file):
    """
    Ref: https://cloud.google.com/storage/docs/uploading-objects#storage-upload-object-python
    """
    # # WORKAROUND to prevent timeout for files > 6 MB on 800 kbps upload speed.
    # # (Ref: https://github.com/googleapis/python-storage/issues/74)
    # storage.blob._MAX_MULTIPART_SIZE = 5 * 1024 * 1024  # 5 MB
    # storage.blob._DEFAULT_CHUNKSIZE = 5 * 1024 * 1024  # 5 MB

    client = storage.Client()
    bucket = client.bucket(bucket)
    blob = bucket.blob(object_name)
    blob.upload_from_filename(local_file)


def web_to_gcs(year, service):
    for i in range(13):
        if i != 12:
            month = '0'+str(i+1)
            month = month[-2:]
            file_name = f"{service}_tripdata_{year}-{month}.csv"
            file_name_init = file_name
            file_name_gz = f"{service}_tripdata_{year}-{month}.csv.gz"
            #request_url = init_url + file_name_gz
            # download it using requests via a pandas df
            request_url = f"{init_url}{service}/{file_name_gz}"
            r = requests.get(request_url)
            open(file_name_gz, 'wb').write(r.content)
            os.system(f"gzip -d {file_name_gz}")
            print(f"Local: {file_name}")
            parquetized = format_to_parquet(file_name, service)
            file_name = file_name.replace('.csv', '.parquet')
            print(f"Parquet: {file_name}")
            upload_to_gcs(BUCKET, f"{service}/{file_name}", file_name)
            print(f"GCS: {service}/{file_name}")
            os.system(f"rm {file_name_init}")
            os.system(f"rm {file_name}")


            


#web_to_gcs('2019', 'green')
#web_to_gcs('2020', 'green')
#web_to_gcs('2019', 'yellow')
#web_to_gcs('2020', 'yellow')
web_to_gcs('2019', 'fhv')