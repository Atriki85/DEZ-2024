��
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
R
Equal
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(�
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
q
GatherNd
params"Tparams
indices"Tindices
output"Tparams"
Tparamstype"
Tindicestype:
2	
�
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype�
.
Identity

input"T
output"T"	
Ttype
�
InitializeTableFromTextFileV2
table_handle
filename"
	key_indexint(0���������"
value_indexint(0���������"+

vocab_sizeint���������(0���������"
	delimiterstring	"
offsetint �
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype�
�
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	"
grad_abool( "
grad_bbool( 
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �

NoOp
U
NotEqual
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(�
�
OneHot
indices"TI	
depth
on_value"T
	off_value"T
output"T"
axisint���������"	
Ttype"
TItype0	:
2	
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
@
ReadVariableOp
resource
value"dtype"
dtypetype�
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
A
SelectV2
	condition

t"T
e"T
output"T"	
Ttype
d
Shape

input"T&
output"out_type��out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
�
SparseToDense
sparse_indices"Tindices
output_shape"Tindices
sparse_values"T
default_value"T

dense"T"
validate_indicesbool("	
Ttype"
Tindicestype:
2	
@
StaticRegexFullMatch	
input

output
"
patternstring
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
�
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( ""
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "

debug_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �
9
VarIsInitializedOp
resource
is_initialized
�
G
Where

input"T	
index	"'
Ttype0
:
2	
"serve*2.16.02unknown8��
f
fare_amountPlaceholder*#
_output_shapes
:���������*
dtype0*
shape:���������
j
passenger_countPlaceholder*#
_output_shapes
:���������*
dtype0*
shape:���������
g
tolls_amountPlaceholder*#
_output_shapes
:���������*
dtype0*
shape:���������
h
trip_distancePlaceholder*#
_output_shapes
:���������*
dtype0*
shape:���������
g
DOLocationIDPlaceholder*#
_output_shapes
:���������*
dtype0*
shape:���������
H
Equal/yConst*
_output_shapes
: *
dtype0*
valueB B 
S
EqualEqualDOLocationIDEqual/y*
T0*#
_output_shapes
:���������
j
ConstConst*
_output_shapes
:*
dtype0*1
value(B&B__empty_string_replacement__
O
ShapeShapeDOLocationID*
T0*
_output_shapes
::��
H
TileTileConstShape*
T0*#
_output_shapes
:���������
]
SelectV2SelectV2EqualTileDOLocationID*
T0*#
_output_shapes
:���������
g
PULocationIDPlaceholder*#
_output_shapes
:���������*
dtype0*
shape:���������
J
	Equal_1/yConst*
_output_shapes
: *
dtype0*
valueB B 
W
Equal_1EqualPULocationID	Equal_1/y*
T0*#
_output_shapes
:���������
l
Const_1Const*
_output_shapes
:*
dtype0*1
value(B&B__empty_string_replacement__
Q
Shape_1ShapePULocationID*
T0*
_output_shapes
::��
N
Tile_1TileConst_1Shape_1*
T0*#
_output_shapes
:���������
c

SelectV2_1SelectV2Equal_1Tile_1PULocationID*
T0*#
_output_shapes
:���������
g
payment_typePlaceholder*#
_output_shapes
:���������*
dtype0*
shape:���������
J
	Equal_2/yConst*
_output_shapes
: *
dtype0*
valueB B 
W
Equal_2Equalpayment_type	Equal_2/y*
T0*#
_output_shapes
:���������
l
Const_2Const*
_output_shapes
:*
dtype0*1
value(B&B__empty_string_replacement__
Q
Shape_2Shapepayment_type*
T0*
_output_shapes
::��
N
Tile_2TileConst_2Shape_2*
T0*#
_output_shapes
:���������
c

SelectV2_2SelectV2Equal_2Tile_2payment_type*
T0*#
_output_shapes
:���������
|
1input_layer/DOLocationID_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������
�
-input_layer/DOLocationID_indicator/ExpandDims
ExpandDimsSelectV21input_layer/DOLocationID_indicator/ExpandDims/dim*
T0*'
_output_shapes
:���������
�
Ainput_layer/DOLocationID_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B 
�
;input_layer/DOLocationID_indicator/to_sparse_input/NotEqualNotEqual-input_layer/DOLocationID_indicator/ExpandDimsAinput_layer/DOLocationID_indicator/to_sparse_input/ignore_value/x*
T0*'
_output_shapes
:���������
�
:input_layer/DOLocationID_indicator/to_sparse_input/indicesWhere;input_layer/DOLocationID_indicator/to_sparse_input/NotEqual*'
_output_shapes
:���������
�
9input_layer/DOLocationID_indicator/to_sparse_input/valuesGatherNd-input_layer/DOLocationID_indicator/ExpandDims:input_layer/DOLocationID_indicator/to_sparse_input/indices*
Tindices0	*
Tparams0*#
_output_shapes
:���������
�
>input_layer/DOLocationID_indicator/to_sparse_input/dense_shapeShape-input_layer/DOLocationID_indicator/ExpandDims*
T0*
_output_shapes
:*
out_type0	:��
�
Linput_layer/DOLocationID_indicator/DOLocationID_lookup/hash_table/asset_pathConst"/device:CPU:**
_output_shapes
: *
dtype0*�
value�B� B�/cns/um-d/home/cloud-dataengine-minicluster-materialize-tempstore/serving-materialize/serving.shard-hals/2/2379/ttl=12h/34f75af1447fb950/assets/DOLocationID.txt
�
Ginput_layer/DOLocationID_indicator/DOLocationID_lookup/hash_table/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
���������
�
Linput_layer/DOLocationID_indicator/DOLocationID_lookup/hash_table/hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*�
shared_name��hash_table_/cns/um-d/home/cloud-dataengine-minicluster-materialize-tempstore/serving-materialize/serving.shard-hals/2/2379/ttl=12h/34f75af1447fb950/assets/DOLocationID.txt_264_-2_-1*
value_dtype0	
�
jinput_layer/DOLocationID_indicator/DOLocationID_lookup/hash_table/table_init/InitializeTableFromTextFileV2InitializeTableFromTextFileV2Linput_layer/DOLocationID_indicator/DOLocationID_lookup/hash_table/hash_tableLinput_layer/DOLocationID_indicator/DOLocationID_lookup/hash_table/asset_path*&
 _has_manual_control_dependencies(*
	key_index���������*
value_index���������*

vocab_size�
�
Finput_layer/DOLocationID_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Linput_layer/DOLocationID_indicator/DOLocationID_lookup/hash_table/hash_table9input_layer/DOLocationID_indicator/to_sparse_input/valuesGinput_layer/DOLocationID_indicator/DOLocationID_lookup/hash_table/Const*	
Tin0*

Tout0	*#
_output_shapes
:���������
�
>input_layer/DOLocationID_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
���������
�
0input_layer/DOLocationID_indicator/SparseToDenseSparseToDense:input_layer/DOLocationID_indicator/to_sparse_input/indices>input_layer/DOLocationID_indicator/to_sparse_input/dense_shapeFinput_layer/DOLocationID_indicator/hash_table_Lookup/LookupTableFindV2>input_layer/DOLocationID_indicator/SparseToDense/default_value*
T0	*
Tindices0	*'
_output_shapes
:���������
u
0input_layer/DOLocationID_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?
w
2input_layer/DOLocationID_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
s
0input_layer/DOLocationID_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value
B :�
�
*input_layer/DOLocationID_indicator/one_hotOneHot0input_layer/DOLocationID_indicator/SparseToDense0input_layer/DOLocationID_indicator/one_hot/depth0input_layer/DOLocationID_indicator/one_hot/Const2input_layer/DOLocationID_indicator/one_hot/Const_1*
T0*,
_output_shapes
:����������
�
8input_layer/DOLocationID_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
���������
�
&input_layer/DOLocationID_indicator/SumSum*input_layer/DOLocationID_indicator/one_hot8input_layer/DOLocationID_indicator/Sum/reduction_indices*
T0*(
_output_shapes
:����������
�
(input_layer/DOLocationID_indicator/ShapeShape&input_layer/DOLocationID_indicator/Sum*
T0*
_output_shapes
::��
�
6input_layer/DOLocationID_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
�
8input_layer/DOLocationID_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
�
8input_layer/DOLocationID_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
0input_layer/DOLocationID_indicator/strided_sliceStridedSlice(input_layer/DOLocationID_indicator/Shape6input_layer/DOLocationID_indicator/strided_slice/stack8input_layer/DOLocationID_indicator/strided_slice/stack_18input_layer/DOLocationID_indicator/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
u
2input_layer/DOLocationID_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :�
�
0input_layer/DOLocationID_indicator/Reshape/shapePack0input_layer/DOLocationID_indicator/strided_slice2input_layer/DOLocationID_indicator/Reshape/shape/1*
N*
T0*
_output_shapes
:
�
*input_layer/DOLocationID_indicator/ReshapeReshape&input_layer/DOLocationID_indicator/Sum0input_layer/DOLocationID_indicator/Reshape/shape*
T0*(
_output_shapes
:����������
|
1input_layer/PULocationID_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������
�
-input_layer/PULocationID_indicator/ExpandDims
ExpandDims
SelectV2_11input_layer/PULocationID_indicator/ExpandDims/dim*
T0*'
_output_shapes
:���������
�
Ainput_layer/PULocationID_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B 
�
;input_layer/PULocationID_indicator/to_sparse_input/NotEqualNotEqual-input_layer/PULocationID_indicator/ExpandDimsAinput_layer/PULocationID_indicator/to_sparse_input/ignore_value/x*
T0*'
_output_shapes
:���������
�
:input_layer/PULocationID_indicator/to_sparse_input/indicesWhere;input_layer/PULocationID_indicator/to_sparse_input/NotEqual*'
_output_shapes
:���������
�
9input_layer/PULocationID_indicator/to_sparse_input/valuesGatherNd-input_layer/PULocationID_indicator/ExpandDims:input_layer/PULocationID_indicator/to_sparse_input/indices*
Tindices0	*
Tparams0*#
_output_shapes
:���������
�
>input_layer/PULocationID_indicator/to_sparse_input/dense_shapeShape-input_layer/PULocationID_indicator/ExpandDims*
T0*
_output_shapes
:*
out_type0	:��
�
Linput_layer/PULocationID_indicator/PULocationID_lookup/hash_table/asset_pathConst"/device:CPU:**
_output_shapes
: *
dtype0*�
value�B� B�/cns/um-d/home/cloud-dataengine-minicluster-materialize-tempstore/serving-materialize/serving.shard-hals/2/2379/ttl=12h/34f75af1447fb950/assets/PULocationID.txt
�
Ginput_layer/PULocationID_indicator/PULocationID_lookup/hash_table/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
���������
�
Linput_layer/PULocationID_indicator/PULocationID_lookup/hash_table/hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*�
shared_name��hash_table_/cns/um-d/home/cloud-dataengine-minicluster-materialize-tempstore/serving-materialize/serving.shard-hals/2/2379/ttl=12h/34f75af1447fb950/assets/PULocationID.txt_263_-2_-1*
value_dtype0	
�
jinput_layer/PULocationID_indicator/PULocationID_lookup/hash_table/table_init/InitializeTableFromTextFileV2InitializeTableFromTextFileV2Linput_layer/PULocationID_indicator/PULocationID_lookup/hash_table/hash_tableLinput_layer/PULocationID_indicator/PULocationID_lookup/hash_table/asset_path*&
 _has_manual_control_dependencies(*
	key_index���������*
value_index���������*

vocab_size�
�
Finput_layer/PULocationID_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Linput_layer/PULocationID_indicator/PULocationID_lookup/hash_table/hash_table9input_layer/PULocationID_indicator/to_sparse_input/valuesGinput_layer/PULocationID_indicator/PULocationID_lookup/hash_table/Const*	
Tin0*

Tout0	*#
_output_shapes
:���������
�
>input_layer/PULocationID_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
���������
�
0input_layer/PULocationID_indicator/SparseToDenseSparseToDense:input_layer/PULocationID_indicator/to_sparse_input/indices>input_layer/PULocationID_indicator/to_sparse_input/dense_shapeFinput_layer/PULocationID_indicator/hash_table_Lookup/LookupTableFindV2>input_layer/PULocationID_indicator/SparseToDense/default_value*
T0	*
Tindices0	*'
_output_shapes
:���������
u
0input_layer/PULocationID_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?
w
2input_layer/PULocationID_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
s
0input_layer/PULocationID_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value
B :�
�
*input_layer/PULocationID_indicator/one_hotOneHot0input_layer/PULocationID_indicator/SparseToDense0input_layer/PULocationID_indicator/one_hot/depth0input_layer/PULocationID_indicator/one_hot/Const2input_layer/PULocationID_indicator/one_hot/Const_1*
T0*,
_output_shapes
:����������
�
8input_layer/PULocationID_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
���������
�
&input_layer/PULocationID_indicator/SumSum*input_layer/PULocationID_indicator/one_hot8input_layer/PULocationID_indicator/Sum/reduction_indices*
T0*(
_output_shapes
:����������
�
(input_layer/PULocationID_indicator/ShapeShape&input_layer/PULocationID_indicator/Sum*
T0*
_output_shapes
::��
�
6input_layer/PULocationID_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
�
8input_layer/PULocationID_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
�
8input_layer/PULocationID_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
0input_layer/PULocationID_indicator/strided_sliceStridedSlice(input_layer/PULocationID_indicator/Shape6input_layer/PULocationID_indicator/strided_slice/stack8input_layer/PULocationID_indicator/strided_slice/stack_18input_layer/PULocationID_indicator/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
u
2input_layer/PULocationID_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :�
�
0input_layer/PULocationID_indicator/Reshape/shapePack0input_layer/PULocationID_indicator/strided_slice2input_layer/PULocationID_indicator/Reshape/shape/1*
N*
T0*
_output_shapes
:
�
*input_layer/PULocationID_indicator/ReshapeReshape&input_layer/PULocationID_indicator/Sum0input_layer/PULocationID_indicator/Reshape/shape*
T0*(
_output_shapes
:����������
q
&input_layer/fare_amount/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������
�
"input_layer/fare_amount/ExpandDims
ExpandDimsfare_amount&input_layer/fare_amount/ExpandDims/dim*
T0*'
_output_shapes
:���������
�
input_layer/fare_amount/CastCast"input_layer/fare_amount/ExpandDims*

DstT0*

SrcT0*'
_output_shapes
:���������
w
input_layer/fare_amount/ShapeShapeinput_layer/fare_amount/Cast*
T0*
_output_shapes
::��
u
+input_layer/fare_amount/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
w
-input_layer/fare_amount/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
w
-input_layer/fare_amount/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
%input_layer/fare_amount/strided_sliceStridedSliceinput_layer/fare_amount/Shape+input_layer/fare_amount/strided_slice/stack-input_layer/fare_amount/strided_slice/stack_1-input_layer/fare_amount/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
i
'input_layer/fare_amount/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
�
%input_layer/fare_amount/Reshape/shapePack%input_layer/fare_amount/strided_slice'input_layer/fare_amount/Reshape/shape/1*
N*
T0*
_output_shapes
:
�
input_layer/fare_amount/ReshapeReshapeinput_layer/fare_amount/Cast%input_layer/fare_amount/Reshape/shape*
T0*'
_output_shapes
:���������
u
*input_layer/passenger_count/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������
�
&input_layer/passenger_count/ExpandDims
ExpandDimspassenger_count*input_layer/passenger_count/ExpandDims/dim*
T0*'
_output_shapes
:���������
�
 input_layer/passenger_count/CastCast&input_layer/passenger_count/ExpandDims*

DstT0*

SrcT0*'
_output_shapes
:���������

!input_layer/passenger_count/ShapeShape input_layer/passenger_count/Cast*
T0*
_output_shapes
::��
y
/input_layer/passenger_count/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
{
1input_layer/passenger_count/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
{
1input_layer/passenger_count/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
)input_layer/passenger_count/strided_sliceStridedSlice!input_layer/passenger_count/Shape/input_layer/passenger_count/strided_slice/stack1input_layer/passenger_count/strided_slice/stack_11input_layer/passenger_count/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
m
+input_layer/passenger_count/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
�
)input_layer/passenger_count/Reshape/shapePack)input_layer/passenger_count/strided_slice+input_layer/passenger_count/Reshape/shape/1*
N*
T0*
_output_shapes
:
�
#input_layer/passenger_count/ReshapeReshape input_layer/passenger_count/Cast)input_layer/passenger_count/Reshape/shape*
T0*'
_output_shapes
:���������
|
1input_layer/payment_type_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������
�
-input_layer/payment_type_indicator/ExpandDims
ExpandDims
SelectV2_21input_layer/payment_type_indicator/ExpandDims/dim*
T0*'
_output_shapes
:���������
�
Ainput_layer/payment_type_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B 
�
;input_layer/payment_type_indicator/to_sparse_input/NotEqualNotEqual-input_layer/payment_type_indicator/ExpandDimsAinput_layer/payment_type_indicator/to_sparse_input/ignore_value/x*
T0*'
_output_shapes
:���������
�
:input_layer/payment_type_indicator/to_sparse_input/indicesWhere;input_layer/payment_type_indicator/to_sparse_input/NotEqual*'
_output_shapes
:���������
�
9input_layer/payment_type_indicator/to_sparse_input/valuesGatherNd-input_layer/payment_type_indicator/ExpandDims:input_layer/payment_type_indicator/to_sparse_input/indices*
Tindices0	*
Tparams0*#
_output_shapes
:���������
�
>input_layer/payment_type_indicator/to_sparse_input/dense_shapeShape-input_layer/payment_type_indicator/ExpandDims*
T0*
_output_shapes
:*
out_type0	:��
�
Linput_layer/payment_type_indicator/payment_type_lookup/hash_table/asset_pathConst"/device:CPU:**
_output_shapes
: *
dtype0*�
value�B� B�/cns/um-d/home/cloud-dataengine-minicluster-materialize-tempstore/serving-materialize/serving.shard-hals/2/2379/ttl=12h/34f75af1447fb950/assets/payment_type.txt
�
Ginput_layer/payment_type_indicator/payment_type_lookup/hash_table/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
���������
�
Linput_layer/payment_type_indicator/payment_type_lookup/hash_table/hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*�
shared_name��hash_table_/cns/um-d/home/cloud-dataengine-minicluster-materialize-tempstore/serving-materialize/serving.shard-hals/2/2379/ttl=12h/34f75af1447fb950/assets/payment_type.txt_6_-2_-1*
value_dtype0	
�
jinput_layer/payment_type_indicator/payment_type_lookup/hash_table/table_init/InitializeTableFromTextFileV2InitializeTableFromTextFileV2Linput_layer/payment_type_indicator/payment_type_lookup/hash_table/hash_tableLinput_layer/payment_type_indicator/payment_type_lookup/hash_table/asset_path*&
 _has_manual_control_dependencies(*
	key_index���������*
value_index���������*

vocab_size
�
Finput_layer/payment_type_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Linput_layer/payment_type_indicator/payment_type_lookup/hash_table/hash_table9input_layer/payment_type_indicator/to_sparse_input/valuesGinput_layer/payment_type_indicator/payment_type_lookup/hash_table/Const*	
Tin0*

Tout0	*#
_output_shapes
:���������
�
>input_layer/payment_type_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
���������
�
0input_layer/payment_type_indicator/SparseToDenseSparseToDense:input_layer/payment_type_indicator/to_sparse_input/indices>input_layer/payment_type_indicator/to_sparse_input/dense_shapeFinput_layer/payment_type_indicator/hash_table_Lookup/LookupTableFindV2>input_layer/payment_type_indicator/SparseToDense/default_value*
T0	*
Tindices0	*'
_output_shapes
:���������
u
0input_layer/payment_type_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?
w
2input_layer/payment_type_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
r
0input_layer/payment_type_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :
�
*input_layer/payment_type_indicator/one_hotOneHot0input_layer/payment_type_indicator/SparseToDense0input_layer/payment_type_indicator/one_hot/depth0input_layer/payment_type_indicator/one_hot/Const2input_layer/payment_type_indicator/one_hot/Const_1*
T0*+
_output_shapes
:���������
�
8input_layer/payment_type_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
���������
�
&input_layer/payment_type_indicator/SumSum*input_layer/payment_type_indicator/one_hot8input_layer/payment_type_indicator/Sum/reduction_indices*
T0*'
_output_shapes
:���������
�
(input_layer/payment_type_indicator/ShapeShape&input_layer/payment_type_indicator/Sum*
T0*
_output_shapes
::��
�
6input_layer/payment_type_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
�
8input_layer/payment_type_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
�
8input_layer/payment_type_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
0input_layer/payment_type_indicator/strided_sliceStridedSlice(input_layer/payment_type_indicator/Shape6input_layer/payment_type_indicator/strided_slice/stack8input_layer/payment_type_indicator/strided_slice/stack_18input_layer/payment_type_indicator/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
t
2input_layer/payment_type_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
�
0input_layer/payment_type_indicator/Reshape/shapePack0input_layer/payment_type_indicator/strided_slice2input_layer/payment_type_indicator/Reshape/shape/1*
N*
T0*
_output_shapes
:
�
*input_layer/payment_type_indicator/ReshapeReshape&input_layer/payment_type_indicator/Sum0input_layer/payment_type_indicator/Reshape/shape*
T0*'
_output_shapes
:���������
r
'input_layer/tolls_amount/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������
�
#input_layer/tolls_amount/ExpandDims
ExpandDimstolls_amount'input_layer/tolls_amount/ExpandDims/dim*
T0*'
_output_shapes
:���������
�
input_layer/tolls_amount/CastCast#input_layer/tolls_amount/ExpandDims*

DstT0*

SrcT0*'
_output_shapes
:���������
y
input_layer/tolls_amount/ShapeShapeinput_layer/tolls_amount/Cast*
T0*
_output_shapes
::��
v
,input_layer/tolls_amount/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
x
.input_layer/tolls_amount/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
x
.input_layer/tolls_amount/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
&input_layer/tolls_amount/strided_sliceStridedSliceinput_layer/tolls_amount/Shape,input_layer/tolls_amount/strided_slice/stack.input_layer/tolls_amount/strided_slice/stack_1.input_layer/tolls_amount/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
j
(input_layer/tolls_amount/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
�
&input_layer/tolls_amount/Reshape/shapePack&input_layer/tolls_amount/strided_slice(input_layer/tolls_amount/Reshape/shape/1*
N*
T0*
_output_shapes
:
�
 input_layer/tolls_amount/ReshapeReshapeinput_layer/tolls_amount/Cast&input_layer/tolls_amount/Reshape/shape*
T0*'
_output_shapes
:���������
s
(input_layer/trip_distance/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������
�
$input_layer/trip_distance/ExpandDims
ExpandDimstrip_distance(input_layer/trip_distance/ExpandDims/dim*
T0*'
_output_shapes
:���������
�
input_layer/trip_distance/CastCast$input_layer/trip_distance/ExpandDims*

DstT0*

SrcT0*'
_output_shapes
:���������
{
input_layer/trip_distance/ShapeShapeinput_layer/trip_distance/Cast*
T0*
_output_shapes
::��
w
-input_layer/trip_distance/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
y
/input_layer/trip_distance/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
y
/input_layer/trip_distance/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
'input_layer/trip_distance/strided_sliceStridedSliceinput_layer/trip_distance/Shape-input_layer/trip_distance/strided_slice/stack/input_layer/trip_distance/strided_slice/stack_1/input_layer/trip_distance/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
k
)input_layer/trip_distance/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
�
'input_layer/trip_distance/Reshape/shapePack'input_layer/trip_distance/strided_slice)input_layer/trip_distance/Reshape/shape/1*
N*
T0*
_output_shapes
:
�
!input_layer/trip_distance/ReshapeReshapeinput_layer/trip_distance/Cast'input_layer/trip_distance/Reshape/shape*
T0*'
_output_shapes
:���������
Y
input_layer/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
�
input_layer/concatConcatV2*input_layer/DOLocationID_indicator/Reshape*input_layer/PULocationID_indicator/Reshapeinput_layer/fare_amount/Reshape#input_layer/passenger_count/Reshape*input_layer/payment_type_indicator/Reshape input_layer/tolls_amount/Reshape!input_layer/trip_distance/Reshapeinput_layer/concat/axis*
N*
T0*(
_output_shapes
:����������
�"
Const_3Const*
_output_shapes
:	�*
dtype0*�!
value�!B�!	�"�!��l�����������O�຅��(m�������F�@����ܞ�>����m������@D����Xo)�����u�����6���l���Y��Å��pPO�����������&TӅ��a5ox^���aQ'����q�%���٩dnP����hkmB���UG�d����JAh���� C�2����h�#�B���<^l�����̀�����M^8j���ϢɄ���}2�����\�7����4_b�P������������I[Pg���,k�F����7�u ������N;���G������whU���}U�����BV$&u����d �����jcщ���"H�������i����!��;7����3�������>�}���I��bp���P<Ø����>,%h5���*�<,����47 ф���!�k���ҳא���������f�旅��}�-���T�����&fݎ����2�����2�/�Ʌ���u�!���n ��߄��+vx�@���7�)�7����h<�������A�����������P����Z������DgX��������m�����E���S�0%ل���H�����H�]���Bڴ�O�����V6����=��V���JF jo������Z����{���=����F������f/����RT-����đn������zۄ���JĄ���)ό����^�٧���戽Q�����Q*����C����d0ۄ���a�nX�����S������T�@�������n���/T�4����Jۄ���g?����/�8����P�8�����Ѐ���v��
�����C(|���I==�
������ ���BCnՄ��:������۞��������"������&�@����&S����aj�ۄ��ˉ�,���5��j���� Iu�y���������Ԃ�&����x�D؄��I�oꃅ��x4�\C���<am3������0�����"�������z+����1rڄ��O�������w������]�f]�����A����[��[���llU����o���K���p�2ڀ���n��$b���px~O�����������s�����uބ��B��ZŃ��������IJ �������2V���tFʵ�����nM����������֛�������� �݅�����:Ǆ���1����Ħ3"����q�ꭄ��P&L΄�������������Ҭ������bʳ܄���� Q�������~������u����$Y�X.����s8�݄������� ���R���z� ���<���>�����ٛB���|��p���%8i�߄���1�&V���vꚭ���z�_������/�Q���AL�����=�Å��|�I�؄���ɝo�����*�����w�����V�����K������'}H���7�:�������:����48<���&+(9���kUo�Ʌ��Ί�����h�����wF�Lτ����]J�����O�H�����Q��������d;�����}���V�i�9���[a��F����:d���>+l|(���t�oL����b�2�����&�܄��p�!l����Pu�~n���A�d ������|]���CA;�E����@�������)7^�����%�S���:��@�����|v�6���$.�t�������8���Z5����,�0��������ڄ��m�[c����������R�g�����R�����&��Ȅ��w�������VO�������I�������UQ����|���pn�4[���@VX�ބ���`|���� =�}���"U@������y����-C�4�����������U�`����ć�̂���'�j������3�L���������f�7���� j��� B�$$���sZH�:���wv^v���������`Tֱ����x�����S�����t�F^����w%�3�����ɪ����_��%�����g�����kg���ڮ�jτ����3譄��3��b���9�⭄���V�?�����R�ʄ����o&����U6J�@����I�@2����I�@h���.J�@2�k��I�@���,�I�@���J�@�>��I�@_�ܽI�@���/J�@��N�zJ�@��<wJ�@(uP�J�@�q(}xJ�@�����I�@Gd.�J�@.����I�@XB�J�@��]JJ�@�f]GTJ�@ۛ�8�I�@$9J�@�Ms�>K�@_}�I�@���+�J�@ws���I�@��yp/K�@.ȝ��J�@�4���I�@��9�:I�@'�T�*K�@Bd��J�@`q�0�J�@q��HJ�@�b�gvJ�@����qK�@���J�@�hX��I�@�寽4J�@��YA�I�@{-��yI�@>-l�J�@��fJ�@+x~�J�@�KJ�@��):K�@��FdJ�@���^J�@N��I�@�#b�9L�@���J�@��`xH�@�w���I�@(�3jJ�@���I�@��>s�I�@��+J�@�,^sJ�@��7�wJ�@�{�J�@.w�/�J�@]¯J�@d���|J�@R��J�@?���I�@���I�@�A�I�@��4f�I�@�gUJ�@�u	=K�@Z`�~J�@XS��I�@��4�nJ�@��뗕I�@�H�� J�@AA�)K�@0Ǐ��J�@���I�@#�Ti J�@�X�I�@����I�@avs�K�@�a�J�@��ΖbJ�@7���I�@����I�@�h��I�@O�\��I�@B�b�I�@��Q�J�@�ηI�J�@n��6�I�@I�8��I�@Flh6J�@Nz�5�J�@�bzJ�@C���(J�@x:�jLJ�@��ytJ�@Kj��^J�@y�%��I�@�c���I�@F�2,6J�@Y�3J�@��Y�I�@|��J�@�	���I�@�P���I�@u���J�@��F�|J�@�aʹ�J�@'����I�@� M�I�@��{��I�@04F|�I�@�5�I�@ur�c|J�@���u�I�@�z�*PJ�@�.J�@b�	J�@2A���I�@;�m�I�@W�CG�I�@@�xnJ�@���kJ�@��]J�@�L=#"J�@n`r��J�@�Zm}�J�@�ى�J�@A���wJ�@Z�K}lJ�@.����I�@5�uJ�@�"K�@lɁnJ�@ig�?�I�@��J�@*�xc�I�@o����J�@GO���I�@��UoJ�@�&b�J�@�u|�IJ�@�Y��-J�@�jJ�@p�s;J�@z�}�I�@�����I�@��GQJ�@� �ɵI�@���,
J�@�ihI�@��ԀI�@;�-��K�@�.[��I�@�.��I�@� /�J�@]�B4!K�@=��xJ�@����nJ�@o���{J�@��v��I�@|qO��J�@U����I�@i�+�J�@��W�I�@H<_�J�@�<� J�@!k��I�@��{J�@EQq��I�@8곖gJ�@�ۇ�hJ�@(�Y!hJ�@�'�C�J�@�(���I�@�ת@tK�@��n*J�@���xJ�@�9�!K�@	��I�@j��:2K�@���J�@$��W�J�@텕�J�@%ޝ�qJ�@?��I�@�ʳ��I�@t�4}J�@2W)�jJ�@FTB��I�@�Z6�\J�@Ea/nvJ�@�q��I�@���&�J�@�0��#J�@�&��>I�@f��&J�@���ƂJ�@�(��|J�@�m)yJ�@��7�vJ�@�{.jpJ�@�h�I�@���&�J�@���CJ�@�8:��I�@��.mJ�@��%,zJ�@^�I�@$?h;J�@yHH��J�@/��I�@8�I�@����I�@f��#J�@N�JtJ�@����KJ�@1�Z�vJ�@�v#�)J�@j�|I�@�٭I�@����vJ�@����gJ�@�\Σ�I�@�X��I�@.�
�]J�@�K	�J�@�q<��I�@���I�@mf,��I�@�e�I�@�Ue�I�@����K�@dY�^J�@4-uΰI�@8��oJ�@җ��J�@�J��.I�@��,nJ�@�즫K�@
��DJ�@�4��I�@
�A�J�@���?�I�@��>>[J�@7)e�oI�@p��1J�@2Ǵ��I�@��_�I�@��S�jJ�@5N���J�@��(J�@Kʁ<pJ�@����I�@��x�hJ�@t�`��J�@v�8�]I�@�~��lI�@vh�^K�@x��M�I�@{�T��&�?	�5ߙV�?��e�V��� l�}����;$&k����LA�-���U�溺����������VZ��VR�?�f>a�+?
�
weightsVarHandleOp*
_class
loc:@weights*
_output_shapes
: *

debug_name
weights/*
dtype0*
shape:	�*
shared_name	weights
_
(weights/IsInitialized/VarIsInitializedOpVarIsInitializedOpweights*
_output_shapes
: 
i
weights/AssignAssignVariableOpweightsConst_3*&
 _has_manual_control_dependencies(*
dtype0
d
weights/Read/ReadVariableOpReadVariableOpweights*
_output_shapes
:	�*
dtype0
P
Const_4Const*
_output_shapes
: *
dtype0*
valueB 2�a��ɲ@
�
	interceptVarHandleOp*
_class
loc:@intercept*
_output_shapes
: *

debug_name
intercept/*
dtype0*
shape: *
shared_name	intercept
c
*intercept/IsInitialized/VarIsInitializedOpVarIsInitializedOp	intercept*
_output_shapes
: 
m
intercept/AssignAssignVariableOp	interceptConst_4*&
 _has_manual_control_dependencies(*
dtype0
_
intercept/Read/ReadVariableOpReadVariableOp	intercept*
_output_shapes
: *
dtype0
b
CastCastinput_layer/concat*

DstT0*

SrcT0*(
_output_shapes
:����������
^
MatMul/ReadVariableOpReadVariableOpweights*
_output_shapes
:	�*
dtype0
_
MatMulMatMulCastMatMul/ReadVariableOp*
T0*'
_output_shapes
:���������
X
compute/ReadVariableOpReadVariableOp	intercept*
_output_shapes
: *
dtype0
b
computeAddV2MatMulcompute/ReadVariableOp*
T0*'
_output_shapes
:���������
X
initNoOp^intercept/Assign^weights/Assign*&
 _has_manual_control_dependencies(
�
init_all_tablesNoOpk^input_layer/DOLocationID_indicator/DOLocationID_lookup/hash_table/table_init/InitializeTableFromTextFileV2k^input_layer/PULocationID_indicator/PULocationID_lookup/hash_table/table_init/InitializeTableFromTextFileV2k^input_layer/payment_type_indicator/payment_type_lookup/hash_table/table_init/InitializeTableFromTextFileV2*&
 _has_manual_control_dependencies(
+

group_depsNoOp^init^init_all_tables
�
init_all_tables_1NoOpk^input_layer/DOLocationID_indicator/DOLocationID_lookup/hash_table/table_init/InitializeTableFromTextFileV2k^input_layer/PULocationID_indicator/PULocationID_lookup/hash_table/table_init/InitializeTableFromTextFileV2k^input_layer/payment_type_indicator/payment_type_lookup/hash_table/table_init/InitializeTableFromTextFileV2
Y
save/filename/inputConst*
_output_shapes
: *
dtype0*
valueB Bmodel
n
save/filenamePlaceholderWithDefaultsave/filename/input*
_output_shapes
: *
dtype0*
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
_output_shapes
: *
dtype0*
shape: 
{
save/StaticRegexFullMatchStaticRegexFullMatch
save/Const"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*
a
save/Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part
f
save/Const_2Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
|
save/SelectSelectsave/StaticRegexFullMatchsave/Const_1save/Const_2"/device:CPU:**
T0*
_output_shapes
: 
f
save/StringJoin
StringJoin
save/Constsave/Select"/device:CPU:**
N*
_output_shapes
: 
Q
save/num_shardsConst*
_output_shapes
: *
dtype0*
value	B :
k
save/ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
�
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
�
save/SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*'
valueBB	interceptBweights
v
save/SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B 
�
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesintercept/Read/ReadVariableOpweights/Read/ReadVariableOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
dtypes
2
�
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*'
_class
loc:@save/ShardedFilename*&
 _has_manual_control_dependencies(*
_output_shapes
: 
�
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
N*
T0*
_output_shapes
:
�
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*&
 _has_manual_control_dependencies(
�
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
�
save/RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*'
valueBB	interceptBweights
y
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B 
�
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*
_output_shapes

::*
dtypes
2
N
save/Identity_1Identitysave/RestoreV2*
T0*
_output_shapes
:
z
save/AssignVariableOpAssignVariableOp	interceptsave/Identity_1*&
 _has_manual_control_dependencies(*
dtype0
P
save/Identity_2Identitysave/RestoreV2:1*
T0*
_output_shapes
:
z
save/AssignVariableOp_1AssignVariableOpweightssave/Identity_2*&
 _has_manual_control_dependencies(*
dtype0
t
save/restore_shardNoOp^save/AssignVariableOp^save/AssignVariableOp_1*&
 _has_manual_control_dependencies(
-
save/restore_allNoOp^save/restore_shard"�<
save/Const:0save/Identity:0save/restore_all (5 @F8"�
asset_filepaths�
�
Ninput_layer/DOLocationID_indicator/DOLocationID_lookup/hash_table/asset_path:0
Ninput_layer/PULocationID_indicator/PULocationID_lookup/hash_table/asset_path:0
Ninput_layer/payment_type_indicator/payment_type_lookup/hash_table/asset_path:0"�
saved_model_assets�*�
�
+type.googleapis.com/tensorflow.AssetFileDefd
P
Ninput_layer/DOLocationID_indicator/DOLocationID_lookup/hash_table/asset_path:0DOLocationID.txt
�
+type.googleapis.com/tensorflow.AssetFileDefd
P
Ninput_layer/PULocationID_indicator/PULocationID_lookup/hash_table/asset_path:0PULocationID.txt
�
+type.googleapis.com/tensorflow.AssetFileDefd
P
Ninput_layer/payment_type_indicator/payment_type_lookup/hash_table/asset_path:0payment_type.txt",
saved_model_main_op

init_all_tables_1"�
table_initializer�
�
jinput_layer/DOLocationID_indicator/DOLocationID_lookup/hash_table/table_init/InitializeTableFromTextFileV2
jinput_layer/PULocationID_indicator/PULocationID_lookup/hash_table/table_init/InitializeTableFromTextFileV2
jinput_layer/payment_type_indicator/payment_type_lookup/hash_table/table_init/InitializeTableFromTextFileV2"�
trainable_variables��
I
	weights:0weights/Assignweights/Read/ReadVariableOp:0(2	Const_3:08
O
intercept:0intercept/Assignintercept/Read/ReadVariableOp:0(2	Const_4:08"�
	variables��
I
	weights:0weights/Assignweights/Read/ReadVariableOp:0(2	Const_3:08
O
intercept:0intercept/Assignintercept/Read/ReadVariableOp:0(2	Const_4:08*�
serving_default�
1
DOLocationID!
DOLocationID:0���������
1
PULocationID!
PULocationID:0���������
/
fare_amount 
fare_amount:0���������
7
passenger_count$
passenger_count:0���������
1
payment_type!
payment_type:0���������
1
tolls_amount!
tolls_amount:0���������
3
trip_distance"
trip_distance:0���������8
predicted_tip_amount 
	compute:0���������tensorflow/serving/predict