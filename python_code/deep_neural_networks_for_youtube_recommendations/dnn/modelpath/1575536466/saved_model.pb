݈
��
:
Add
x"T
y"T
z"T"
Ttype:
2	
x
Assign
ref"T�

value"T

output_ref"T�"	
Ttype"
validate_shapebool("
use_lockingbool(�
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
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
q
DynamicPartition	
data"T

partitions
outputs"T*num_partitions"
num_partitionsint(0"	
Ttype
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
9
FloorMod
x"T
y"T
z"T"
Ttype:

2	
�
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
�
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�
=
Mul
x"T
y"T
z"T"
Ttype:
2	�

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
[
ParallelDynamicStitch
indices*N
data"T*N
merged"T"
Nint(0"	
Ttype
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
�
RandomStandardNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	�
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	�
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
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
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	
f
TopKV2

input"T
k
values"T
indices"
sortedbool("
Ttype:
2	
s

VariableV2
ref"dtype�"
shapeshape"
dtypetype"
	containerstring "
shared_namestring �"serve*1.14.02unknownް

global_step/Initializer/zerosConst*
value	B	 R *
_output_shapes
: *
dtype0	*
_class
loc:@global_step
�
global_step
VariableV2*
shared_name *
_class
loc:@global_step*
_output_shapes
: *
dtype0	*
shape: *
	container 
�
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
T0	*
_output_shapes
: *
use_locking(*
validate_shape(*
_class
loc:@global_step
j
global_step/readIdentityglobal_step*
T0	*
_output_shapes
: *
_class
loc:@global_step
t
visit_items_indexPlaceholder*'
_output_shapes
:���������*
dtype0	*
shape:���������
|
continuous_features_valuePlaceholder*'
_output_shapes
:���������*
dtype0*
shape:���������
�
6item_embedding/part_0/Initializer/random_uniform/shapeConst*
valueB"       *
_output_shapes
:*
dtype0*(
_class
loc:@item_embedding/part_0
�
4item_embedding/part_0/Initializer/random_uniform/minConst*
valueB
 *   �*
_output_shapes
: *
dtype0*(
_class
loc:@item_embedding/part_0
�
4item_embedding/part_0/Initializer/random_uniform/maxConst*
valueB
 *   =*
_output_shapes
: *
dtype0*(
_class
loc:@item_embedding/part_0
�
>item_embedding/part_0/Initializer/random_uniform/RandomUniformRandomUniform6item_embedding/part_0/Initializer/random_uniform/shape*
seed2	*(
_class
loc:@item_embedding/part_0*
T0*
_output_shapes

: *
dtype0*
seed�
�
4item_embedding/part_0/Initializer/random_uniform/subSub4item_embedding/part_0/Initializer/random_uniform/max4item_embedding/part_0/Initializer/random_uniform/min*
T0*
_output_shapes
: *(
_class
loc:@item_embedding/part_0
�
4item_embedding/part_0/Initializer/random_uniform/mulMul>item_embedding/part_0/Initializer/random_uniform/RandomUniform4item_embedding/part_0/Initializer/random_uniform/sub*
T0*
_output_shapes

: *(
_class
loc:@item_embedding/part_0
�
0item_embedding/part_0/Initializer/random_uniformAdd4item_embedding/part_0/Initializer/random_uniform/mul4item_embedding/part_0/Initializer/random_uniform/min*
T0*
_output_shapes

: *(
_class
loc:@item_embedding/part_0
�
item_embedding/part_0
VariableV2*
shared_name *(
_class
loc:@item_embedding/part_0*
_output_shapes

: *
dtype0*
shape
: *
	container 
�
item_embedding/part_0/AssignAssignitem_embedding/part_00item_embedding/part_0/Initializer/random_uniform*
T0*
_output_shapes

: *
use_locking(*
validate_shape(*(
_class
loc:@item_embedding/part_0
�
item_embedding/part_0/readIdentityitem_embedding/part_0*
T0*
_output_shapes

: *(
_class
loc:@item_embedding/part_0
�
6item_embedding/part_1/Initializer/random_uniform/shapeConst*
valueB"       *
_output_shapes
:*
dtype0*(
_class
loc:@item_embedding/part_1
�
4item_embedding/part_1/Initializer/random_uniform/minConst*
valueB
 *   �*
_output_shapes
: *
dtype0*(
_class
loc:@item_embedding/part_1
�
4item_embedding/part_1/Initializer/random_uniform/maxConst*
valueB
 *   =*
_output_shapes
: *
dtype0*(
_class
loc:@item_embedding/part_1
�
>item_embedding/part_1/Initializer/random_uniform/RandomUniformRandomUniform6item_embedding/part_1/Initializer/random_uniform/shape*
seed2*(
_class
loc:@item_embedding/part_1*
T0*
_output_shapes

: *
dtype0*
seed�
�
4item_embedding/part_1/Initializer/random_uniform/subSub4item_embedding/part_1/Initializer/random_uniform/max4item_embedding/part_1/Initializer/random_uniform/min*
T0*
_output_shapes
: *(
_class
loc:@item_embedding/part_1
�
4item_embedding/part_1/Initializer/random_uniform/mulMul>item_embedding/part_1/Initializer/random_uniform/RandomUniform4item_embedding/part_1/Initializer/random_uniform/sub*
T0*
_output_shapes

: *(
_class
loc:@item_embedding/part_1
�
0item_embedding/part_1/Initializer/random_uniformAdd4item_embedding/part_1/Initializer/random_uniform/mul4item_embedding/part_1/Initializer/random_uniform/min*
T0*
_output_shapes

: *(
_class
loc:@item_embedding/part_1
�
item_embedding/part_1
VariableV2*
shared_name *(
_class
loc:@item_embedding/part_1*
_output_shapes

: *
dtype0*
shape
: *
	container 
�
item_embedding/part_1/AssignAssignitem_embedding/part_10item_embedding/part_1/Initializer/random_uniform*
T0*
_output_shapes

: *
use_locking(*
validate_shape(*(
_class
loc:@item_embedding/part_1
�
item_embedding/part_1/readIdentityitem_embedding/part_1*
T0*
_output_shapes

: *(
_class
loc:@item_embedding/part_1
�
6item_embedding/part_2/Initializer/random_uniform/shapeConst*
valueB"       *
_output_shapes
:*
dtype0*(
_class
loc:@item_embedding/part_2
�
4item_embedding/part_2/Initializer/random_uniform/minConst*
valueB
 *   �*
_output_shapes
: *
dtype0*(
_class
loc:@item_embedding/part_2
�
4item_embedding/part_2/Initializer/random_uniform/maxConst*
valueB
 *   =*
_output_shapes
: *
dtype0*(
_class
loc:@item_embedding/part_2
�
>item_embedding/part_2/Initializer/random_uniform/RandomUniformRandomUniform6item_embedding/part_2/Initializer/random_uniform/shape*
seed2*(
_class
loc:@item_embedding/part_2*
T0*
_output_shapes

: *
dtype0*
seed�
�
4item_embedding/part_2/Initializer/random_uniform/subSub4item_embedding/part_2/Initializer/random_uniform/max4item_embedding/part_2/Initializer/random_uniform/min*
T0*
_output_shapes
: *(
_class
loc:@item_embedding/part_2
�
4item_embedding/part_2/Initializer/random_uniform/mulMul>item_embedding/part_2/Initializer/random_uniform/RandomUniform4item_embedding/part_2/Initializer/random_uniform/sub*
T0*
_output_shapes

: *(
_class
loc:@item_embedding/part_2
�
0item_embedding/part_2/Initializer/random_uniformAdd4item_embedding/part_2/Initializer/random_uniform/mul4item_embedding/part_2/Initializer/random_uniform/min*
T0*
_output_shapes

: *(
_class
loc:@item_embedding/part_2
�
item_embedding/part_2
VariableV2*
shared_name *(
_class
loc:@item_embedding/part_2*
_output_shapes

: *
dtype0*
shape
: *
	container 
�
item_embedding/part_2/AssignAssignitem_embedding/part_20item_embedding/part_2/Initializer/random_uniform*
T0*
_output_shapes

: *
use_locking(*
validate_shape(*(
_class
loc:@item_embedding/part_2
�
item_embedding/part_2/readIdentityitem_embedding/part_2*
T0*
_output_shapes

: *(
_class
loc:@item_embedding/part_2
�
6item_embedding/part_3/Initializer/random_uniform/shapeConst*
valueB"       *
_output_shapes
:*
dtype0*(
_class
loc:@item_embedding/part_3
�
4item_embedding/part_3/Initializer/random_uniform/minConst*
valueB
 *   �*
_output_shapes
: *
dtype0*(
_class
loc:@item_embedding/part_3
�
4item_embedding/part_3/Initializer/random_uniform/maxConst*
valueB
 *   =*
_output_shapes
: *
dtype0*(
_class
loc:@item_embedding/part_3
�
>item_embedding/part_3/Initializer/random_uniform/RandomUniformRandomUniform6item_embedding/part_3/Initializer/random_uniform/shape*
seed2'*(
_class
loc:@item_embedding/part_3*
T0*
_output_shapes

: *
dtype0*
seed�
�
4item_embedding/part_3/Initializer/random_uniform/subSub4item_embedding/part_3/Initializer/random_uniform/max4item_embedding/part_3/Initializer/random_uniform/min*
T0*
_output_shapes
: *(
_class
loc:@item_embedding/part_3
�
4item_embedding/part_3/Initializer/random_uniform/mulMul>item_embedding/part_3/Initializer/random_uniform/RandomUniform4item_embedding/part_3/Initializer/random_uniform/sub*
T0*
_output_shapes

: *(
_class
loc:@item_embedding/part_3
�
0item_embedding/part_3/Initializer/random_uniformAdd4item_embedding/part_3/Initializer/random_uniform/mul4item_embedding/part_3/Initializer/random_uniform/min*
T0*
_output_shapes

: *(
_class
loc:@item_embedding/part_3
�
item_embedding/part_3
VariableV2*
shared_name *(
_class
loc:@item_embedding/part_3*
_output_shapes

: *
dtype0*
shape
: *
	container 
�
item_embedding/part_3/AssignAssignitem_embedding/part_30item_embedding/part_3/Initializer/random_uniform*
T0*
_output_shapes

: *
use_locking(*
validate_shape(*(
_class
loc:@item_embedding/part_3
�
item_embedding/part_3/readIdentityitem_embedding/part_3*
T0*
_output_shapes

: *(
_class
loc:@item_embedding/part_3
�
6item_embedding/part_4/Initializer/random_uniform/shapeConst*
valueB"      *
_output_shapes
:*
dtype0*(
_class
loc:@item_embedding/part_4
�
4item_embedding/part_4/Initializer/random_uniform/minConst*
valueB
 *   �*
_output_shapes
: *
dtype0*(
_class
loc:@item_embedding/part_4
�
4item_embedding/part_4/Initializer/random_uniform/maxConst*
valueB
 *   =*
_output_shapes
: *
dtype0*(
_class
loc:@item_embedding/part_4
�
>item_embedding/part_4/Initializer/random_uniform/RandomUniformRandomUniform6item_embedding/part_4/Initializer/random_uniform/shape*
seed21*(
_class
loc:@item_embedding/part_4*
T0*
_output_shapes

:*
dtype0*
seed�
�
4item_embedding/part_4/Initializer/random_uniform/subSub4item_embedding/part_4/Initializer/random_uniform/max4item_embedding/part_4/Initializer/random_uniform/min*
T0*
_output_shapes
: *(
_class
loc:@item_embedding/part_4
�
4item_embedding/part_4/Initializer/random_uniform/mulMul>item_embedding/part_4/Initializer/random_uniform/RandomUniform4item_embedding/part_4/Initializer/random_uniform/sub*
T0*
_output_shapes

:*(
_class
loc:@item_embedding/part_4
�
0item_embedding/part_4/Initializer/random_uniformAdd4item_embedding/part_4/Initializer/random_uniform/mul4item_embedding/part_4/Initializer/random_uniform/min*
T0*
_output_shapes

:*(
_class
loc:@item_embedding/part_4
�
item_embedding/part_4
VariableV2*
shared_name *(
_class
loc:@item_embedding/part_4*
_output_shapes

:*
dtype0*
shape
:*
	container 
�
item_embedding/part_4/AssignAssignitem_embedding/part_40item_embedding/part_4/Initializer/random_uniform*
T0*
_output_shapes

:*
use_locking(*
validate_shape(*(
_class
loc:@item_embedding/part_4
�
item_embedding/part_4/readIdentityitem_embedding/part_4*
T0*
_output_shapes

:*(
_class
loc:@item_embedding/part_4
�
6item_embedding/part_5/Initializer/random_uniform/shapeConst*
valueB"      *
_output_shapes
:*
dtype0*(
_class
loc:@item_embedding/part_5
�
4item_embedding/part_5/Initializer/random_uniform/minConst*
valueB
 *   �*
_output_shapes
: *
dtype0*(
_class
loc:@item_embedding/part_5
�
4item_embedding/part_5/Initializer/random_uniform/maxConst*
valueB
 *   =*
_output_shapes
: *
dtype0*(
_class
loc:@item_embedding/part_5
�
>item_embedding/part_5/Initializer/random_uniform/RandomUniformRandomUniform6item_embedding/part_5/Initializer/random_uniform/shape*
seed2;*(
_class
loc:@item_embedding/part_5*
T0*
_output_shapes

:*
dtype0*
seed�
�
4item_embedding/part_5/Initializer/random_uniform/subSub4item_embedding/part_5/Initializer/random_uniform/max4item_embedding/part_5/Initializer/random_uniform/min*
T0*
_output_shapes
: *(
_class
loc:@item_embedding/part_5
�
4item_embedding/part_5/Initializer/random_uniform/mulMul>item_embedding/part_5/Initializer/random_uniform/RandomUniform4item_embedding/part_5/Initializer/random_uniform/sub*
T0*
_output_shapes

:*(
_class
loc:@item_embedding/part_5
�
0item_embedding/part_5/Initializer/random_uniformAdd4item_embedding/part_5/Initializer/random_uniform/mul4item_embedding/part_5/Initializer/random_uniform/min*
T0*
_output_shapes

:*(
_class
loc:@item_embedding/part_5
�
item_embedding/part_5
VariableV2*
shared_name *(
_class
loc:@item_embedding/part_5*
_output_shapes

:*
dtype0*
shape
:*
	container 
�
item_embedding/part_5/AssignAssignitem_embedding/part_50item_embedding/part_5/Initializer/random_uniform*
T0*
_output_shapes

:*
use_locking(*
validate_shape(*(
_class
loc:@item_embedding/part_5
�
item_embedding/part_5/readIdentityitem_embedding/part_5*
T0*
_output_shapes

:*(
_class
loc:@item_embedding/part_5
�
6item_embedding/part_6/Initializer/random_uniform/shapeConst*
valueB"      *
_output_shapes
:*
dtype0*(
_class
loc:@item_embedding/part_6
�
4item_embedding/part_6/Initializer/random_uniform/minConst*
valueB
 *   �*
_output_shapes
: *
dtype0*(
_class
loc:@item_embedding/part_6
�
4item_embedding/part_6/Initializer/random_uniform/maxConst*
valueB
 *   =*
_output_shapes
: *
dtype0*(
_class
loc:@item_embedding/part_6
�
>item_embedding/part_6/Initializer/random_uniform/RandomUniformRandomUniform6item_embedding/part_6/Initializer/random_uniform/shape*
seed2E*(
_class
loc:@item_embedding/part_6*
T0*
_output_shapes

:*
dtype0*
seed�
�
4item_embedding/part_6/Initializer/random_uniform/subSub4item_embedding/part_6/Initializer/random_uniform/max4item_embedding/part_6/Initializer/random_uniform/min*
T0*
_output_shapes
: *(
_class
loc:@item_embedding/part_6
�
4item_embedding/part_6/Initializer/random_uniform/mulMul>item_embedding/part_6/Initializer/random_uniform/RandomUniform4item_embedding/part_6/Initializer/random_uniform/sub*
T0*
_output_shapes

:*(
_class
loc:@item_embedding/part_6
�
0item_embedding/part_6/Initializer/random_uniformAdd4item_embedding/part_6/Initializer/random_uniform/mul4item_embedding/part_6/Initializer/random_uniform/min*
T0*
_output_shapes

:*(
_class
loc:@item_embedding/part_6
�
item_embedding/part_6
VariableV2*
shared_name *(
_class
loc:@item_embedding/part_6*
_output_shapes

:*
dtype0*
shape
:*
	container 
�
item_embedding/part_6/AssignAssignitem_embedding/part_60item_embedding/part_6/Initializer/random_uniform*
T0*
_output_shapes

:*
use_locking(*
validate_shape(*(
_class
loc:@item_embedding/part_6
�
item_embedding/part_6/readIdentityitem_embedding/part_6*
T0*
_output_shapes

:*(
_class
loc:@item_embedding/part_6
�
6item_embedding/part_7/Initializer/random_uniform/shapeConst*
valueB"      *
_output_shapes
:*
dtype0*(
_class
loc:@item_embedding/part_7
�
4item_embedding/part_7/Initializer/random_uniform/minConst*
valueB
 *   �*
_output_shapes
: *
dtype0*(
_class
loc:@item_embedding/part_7
�
4item_embedding/part_7/Initializer/random_uniform/maxConst*
valueB
 *   =*
_output_shapes
: *
dtype0*(
_class
loc:@item_embedding/part_7
�
>item_embedding/part_7/Initializer/random_uniform/RandomUniformRandomUniform6item_embedding/part_7/Initializer/random_uniform/shape*
seed2O*(
_class
loc:@item_embedding/part_7*
T0*
_output_shapes

:*
dtype0*
seed�
�
4item_embedding/part_7/Initializer/random_uniform/subSub4item_embedding/part_7/Initializer/random_uniform/max4item_embedding/part_7/Initializer/random_uniform/min*
T0*
_output_shapes
: *(
_class
loc:@item_embedding/part_7
�
4item_embedding/part_7/Initializer/random_uniform/mulMul>item_embedding/part_7/Initializer/random_uniform/RandomUniform4item_embedding/part_7/Initializer/random_uniform/sub*
T0*
_output_shapes

:*(
_class
loc:@item_embedding/part_7
�
0item_embedding/part_7/Initializer/random_uniformAdd4item_embedding/part_7/Initializer/random_uniform/mul4item_embedding/part_7/Initializer/random_uniform/min*
T0*
_output_shapes

:*(
_class
loc:@item_embedding/part_7
�
item_embedding/part_7
VariableV2*
shared_name *(
_class
loc:@item_embedding/part_7*
_output_shapes

:*
dtype0*
shape
:*
	container 
�
item_embedding/part_7/AssignAssignitem_embedding/part_70item_embedding/part_7/Initializer/random_uniform*
T0*
_output_shapes

:*
use_locking(*
validate_shape(*(
_class
loc:@item_embedding/part_7
�
item_embedding/part_7/readIdentityitem_embedding/part_7*
T0*
_output_shapes

:*(
_class
loc:@item_embedding/part_7
�
6item_embedding/part_8/Initializer/random_uniform/shapeConst*
valueB"      *
_output_shapes
:*
dtype0*(
_class
loc:@item_embedding/part_8
�
4item_embedding/part_8/Initializer/random_uniform/minConst*
valueB
 *   �*
_output_shapes
: *
dtype0*(
_class
loc:@item_embedding/part_8
�
4item_embedding/part_8/Initializer/random_uniform/maxConst*
valueB
 *   =*
_output_shapes
: *
dtype0*(
_class
loc:@item_embedding/part_8
�
>item_embedding/part_8/Initializer/random_uniform/RandomUniformRandomUniform6item_embedding/part_8/Initializer/random_uniform/shape*
seed2Y*(
_class
loc:@item_embedding/part_8*
T0*
_output_shapes

:*
dtype0*
seed�
�
4item_embedding/part_8/Initializer/random_uniform/subSub4item_embedding/part_8/Initializer/random_uniform/max4item_embedding/part_8/Initializer/random_uniform/min*
T0*
_output_shapes
: *(
_class
loc:@item_embedding/part_8
�
4item_embedding/part_8/Initializer/random_uniform/mulMul>item_embedding/part_8/Initializer/random_uniform/RandomUniform4item_embedding/part_8/Initializer/random_uniform/sub*
T0*
_output_shapes

:*(
_class
loc:@item_embedding/part_8
�
0item_embedding/part_8/Initializer/random_uniformAdd4item_embedding/part_8/Initializer/random_uniform/mul4item_embedding/part_8/Initializer/random_uniform/min*
T0*
_output_shapes

:*(
_class
loc:@item_embedding/part_8
�
item_embedding/part_8
VariableV2*
shared_name *(
_class
loc:@item_embedding/part_8*
_output_shapes

:*
dtype0*
shape
:*
	container 
�
item_embedding/part_8/AssignAssignitem_embedding/part_80item_embedding/part_8/Initializer/random_uniform*
T0*
_output_shapes

:*
use_locking(*
validate_shape(*(
_class
loc:@item_embedding/part_8
�
item_embedding/part_8/readIdentityitem_embedding/part_8*
T0*
_output_shapes

:*(
_class
loc:@item_embedding/part_8
�
6item_embedding/part_9/Initializer/random_uniform/shapeConst*
valueB"      *
_output_shapes
:*
dtype0*(
_class
loc:@item_embedding/part_9
�
4item_embedding/part_9/Initializer/random_uniform/minConst*
valueB
 *   �*
_output_shapes
: *
dtype0*(
_class
loc:@item_embedding/part_9
�
4item_embedding/part_9/Initializer/random_uniform/maxConst*
valueB
 *   =*
_output_shapes
: *
dtype0*(
_class
loc:@item_embedding/part_9
�
>item_embedding/part_9/Initializer/random_uniform/RandomUniformRandomUniform6item_embedding/part_9/Initializer/random_uniform/shape*
seed2c*(
_class
loc:@item_embedding/part_9*
T0*
_output_shapes

:*
dtype0*
seed�
�
4item_embedding/part_9/Initializer/random_uniform/subSub4item_embedding/part_9/Initializer/random_uniform/max4item_embedding/part_9/Initializer/random_uniform/min*
T0*
_output_shapes
: *(
_class
loc:@item_embedding/part_9
�
4item_embedding/part_9/Initializer/random_uniform/mulMul>item_embedding/part_9/Initializer/random_uniform/RandomUniform4item_embedding/part_9/Initializer/random_uniform/sub*
T0*
_output_shapes

:*(
_class
loc:@item_embedding/part_9
�
0item_embedding/part_9/Initializer/random_uniformAdd4item_embedding/part_9/Initializer/random_uniform/mul4item_embedding/part_9/Initializer/random_uniform/min*
T0*
_output_shapes

:*(
_class
loc:@item_embedding/part_9
�
item_embedding/part_9
VariableV2*
shared_name *(
_class
loc:@item_embedding/part_9*
_output_shapes

:*
dtype0*
shape
:*
	container 
�
item_embedding/part_9/AssignAssignitem_embedding/part_90item_embedding/part_9/Initializer/random_uniform*
T0*
_output_shapes

:*
use_locking(*
validate_shape(*(
_class
loc:@item_embedding/part_9
�
item_embedding/part_9/readIdentityitem_embedding/part_9*
T0*
_output_shapes

:*(
_class
loc:@item_embedding/part_9
�
7item_embedding/part_10/Initializer/random_uniform/shapeConst*
valueB"      *
_output_shapes
:*
dtype0*)
_class
loc:@item_embedding/part_10
�
5item_embedding/part_10/Initializer/random_uniform/minConst*
valueB
 *   �*
_output_shapes
: *
dtype0*)
_class
loc:@item_embedding/part_10
�
5item_embedding/part_10/Initializer/random_uniform/maxConst*
valueB
 *   =*
_output_shapes
: *
dtype0*)
_class
loc:@item_embedding/part_10
�
?item_embedding/part_10/Initializer/random_uniform/RandomUniformRandomUniform7item_embedding/part_10/Initializer/random_uniform/shape*
seed2m*)
_class
loc:@item_embedding/part_10*
T0*
_output_shapes

:*
dtype0*
seed�
�
5item_embedding/part_10/Initializer/random_uniform/subSub5item_embedding/part_10/Initializer/random_uniform/max5item_embedding/part_10/Initializer/random_uniform/min*
T0*
_output_shapes
: *)
_class
loc:@item_embedding/part_10
�
5item_embedding/part_10/Initializer/random_uniform/mulMul?item_embedding/part_10/Initializer/random_uniform/RandomUniform5item_embedding/part_10/Initializer/random_uniform/sub*
T0*
_output_shapes

:*)
_class
loc:@item_embedding/part_10
�
1item_embedding/part_10/Initializer/random_uniformAdd5item_embedding/part_10/Initializer/random_uniform/mul5item_embedding/part_10/Initializer/random_uniform/min*
T0*
_output_shapes

:*)
_class
loc:@item_embedding/part_10
�
item_embedding/part_10
VariableV2*
shared_name *)
_class
loc:@item_embedding/part_10*
_output_shapes

:*
dtype0*
shape
:*
	container 
�
item_embedding/part_10/AssignAssignitem_embedding/part_101item_embedding/part_10/Initializer/random_uniform*
T0*
_output_shapes

:*
use_locking(*
validate_shape(*)
_class
loc:@item_embedding/part_10
�
item_embedding/part_10/readIdentityitem_embedding/part_10*
T0*
_output_shapes

:*)
_class
loc:@item_embedding/part_10
�
7item_embedding/part_11/Initializer/random_uniform/shapeConst*
valueB"      *
_output_shapes
:*
dtype0*)
_class
loc:@item_embedding/part_11
�
5item_embedding/part_11/Initializer/random_uniform/minConst*
valueB
 *   �*
_output_shapes
: *
dtype0*)
_class
loc:@item_embedding/part_11
�
5item_embedding/part_11/Initializer/random_uniform/maxConst*
valueB
 *   =*
_output_shapes
: *
dtype0*)
_class
loc:@item_embedding/part_11
�
?item_embedding/part_11/Initializer/random_uniform/RandomUniformRandomUniform7item_embedding/part_11/Initializer/random_uniform/shape*
seed2w*)
_class
loc:@item_embedding/part_11*
T0*
_output_shapes

:*
dtype0*
seed�
�
5item_embedding/part_11/Initializer/random_uniform/subSub5item_embedding/part_11/Initializer/random_uniform/max5item_embedding/part_11/Initializer/random_uniform/min*
T0*
_output_shapes
: *)
_class
loc:@item_embedding/part_11
�
5item_embedding/part_11/Initializer/random_uniform/mulMul?item_embedding/part_11/Initializer/random_uniform/RandomUniform5item_embedding/part_11/Initializer/random_uniform/sub*
T0*
_output_shapes

:*)
_class
loc:@item_embedding/part_11
�
1item_embedding/part_11/Initializer/random_uniformAdd5item_embedding/part_11/Initializer/random_uniform/mul5item_embedding/part_11/Initializer/random_uniform/min*
T0*
_output_shapes

:*)
_class
loc:@item_embedding/part_11
�
item_embedding/part_11
VariableV2*
shared_name *)
_class
loc:@item_embedding/part_11*
_output_shapes

:*
dtype0*
shape
:*
	container 
�
item_embedding/part_11/AssignAssignitem_embedding/part_111item_embedding/part_11/Initializer/random_uniform*
T0*
_output_shapes

:*
use_locking(*
validate_shape(*)
_class
loc:@item_embedding/part_11
�
item_embedding/part_11/readIdentityitem_embedding/part_11*
T0*
_output_shapes

:*)
_class
loc:@item_embedding/part_11
�
7item_embedding/part_12/Initializer/random_uniform/shapeConst*
valueB"      *
_output_shapes
:*
dtype0*)
_class
loc:@item_embedding/part_12
�
5item_embedding/part_12/Initializer/random_uniform/minConst*
valueB
 *   �*
_output_shapes
: *
dtype0*)
_class
loc:@item_embedding/part_12
�
5item_embedding/part_12/Initializer/random_uniform/maxConst*
valueB
 *   =*
_output_shapes
: *
dtype0*)
_class
loc:@item_embedding/part_12
�
?item_embedding/part_12/Initializer/random_uniform/RandomUniformRandomUniform7item_embedding/part_12/Initializer/random_uniform/shape*
seed2�*)
_class
loc:@item_embedding/part_12*
T0*
_output_shapes

:*
dtype0*
seed�
�
5item_embedding/part_12/Initializer/random_uniform/subSub5item_embedding/part_12/Initializer/random_uniform/max5item_embedding/part_12/Initializer/random_uniform/min*
T0*
_output_shapes
: *)
_class
loc:@item_embedding/part_12
�
5item_embedding/part_12/Initializer/random_uniform/mulMul?item_embedding/part_12/Initializer/random_uniform/RandomUniform5item_embedding/part_12/Initializer/random_uniform/sub*
T0*
_output_shapes

:*)
_class
loc:@item_embedding/part_12
�
1item_embedding/part_12/Initializer/random_uniformAdd5item_embedding/part_12/Initializer/random_uniform/mul5item_embedding/part_12/Initializer/random_uniform/min*
T0*
_output_shapes

:*)
_class
loc:@item_embedding/part_12
�
item_embedding/part_12
VariableV2*
shared_name *)
_class
loc:@item_embedding/part_12*
_output_shapes

:*
dtype0*
shape
:*
	container 
�
item_embedding/part_12/AssignAssignitem_embedding/part_121item_embedding/part_12/Initializer/random_uniform*
T0*
_output_shapes

:*
use_locking(*
validate_shape(*)
_class
loc:@item_embedding/part_12
�
item_embedding/part_12/readIdentityitem_embedding/part_12*
T0*
_output_shapes

:*)
_class
loc:@item_embedding/part_12
�
7item_embedding/part_13/Initializer/random_uniform/shapeConst*
valueB"      *
_output_shapes
:*
dtype0*)
_class
loc:@item_embedding/part_13
�
5item_embedding/part_13/Initializer/random_uniform/minConst*
valueB
 *   �*
_output_shapes
: *
dtype0*)
_class
loc:@item_embedding/part_13
�
5item_embedding/part_13/Initializer/random_uniform/maxConst*
valueB
 *   =*
_output_shapes
: *
dtype0*)
_class
loc:@item_embedding/part_13
�
?item_embedding/part_13/Initializer/random_uniform/RandomUniformRandomUniform7item_embedding/part_13/Initializer/random_uniform/shape*
seed2�*)
_class
loc:@item_embedding/part_13*
T0*
_output_shapes

:*
dtype0*
seed�
�
5item_embedding/part_13/Initializer/random_uniform/subSub5item_embedding/part_13/Initializer/random_uniform/max5item_embedding/part_13/Initializer/random_uniform/min*
T0*
_output_shapes
: *)
_class
loc:@item_embedding/part_13
�
5item_embedding/part_13/Initializer/random_uniform/mulMul?item_embedding/part_13/Initializer/random_uniform/RandomUniform5item_embedding/part_13/Initializer/random_uniform/sub*
T0*
_output_shapes

:*)
_class
loc:@item_embedding/part_13
�
1item_embedding/part_13/Initializer/random_uniformAdd5item_embedding/part_13/Initializer/random_uniform/mul5item_embedding/part_13/Initializer/random_uniform/min*
T0*
_output_shapes

:*)
_class
loc:@item_embedding/part_13
�
item_embedding/part_13
VariableV2*
shared_name *)
_class
loc:@item_embedding/part_13*
_output_shapes

:*
dtype0*
shape
:*
	container 
�
item_embedding/part_13/AssignAssignitem_embedding/part_131item_embedding/part_13/Initializer/random_uniform*
T0*
_output_shapes

:*
use_locking(*
validate_shape(*)
_class
loc:@item_embedding/part_13
�
item_embedding/part_13/readIdentityitem_embedding/part_13*
T0*
_output_shapes

:*)
_class
loc:@item_embedding/part_13
�
7item_embedding/part_14/Initializer/random_uniform/shapeConst*
valueB"      *
_output_shapes
:*
dtype0*)
_class
loc:@item_embedding/part_14
�
5item_embedding/part_14/Initializer/random_uniform/minConst*
valueB
 *   �*
_output_shapes
: *
dtype0*)
_class
loc:@item_embedding/part_14
�
5item_embedding/part_14/Initializer/random_uniform/maxConst*
valueB
 *   =*
_output_shapes
: *
dtype0*)
_class
loc:@item_embedding/part_14
�
?item_embedding/part_14/Initializer/random_uniform/RandomUniformRandomUniform7item_embedding/part_14/Initializer/random_uniform/shape*
seed2�*)
_class
loc:@item_embedding/part_14*
T0*
_output_shapes

:*
dtype0*
seed�
�
5item_embedding/part_14/Initializer/random_uniform/subSub5item_embedding/part_14/Initializer/random_uniform/max5item_embedding/part_14/Initializer/random_uniform/min*
T0*
_output_shapes
: *)
_class
loc:@item_embedding/part_14
�
5item_embedding/part_14/Initializer/random_uniform/mulMul?item_embedding/part_14/Initializer/random_uniform/RandomUniform5item_embedding/part_14/Initializer/random_uniform/sub*
T0*
_output_shapes

:*)
_class
loc:@item_embedding/part_14
�
1item_embedding/part_14/Initializer/random_uniformAdd5item_embedding/part_14/Initializer/random_uniform/mul5item_embedding/part_14/Initializer/random_uniform/min*
T0*
_output_shapes

:*)
_class
loc:@item_embedding/part_14
�
item_embedding/part_14
VariableV2*
shared_name *)
_class
loc:@item_embedding/part_14*
_output_shapes

:*
dtype0*
shape
:*
	container 
�
item_embedding/part_14/AssignAssignitem_embedding/part_141item_embedding/part_14/Initializer/random_uniform*
T0*
_output_shapes

:*
use_locking(*
validate_shape(*)
_class
loc:@item_embedding/part_14
�
item_embedding/part_14/readIdentityitem_embedding/part_14*
T0*
_output_shapes

:*)
_class
loc:@item_embedding/part_14
�
7item_embedding/part_15/Initializer/random_uniform/shapeConst*
valueB"      *
_output_shapes
:*
dtype0*)
_class
loc:@item_embedding/part_15
�
5item_embedding/part_15/Initializer/random_uniform/minConst*
valueB
 *   �*
_output_shapes
: *
dtype0*)
_class
loc:@item_embedding/part_15
�
5item_embedding/part_15/Initializer/random_uniform/maxConst*
valueB
 *   =*
_output_shapes
: *
dtype0*)
_class
loc:@item_embedding/part_15
�
?item_embedding/part_15/Initializer/random_uniform/RandomUniformRandomUniform7item_embedding/part_15/Initializer/random_uniform/shape*
seed2�*)
_class
loc:@item_embedding/part_15*
T0*
_output_shapes

:*
dtype0*
seed�
�
5item_embedding/part_15/Initializer/random_uniform/subSub5item_embedding/part_15/Initializer/random_uniform/max5item_embedding/part_15/Initializer/random_uniform/min*
T0*
_output_shapes
: *)
_class
loc:@item_embedding/part_15
�
5item_embedding/part_15/Initializer/random_uniform/mulMul?item_embedding/part_15/Initializer/random_uniform/RandomUniform5item_embedding/part_15/Initializer/random_uniform/sub*
T0*
_output_shapes

:*)
_class
loc:@item_embedding/part_15
�
1item_embedding/part_15/Initializer/random_uniformAdd5item_embedding/part_15/Initializer/random_uniform/mul5item_embedding/part_15/Initializer/random_uniform/min*
T0*
_output_shapes

:*)
_class
loc:@item_embedding/part_15
�
item_embedding/part_15
VariableV2*
shared_name *)
_class
loc:@item_embedding/part_15*
_output_shapes

:*
dtype0*
shape
:*
	container 
�
item_embedding/part_15/AssignAssignitem_embedding/part_151item_embedding/part_15/Initializer/random_uniform*
T0*
_output_shapes

:*
use_locking(*
validate_shape(*)
_class
loc:@item_embedding/part_15
�
item_embedding/part_15/readIdentityitem_embedding/part_15*
T0*
_output_shapes

:*)
_class
loc:@item_embedding/part_15
q
embedding_lookup/Reshape/shapeConst*
valueB:
���������*
_output_shapes
:*
dtype0
�
embedding_lookup/ReshapeReshapevisit_items_indexembedding_lookup/Reshape/shape*
T0	*
Tshape0*#
_output_shapes
:���������
h
embedding_lookup/SizeSizeembedding_lookup/Reshape*
out_type0*
T0	*
_output_shapes
: 
^
embedding_lookup/range/startConst*
value	B : *
_output_shapes
: *
dtype0
^
embedding_lookup/range/deltaConst*
value	B :*
_output_shapes
: *
dtype0
�
embedding_lookup/rangeRangeembedding_lookup/range/startembedding_lookup/Sizeembedding_lookup/range/delta*#
_output_shapes
:���������*

Tidx0
X
embedding_lookup/mod/yConst*
value	B	 R*
_output_shapes
: *
dtype0	
�
embedding_lookup/modFloorModembedding_lookup/Reshapeembedding_lookup/mod/y*
T0	*#
_output_shapes
:���������
]
embedding_lookup/floordiv/yConst*
value	B	 R*
_output_shapes
: *
dtype0	
�
embedding_lookup/floordivFloorDivembedding_lookup/Reshapeembedding_lookup/floordiv/y*
T0	*#
_output_shapes
:���������
�
embedding_lookup/CastCastembedding_lookup/mod*

DstT0*#
_output_shapes
:���������*
Truncate( *

SrcT0	
�
!embedding_lookup/DynamicPartitionDynamicPartitionembedding_lookup/floordivembedding_lookup/Cast*
T0	*�
_output_shapes�
�:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������*
num_partitions
�
#embedding_lookup/DynamicPartition_1DynamicPartitionembedding_lookup/rangeembedding_lookup/Cast*
T0*�
_output_shapes�
�:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������:���������*
num_partitions
�
embedding_lookup/GatherV2/axisConst*
value	B : *
_output_shapes
: *
dtype0*(
_class
loc:@item_embedding/part_0
�
embedding_lookup/GatherV2GatherV2item_embedding/part_0/read!embedding_lookup/DynamicPartitionembedding_lookup/GatherV2/axis*

batch_dims *
Taxis0*(
_class
loc:@item_embedding/part_0*
Tparams0*'
_output_shapes
:���������*
Tindices0	
�
 embedding_lookup/GatherV2_1/axisConst*
value	B : *
_output_shapes
: *
dtype0*(
_class
loc:@item_embedding/part_1
�
embedding_lookup/GatherV2_1GatherV2item_embedding/part_1/read#embedding_lookup/DynamicPartition:1 embedding_lookup/GatherV2_1/axis*

batch_dims *
Taxis0*(
_class
loc:@item_embedding/part_1*
Tparams0*'
_output_shapes
:���������*
Tindices0	
�
 embedding_lookup/GatherV2_2/axisConst*
value	B : *
_output_shapes
: *
dtype0*(
_class
loc:@item_embedding/part_2
�
embedding_lookup/GatherV2_2GatherV2item_embedding/part_2/read#embedding_lookup/DynamicPartition:2 embedding_lookup/GatherV2_2/axis*

batch_dims *
Taxis0*(
_class
loc:@item_embedding/part_2*
Tparams0*'
_output_shapes
:���������*
Tindices0	
�
 embedding_lookup/GatherV2_3/axisConst*
value	B : *
_output_shapes
: *
dtype0*(
_class
loc:@item_embedding/part_3
�
embedding_lookup/GatherV2_3GatherV2item_embedding/part_3/read#embedding_lookup/DynamicPartition:3 embedding_lookup/GatherV2_3/axis*

batch_dims *
Taxis0*(
_class
loc:@item_embedding/part_3*
Tparams0*'
_output_shapes
:���������*
Tindices0	
�
 embedding_lookup/GatherV2_4/axisConst*
value	B : *
_output_shapes
: *
dtype0*(
_class
loc:@item_embedding/part_4
�
embedding_lookup/GatherV2_4GatherV2item_embedding/part_4/read#embedding_lookup/DynamicPartition:4 embedding_lookup/GatherV2_4/axis*

batch_dims *
Taxis0*(
_class
loc:@item_embedding/part_4*
Tparams0*'
_output_shapes
:���������*
Tindices0	
�
 embedding_lookup/GatherV2_5/axisConst*
value	B : *
_output_shapes
: *
dtype0*(
_class
loc:@item_embedding/part_5
�
embedding_lookup/GatherV2_5GatherV2item_embedding/part_5/read#embedding_lookup/DynamicPartition:5 embedding_lookup/GatherV2_5/axis*

batch_dims *
Taxis0*(
_class
loc:@item_embedding/part_5*
Tparams0*'
_output_shapes
:���������*
Tindices0	
�
 embedding_lookup/GatherV2_6/axisConst*
value	B : *
_output_shapes
: *
dtype0*(
_class
loc:@item_embedding/part_6
�
embedding_lookup/GatherV2_6GatherV2item_embedding/part_6/read#embedding_lookup/DynamicPartition:6 embedding_lookup/GatherV2_6/axis*

batch_dims *
Taxis0*(
_class
loc:@item_embedding/part_6*
Tparams0*'
_output_shapes
:���������*
Tindices0	
�
 embedding_lookup/GatherV2_7/axisConst*
value	B : *
_output_shapes
: *
dtype0*(
_class
loc:@item_embedding/part_7
�
embedding_lookup/GatherV2_7GatherV2item_embedding/part_7/read#embedding_lookup/DynamicPartition:7 embedding_lookup/GatherV2_7/axis*

batch_dims *
Taxis0*(
_class
loc:@item_embedding/part_7*
Tparams0*'
_output_shapes
:���������*
Tindices0	
�
 embedding_lookup/GatherV2_8/axisConst*
value	B : *
_output_shapes
: *
dtype0*(
_class
loc:@item_embedding/part_8
�
embedding_lookup/GatherV2_8GatherV2item_embedding/part_8/read#embedding_lookup/DynamicPartition:8 embedding_lookup/GatherV2_8/axis*

batch_dims *
Taxis0*(
_class
loc:@item_embedding/part_8*
Tparams0*'
_output_shapes
:���������*
Tindices0	
�
 embedding_lookup/GatherV2_9/axisConst*
value	B : *
_output_shapes
: *
dtype0*(
_class
loc:@item_embedding/part_9
�
embedding_lookup/GatherV2_9GatherV2item_embedding/part_9/read#embedding_lookup/DynamicPartition:9 embedding_lookup/GatherV2_9/axis*

batch_dims *
Taxis0*(
_class
loc:@item_embedding/part_9*
Tparams0*'
_output_shapes
:���������*
Tindices0	
�
!embedding_lookup/GatherV2_10/axisConst*
value	B : *
_output_shapes
: *
dtype0*)
_class
loc:@item_embedding/part_10
�
embedding_lookup/GatherV2_10GatherV2item_embedding/part_10/read$embedding_lookup/DynamicPartition:10!embedding_lookup/GatherV2_10/axis*

batch_dims *
Taxis0*)
_class
loc:@item_embedding/part_10*
Tparams0*'
_output_shapes
:���������*
Tindices0	
�
!embedding_lookup/GatherV2_11/axisConst*
value	B : *
_output_shapes
: *
dtype0*)
_class
loc:@item_embedding/part_11
�
embedding_lookup/GatherV2_11GatherV2item_embedding/part_11/read$embedding_lookup/DynamicPartition:11!embedding_lookup/GatherV2_11/axis*

batch_dims *
Taxis0*)
_class
loc:@item_embedding/part_11*
Tparams0*'
_output_shapes
:���������*
Tindices0	
�
!embedding_lookup/GatherV2_12/axisConst*
value	B : *
_output_shapes
: *
dtype0*)
_class
loc:@item_embedding/part_12
�
embedding_lookup/GatherV2_12GatherV2item_embedding/part_12/read$embedding_lookup/DynamicPartition:12!embedding_lookup/GatherV2_12/axis*

batch_dims *
Taxis0*)
_class
loc:@item_embedding/part_12*
Tparams0*'
_output_shapes
:���������*
Tindices0	
�
!embedding_lookup/GatherV2_13/axisConst*
value	B : *
_output_shapes
: *
dtype0*)
_class
loc:@item_embedding/part_13
�
embedding_lookup/GatherV2_13GatherV2item_embedding/part_13/read$embedding_lookup/DynamicPartition:13!embedding_lookup/GatherV2_13/axis*

batch_dims *
Taxis0*)
_class
loc:@item_embedding/part_13*
Tparams0*'
_output_shapes
:���������*
Tindices0	
�
!embedding_lookup/GatherV2_14/axisConst*
value	B : *
_output_shapes
: *
dtype0*)
_class
loc:@item_embedding/part_14
�
embedding_lookup/GatherV2_14GatherV2item_embedding/part_14/read$embedding_lookup/DynamicPartition:14!embedding_lookup/GatherV2_14/axis*

batch_dims *
Taxis0*)
_class
loc:@item_embedding/part_14*
Tparams0*'
_output_shapes
:���������*
Tindices0	
�
!embedding_lookup/GatherV2_15/axisConst*
value	B : *
_output_shapes
: *
dtype0*)
_class
loc:@item_embedding/part_15
�
embedding_lookup/GatherV2_15GatherV2item_embedding/part_15/read$embedding_lookup/DynamicPartition:15!embedding_lookup/GatherV2_15/axis*

batch_dims *
Taxis0*)
_class
loc:@item_embedding/part_15*
Tparams0*'
_output_shapes
:���������*
Tindices0	
�	
embedding_lookupParallelDynamicStitch#embedding_lookup/DynamicPartition_1%embedding_lookup/DynamicPartition_1:1%embedding_lookup/DynamicPartition_1:2%embedding_lookup/DynamicPartition_1:3%embedding_lookup/DynamicPartition_1:4%embedding_lookup/DynamicPartition_1:5%embedding_lookup/DynamicPartition_1:6%embedding_lookup/DynamicPartition_1:7%embedding_lookup/DynamicPartition_1:8%embedding_lookup/DynamicPartition_1:9&embedding_lookup/DynamicPartition_1:10&embedding_lookup/DynamicPartition_1:11&embedding_lookup/DynamicPartition_1:12&embedding_lookup/DynamicPartition_1:13&embedding_lookup/DynamicPartition_1:14&embedding_lookup/DynamicPartition_1:15embedding_lookup/GatherV2embedding_lookup/GatherV2_1embedding_lookup/GatherV2_2embedding_lookup/GatherV2_3embedding_lookup/GatherV2_4embedding_lookup/GatherV2_5embedding_lookup/GatherV2_6embedding_lookup/GatherV2_7embedding_lookup/GatherV2_8embedding_lookup/GatherV2_9embedding_lookup/GatherV2_10embedding_lookup/GatherV2_11embedding_lookup/GatherV2_12embedding_lookup/GatherV2_13embedding_lookup/GatherV2_14embedding_lookup/GatherV2_15*
T0*
N*'
_output_shapes
:���������
g
embedding_lookup/ShapeShapevisit_items_index*
out_type0*
T0	*
_output_shapes
:
j
 embedding_lookup/concat/values_1Const*
valueB:*
_output_shapes
:*
dtype0
^
embedding_lookup/concat/axisConst*
value	B : *
_output_shapes
: *
dtype0
�
embedding_lookup/concatConcatV2embedding_lookup/Shape embedding_lookup/concat/values_1embedding_lookup/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
�
embedding_lookup/Reshape_1Reshapeembedding_lookupembedding_lookup/concat*
T0*
Tshape0*+
_output_shapes
:���������
X
Mean/reduction_indicesConst*
value	B :*
_output_shapes
: *
dtype0
�
MeanMeanembedding_lookup/Reshape_1Mean/reduction_indices*
	keep_dims( *
T0*'
_output_shapes
:���������*

Tidx0
M
concat/axisConst*
value	B :*
_output_shapes
: *
dtype0
�
concatConcatV2Meancontinuous_features_valueconcat/axis*
T0*
N*'
_output_shapes
:��������� *

Tidx0
�
.layer_1/kernel/Initializer/random_normal/shapeConst*
valueB"    @   *
_output_shapes
:*
dtype0*!
_class
loc:@layer_1/kernel
�
-layer_1/kernel/Initializer/random_normal/meanConst*
valueB
 *    *
_output_shapes
: *
dtype0*!
_class
loc:@layer_1/kernel
�
/layer_1/kernel/Initializer/random_normal/stddevConst*
valueB
 *���=*
_output_shapes
: *
dtype0*!
_class
loc:@layer_1/kernel
�
=layer_1/kernel/Initializer/random_normal/RandomStandardNormalRandomStandardNormal.layer_1/kernel/Initializer/random_normal/shape*
seed2�*!
_class
loc:@layer_1/kernel*
T0*
_output_shapes

: @*
dtype0*
seed�
�
,layer_1/kernel/Initializer/random_normal/mulMul=layer_1/kernel/Initializer/random_normal/RandomStandardNormal/layer_1/kernel/Initializer/random_normal/stddev*
T0*
_output_shapes

: @*!
_class
loc:@layer_1/kernel
�
(layer_1/kernel/Initializer/random_normalAdd,layer_1/kernel/Initializer/random_normal/mul-layer_1/kernel/Initializer/random_normal/mean*
T0*
_output_shapes

: @*!
_class
loc:@layer_1/kernel
�
layer_1/kernel
VariableV2*
shared_name *!
_class
loc:@layer_1/kernel*
_output_shapes

: @*
dtype0*
shape
: @*
	container 
�
layer_1/kernel/AssignAssignlayer_1/kernel(layer_1/kernel/Initializer/random_normal*
T0*
_output_shapes

: @*
use_locking(*
validate_shape(*!
_class
loc:@layer_1/kernel
{
layer_1/kernel/readIdentitylayer_1/kernel*
T0*
_output_shapes

: @*!
_class
loc:@layer_1/kernel
�
,layer_1/bias/Initializer/random_normal/shapeConst*
valueB:@*
_output_shapes
:*
dtype0*
_class
loc:@layer_1/bias
�
+layer_1/bias/Initializer/random_normal/meanConst*
valueB
 *    *
_output_shapes
: *
dtype0*
_class
loc:@layer_1/bias
�
-layer_1/bias/Initializer/random_normal/stddevConst*
valueB
 *���=*
_output_shapes
: *
dtype0*
_class
loc:@layer_1/bias
�
;layer_1/bias/Initializer/random_normal/RandomStandardNormalRandomStandardNormal,layer_1/bias/Initializer/random_normal/shape*
seed2�*
_class
loc:@layer_1/bias*
T0*
_output_shapes
:@*
dtype0*
seed�
�
*layer_1/bias/Initializer/random_normal/mulMul;layer_1/bias/Initializer/random_normal/RandomStandardNormal-layer_1/bias/Initializer/random_normal/stddev*
T0*
_output_shapes
:@*
_class
loc:@layer_1/bias
�
&layer_1/bias/Initializer/random_normalAdd*layer_1/bias/Initializer/random_normal/mul+layer_1/bias/Initializer/random_normal/mean*
T0*
_output_shapes
:@*
_class
loc:@layer_1/bias
�
layer_1/bias
VariableV2*
shared_name *
_class
loc:@layer_1/bias*
_output_shapes
:@*
dtype0*
shape:@*
	container 
�
layer_1/bias/AssignAssignlayer_1/bias&layer_1/bias/Initializer/random_normal*
T0*
_output_shapes
:@*
use_locking(*
validate_shape(*
_class
loc:@layer_1/bias
q
layer_1/bias/readIdentitylayer_1/bias*
T0*
_output_shapes
:@*
_class
loc:@layer_1/bias
�
layer_1/MatMulMatMulconcatlayer_1/kernel/read*
T0*
transpose_b( *
transpose_a( *'
_output_shapes
:���������@
�
layer_1/BiasAddBiasAddlayer_1/MatMullayer_1/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:���������@
W
layer_1/ReluRelulayer_1/BiasAdd*
T0*'
_output_shapes
:���������@
Y
layer_dropout_1/rateConst*
valueB
 *   ?*
_output_shapes
: *
dtype0
a
layer_dropout_1/ShapeShapelayer_1/Relu*
out_type0*
T0*
_output_shapes
:
g
"layer_dropout_1/random_uniform/minConst*
valueB
 *    *
_output_shapes
: *
dtype0
g
"layer_dropout_1/random_uniform/maxConst*
valueB
 *  �?*
_output_shapes
: *
dtype0
�
,layer_dropout_1/random_uniform/RandomUniformRandomUniformlayer_dropout_1/Shape*
T0*'
_output_shapes
:���������@*
dtype0*
seed2�*
seed�
�
"layer_dropout_1/random_uniform/subSub"layer_dropout_1/random_uniform/max"layer_dropout_1/random_uniform/min*
T0*
_output_shapes
: 
�
"layer_dropout_1/random_uniform/mulMul,layer_dropout_1/random_uniform/RandomUniform"layer_dropout_1/random_uniform/sub*
T0*'
_output_shapes
:���������@
�
layer_dropout_1/random_uniformAdd"layer_dropout_1/random_uniform/mul"layer_dropout_1/random_uniform/min*
T0*'
_output_shapes
:���������@
Z
layer_dropout_1/sub/xConst*
valueB
 *  �?*
_output_shapes
: *
dtype0
h
layer_dropout_1/subSublayer_dropout_1/sub/xlayer_dropout_1/rate*
T0*
_output_shapes
: 
^
layer_dropout_1/truediv/xConst*
valueB
 *  �?*
_output_shapes
: *
dtype0
s
layer_dropout_1/truedivRealDivlayer_dropout_1/truediv/xlayer_dropout_1/sub*
T0*
_output_shapes
: 
�
layer_dropout_1/GreaterEqualGreaterEquallayer_dropout_1/random_uniformlayer_dropout_1/rate*
T0*'
_output_shapes
:���������@
s
layer_dropout_1/mulMullayer_1/Relulayer_dropout_1/truediv*
T0*'
_output_shapes
:���������@
�
layer_dropout_1/CastCastlayer_dropout_1/GreaterEqual*

DstT0*'
_output_shapes
:���������@*
Truncate( *

SrcT0

y
layer_dropout_1/mul_1Mullayer_dropout_1/mullayer_dropout_1/Cast*
T0*'
_output_shapes
:���������@
�
.layer_2/kernel/Initializer/random_normal/shapeConst*
valueB"@       *
_output_shapes
:*
dtype0*!
_class
loc:@layer_2/kernel
�
-layer_2/kernel/Initializer/random_normal/meanConst*
valueB
 *    *
_output_shapes
: *
dtype0*!
_class
loc:@layer_2/kernel
�
/layer_2/kernel/Initializer/random_normal/stddevConst*
valueB
 *���=*
_output_shapes
: *
dtype0*!
_class
loc:@layer_2/kernel
�
=layer_2/kernel/Initializer/random_normal/RandomStandardNormalRandomStandardNormal.layer_2/kernel/Initializer/random_normal/shape*
seed2�*!
_class
loc:@layer_2/kernel*
T0*
_output_shapes

:@ *
dtype0*
seed�
�
,layer_2/kernel/Initializer/random_normal/mulMul=layer_2/kernel/Initializer/random_normal/RandomStandardNormal/layer_2/kernel/Initializer/random_normal/stddev*
T0*
_output_shapes

:@ *!
_class
loc:@layer_2/kernel
�
(layer_2/kernel/Initializer/random_normalAdd,layer_2/kernel/Initializer/random_normal/mul-layer_2/kernel/Initializer/random_normal/mean*
T0*
_output_shapes

:@ *!
_class
loc:@layer_2/kernel
�
layer_2/kernel
VariableV2*
shared_name *!
_class
loc:@layer_2/kernel*
_output_shapes

:@ *
dtype0*
shape
:@ *
	container 
�
layer_2/kernel/AssignAssignlayer_2/kernel(layer_2/kernel/Initializer/random_normal*
T0*
_output_shapes

:@ *
use_locking(*
validate_shape(*!
_class
loc:@layer_2/kernel
{
layer_2/kernel/readIdentitylayer_2/kernel*
T0*
_output_shapes

:@ *!
_class
loc:@layer_2/kernel
�
,layer_2/bias/Initializer/random_normal/shapeConst*
valueB: *
_output_shapes
:*
dtype0*
_class
loc:@layer_2/bias
�
+layer_2/bias/Initializer/random_normal/meanConst*
valueB
 *    *
_output_shapes
: *
dtype0*
_class
loc:@layer_2/bias
�
-layer_2/bias/Initializer/random_normal/stddevConst*
valueB
 *���=*
_output_shapes
: *
dtype0*
_class
loc:@layer_2/bias
�
;layer_2/bias/Initializer/random_normal/RandomStandardNormalRandomStandardNormal,layer_2/bias/Initializer/random_normal/shape*
seed2�*
_class
loc:@layer_2/bias*
T0*
_output_shapes
: *
dtype0*
seed�
�
*layer_2/bias/Initializer/random_normal/mulMul;layer_2/bias/Initializer/random_normal/RandomStandardNormal-layer_2/bias/Initializer/random_normal/stddev*
T0*
_output_shapes
: *
_class
loc:@layer_2/bias
�
&layer_2/bias/Initializer/random_normalAdd*layer_2/bias/Initializer/random_normal/mul+layer_2/bias/Initializer/random_normal/mean*
T0*
_output_shapes
: *
_class
loc:@layer_2/bias
�
layer_2/bias
VariableV2*
shared_name *
_class
loc:@layer_2/bias*
_output_shapes
: *
dtype0*
shape: *
	container 
�
layer_2/bias/AssignAssignlayer_2/bias&layer_2/bias/Initializer/random_normal*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*
_class
loc:@layer_2/bias
q
layer_2/bias/readIdentitylayer_2/bias*
T0*
_output_shapes
: *
_class
loc:@layer_2/bias
�
layer_2/MatMulMatMullayer_dropout_1/mul_1layer_2/kernel/read*
T0*
transpose_b( *
transpose_a( *'
_output_shapes
:��������� 
�
layer_2/BiasAddBiasAddlayer_2/MatMullayer_2/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:��������� 
W
layer_2/ReluRelulayer_2/BiasAdd*
T0*'
_output_shapes
:��������� 
Y
layer_dropout_2/rateConst*
valueB
 *   ?*
_output_shapes
: *
dtype0
a
layer_dropout_2/ShapeShapelayer_2/Relu*
out_type0*
T0*
_output_shapes
:
g
"layer_dropout_2/random_uniform/minConst*
valueB
 *    *
_output_shapes
: *
dtype0
g
"layer_dropout_2/random_uniform/maxConst*
valueB
 *  �?*
_output_shapes
: *
dtype0
�
,layer_dropout_2/random_uniform/RandomUniformRandomUniformlayer_dropout_2/Shape*
T0*'
_output_shapes
:��������� *
dtype0*
seed2�*
seed�
�
"layer_dropout_2/random_uniform/subSub"layer_dropout_2/random_uniform/max"layer_dropout_2/random_uniform/min*
T0*
_output_shapes
: 
�
"layer_dropout_2/random_uniform/mulMul,layer_dropout_2/random_uniform/RandomUniform"layer_dropout_2/random_uniform/sub*
T0*'
_output_shapes
:��������� 
�
layer_dropout_2/random_uniformAdd"layer_dropout_2/random_uniform/mul"layer_dropout_2/random_uniform/min*
T0*'
_output_shapes
:��������� 
Z
layer_dropout_2/sub/xConst*
valueB
 *  �?*
_output_shapes
: *
dtype0
h
layer_dropout_2/subSublayer_dropout_2/sub/xlayer_dropout_2/rate*
T0*
_output_shapes
: 
^
layer_dropout_2/truediv/xConst*
valueB
 *  �?*
_output_shapes
: *
dtype0
s
layer_dropout_2/truedivRealDivlayer_dropout_2/truediv/xlayer_dropout_2/sub*
T0*
_output_shapes
: 
�
layer_dropout_2/GreaterEqualGreaterEquallayer_dropout_2/random_uniformlayer_dropout_2/rate*
T0*'
_output_shapes
:��������� 
s
layer_dropout_2/mulMullayer_2/Relulayer_dropout_2/truediv*
T0*'
_output_shapes
:��������� 
�
layer_dropout_2/CastCastlayer_dropout_2/GreaterEqual*

DstT0*'
_output_shapes
:��������� *
Truncate( *

SrcT0

y
layer_dropout_2/mul_1Mullayer_dropout_2/mullayer_dropout_2/Cast*
T0*'
_output_shapes
:��������� 
�
2user_vector/kernel/Initializer/random_normal/shapeConst*
valueB"       *
_output_shapes
:*
dtype0*%
_class
loc:@user_vector/kernel
�
1user_vector/kernel/Initializer/random_normal/meanConst*
valueB
 *    *
_output_shapes
: *
dtype0*%
_class
loc:@user_vector/kernel
�
3user_vector/kernel/Initializer/random_normal/stddevConst*
valueB
 *���=*
_output_shapes
: *
dtype0*%
_class
loc:@user_vector/kernel
�
Auser_vector/kernel/Initializer/random_normal/RandomStandardNormalRandomStandardNormal2user_vector/kernel/Initializer/random_normal/shape*
seed2�*%
_class
loc:@user_vector/kernel*
T0*
_output_shapes

: *
dtype0*
seed�
�
0user_vector/kernel/Initializer/random_normal/mulMulAuser_vector/kernel/Initializer/random_normal/RandomStandardNormal3user_vector/kernel/Initializer/random_normal/stddev*
T0*
_output_shapes

: *%
_class
loc:@user_vector/kernel
�
,user_vector/kernel/Initializer/random_normalAdd0user_vector/kernel/Initializer/random_normal/mul1user_vector/kernel/Initializer/random_normal/mean*
T0*
_output_shapes

: *%
_class
loc:@user_vector/kernel
�
user_vector/kernel
VariableV2*
shared_name *%
_class
loc:@user_vector/kernel*
_output_shapes

: *
dtype0*
shape
: *
	container 
�
user_vector/kernel/AssignAssignuser_vector/kernel,user_vector/kernel/Initializer/random_normal*
T0*
_output_shapes

: *
use_locking(*
validate_shape(*%
_class
loc:@user_vector/kernel
�
user_vector/kernel/readIdentityuser_vector/kernel*
T0*
_output_shapes

: *%
_class
loc:@user_vector/kernel
�
0user_vector/bias/Initializer/random_normal/shapeConst*
valueB:*
_output_shapes
:*
dtype0*#
_class
loc:@user_vector/bias
�
/user_vector/bias/Initializer/random_normal/meanConst*
valueB
 *    *
_output_shapes
: *
dtype0*#
_class
loc:@user_vector/bias
�
1user_vector/bias/Initializer/random_normal/stddevConst*
valueB
 *���=*
_output_shapes
: *
dtype0*#
_class
loc:@user_vector/bias
�
?user_vector/bias/Initializer/random_normal/RandomStandardNormalRandomStandardNormal0user_vector/bias/Initializer/random_normal/shape*
seed2�*#
_class
loc:@user_vector/bias*
T0*
_output_shapes
:*
dtype0*
seed�
�
.user_vector/bias/Initializer/random_normal/mulMul?user_vector/bias/Initializer/random_normal/RandomStandardNormal1user_vector/bias/Initializer/random_normal/stddev*
T0*
_output_shapes
:*#
_class
loc:@user_vector/bias
�
*user_vector/bias/Initializer/random_normalAdd.user_vector/bias/Initializer/random_normal/mul/user_vector/bias/Initializer/random_normal/mean*
T0*
_output_shapes
:*#
_class
loc:@user_vector/bias
�
user_vector/bias
VariableV2*
shared_name *#
_class
loc:@user_vector/bias*
_output_shapes
:*
dtype0*
shape:*
	container 
�
user_vector/bias/AssignAssignuser_vector/bias*user_vector/bias/Initializer/random_normal*
T0*
_output_shapes
:*
use_locking(*
validate_shape(*#
_class
loc:@user_vector/bias
}
user_vector/bias/readIdentityuser_vector/bias*
T0*
_output_shapes
:*#
_class
loc:@user_vector/bias
�
user_vector/MatMulMatMullayer_dropout_2/mul_1user_vector/kernel/read*
T0*
transpose_b( *
transpose_a( *'
_output_shapes
:���������
�
user_vector/BiasAddBiasAdduser_vector/MatMuluser_vector/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:���������
_
user_vector/ReluReluuser_vector/BiasAdd*
T0*'
_output_shapes
:���������
m
+item_embedding/ConcatPartitions/concat/axisConst*
value	B : *
_output_shapes
: *
dtype0
�
&item_embedding/ConcatPartitions/concatConcatV2item_embedding/part_0/readitem_embedding/part_1/readitem_embedding/part_2/readitem_embedding/part_3/readitem_embedding/part_4/readitem_embedding/part_5/readitem_embedding/part_6/readitem_embedding/part_7/readitem_embedding/part_8/readitem_embedding/part_9/readitem_embedding/part_10/readitem_embedding/part_11/readitem_embedding/part_12/readitem_embedding/part_13/readitem_embedding/part_14/readitem_embedding/part_15/read+item_embedding/ConcatPartitions/concat/axis*
T0*
N*
_output_shapes
:	�*

Tidx0
l
item_embeddingIdentity&item_embedding/ConcatPartitions/concat*
T0*
_output_shapes
:	�
�
MatMulMatMuluser_vector/Reluitem_embedding*
T0*
transpose_b(*
transpose_a( *(
_output_shapes
:����������
M
SoftmaxSoftmaxMatMul*
T0*(
_output_shapes
:����������
J
TopKV2/kConst*
value	B :*
_output_shapes
: *
dtype0
v
TopKV2TopKV2SoftmaxTopKV2/k*
T0*:
_output_shapes(
&:���������:���������*
sorted(
M
indexIdentityTopKV2:1*
T0*'
_output_shapes
:���������

initNoOp

init_all_tablesNoOp

init_1NoOp
4

group_depsNoOp^init^init_1^init_all_tables
Y
save/filename/inputConst*
valueB Bmodel*
_output_shapes
: *
dtype0
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
�
save/StringJoin/inputs_1Const*<
value3B1 B+_temp_e617f6c03aa14072a16a8ebd4e9348c0/part*
_output_shapes
: *
dtype0
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
	separator *
_output_shapes
: 
Q
save/num_shardsConst*
value	B :*
_output_shapes
: *
dtype0
k
save/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
_output_shapes
: *
dtype0
�
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
�
save/SaveV2/tensor_namesConst"/device:CPU:0*�
value�B�Bglobal_stepBitem_embeddingBitem_embeddingBitem_embeddingBitem_embeddingBitem_embeddingBitem_embeddingBitem_embeddingBitem_embeddingBitem_embeddingBitem_embeddingBitem_embeddingBitem_embeddingBitem_embeddingBitem_embeddingBitem_embeddingBitem_embeddingBlayer_1/biasBlayer_1/kernelBlayer_2/biasBlayer_2/kernelBuser_vector/biasBuser_vector/kernel*
_output_shapes
:*
dtype0
�
save/SaveV2/shape_and_slicesConst"/device:CPU:0*�
value�B�B B500 16 0,32:0,16B500 16 314,31:0,16B500 16 345,31:0,16B500 16 376,31:0,16B500 16 407,31:0,16B500 16 438,31:0,16B500 16 469,31:0,16B500 16 32,32:0,16B500 16 64,32:0,16B500 16 96,32:0,16B500 16 128,31:0,16B500 16 159,31:0,16B500 16 190,31:0,16B500 16 221,31:0,16B500 16 252,31:0,16B500 16 283,31:0,16B B B B B B *
_output_shapes
:*
dtype0
�
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesglobal_stepitem_embedding/part_0/readitem_embedding/part_10/readitem_embedding/part_11/readitem_embedding/part_12/readitem_embedding/part_13/readitem_embedding/part_14/readitem_embedding/part_15/readitem_embedding/part_1/readitem_embedding/part_2/readitem_embedding/part_3/readitem_embedding/part_4/readitem_embedding/part_5/readitem_embedding/part_6/readitem_embedding/part_7/readitem_embedding/part_8/readitem_embedding/part_9/readlayer_1/biaslayer_1/kernellayer_2/biaslayer_2/kerneluser_vector/biasuser_vector/kernel"/device:CPU:0*%
dtypes
2	
�
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
T0*
_output_shapes
: *'
_class
loc:@save/ShardedFilename
�
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*

axis *
T0*
N*
_output_shapes
:
�
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*
delete_old_dirs(
�
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
�
save/RestoreV2/tensor_namesConst"/device:CPU:0*�
value�B�Bglobal_stepBitem_embeddingBitem_embeddingBitem_embeddingBitem_embeddingBitem_embeddingBitem_embeddingBitem_embeddingBitem_embeddingBitem_embeddingBitem_embeddingBitem_embeddingBitem_embeddingBitem_embeddingBitem_embeddingBitem_embeddingBitem_embeddingBlayer_1/biasBlayer_1/kernelBlayer_2/biasBlayer_2/kernelBuser_vector/biasBuser_vector/kernel*
_output_shapes
:*
dtype0
�
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*�
value�B�B B500 16 0,32:0,16B500 16 314,31:0,16B500 16 345,31:0,16B500 16 376,31:0,16B500 16 407,31:0,16B500 16 438,31:0,16B500 16 469,31:0,16B500 16 32,32:0,16B500 16 64,32:0,16B500 16 96,32:0,16B500 16 128,31:0,16B500 16 159,31:0,16B500 16 190,31:0,16B500 16 221,31:0,16B500 16 252,31:0,16B500 16 283,31:0,16B B B B B B *
_output_shapes
:*
dtype0
�
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*%
dtypes
2	*�
_output_shapes�
�:: ::::::: : : ::::::::::::
�
save/AssignAssignglobal_stepsave/RestoreV2*
T0	*
_output_shapes
: *
use_locking(*
validate_shape(*
_class
loc:@global_step
�
save/Assign_1Assignitem_embedding/part_0save/RestoreV2:1*
T0*
_output_shapes

: *
use_locking(*
validate_shape(*(
_class
loc:@item_embedding/part_0
�
save/Assign_2Assignitem_embedding/part_10save/RestoreV2:2*
T0*
_output_shapes

:*
use_locking(*
validate_shape(*)
_class
loc:@item_embedding/part_10
�
save/Assign_3Assignitem_embedding/part_11save/RestoreV2:3*
T0*
_output_shapes

:*
use_locking(*
validate_shape(*)
_class
loc:@item_embedding/part_11
�
save/Assign_4Assignitem_embedding/part_12save/RestoreV2:4*
T0*
_output_shapes

:*
use_locking(*
validate_shape(*)
_class
loc:@item_embedding/part_12
�
save/Assign_5Assignitem_embedding/part_13save/RestoreV2:5*
T0*
_output_shapes

:*
use_locking(*
validate_shape(*)
_class
loc:@item_embedding/part_13
�
save/Assign_6Assignitem_embedding/part_14save/RestoreV2:6*
T0*
_output_shapes

:*
use_locking(*
validate_shape(*)
_class
loc:@item_embedding/part_14
�
save/Assign_7Assignitem_embedding/part_15save/RestoreV2:7*
T0*
_output_shapes

:*
use_locking(*
validate_shape(*)
_class
loc:@item_embedding/part_15
�
save/Assign_8Assignitem_embedding/part_1save/RestoreV2:8*
T0*
_output_shapes

: *
use_locking(*
validate_shape(*(
_class
loc:@item_embedding/part_1
�
save/Assign_9Assignitem_embedding/part_2save/RestoreV2:9*
T0*
_output_shapes

: *
use_locking(*
validate_shape(*(
_class
loc:@item_embedding/part_2
�
save/Assign_10Assignitem_embedding/part_3save/RestoreV2:10*
T0*
_output_shapes

: *
use_locking(*
validate_shape(*(
_class
loc:@item_embedding/part_3
�
save/Assign_11Assignitem_embedding/part_4save/RestoreV2:11*
T0*
_output_shapes

:*
use_locking(*
validate_shape(*(
_class
loc:@item_embedding/part_4
�
save/Assign_12Assignitem_embedding/part_5save/RestoreV2:12*
T0*
_output_shapes

:*
use_locking(*
validate_shape(*(
_class
loc:@item_embedding/part_5
�
save/Assign_13Assignitem_embedding/part_6save/RestoreV2:13*
T0*
_output_shapes

:*
use_locking(*
validate_shape(*(
_class
loc:@item_embedding/part_6
�
save/Assign_14Assignitem_embedding/part_7save/RestoreV2:14*
T0*
_output_shapes

:*
use_locking(*
validate_shape(*(
_class
loc:@item_embedding/part_7
�
save/Assign_15Assignitem_embedding/part_8save/RestoreV2:15*
T0*
_output_shapes

:*
use_locking(*
validate_shape(*(
_class
loc:@item_embedding/part_8
�
save/Assign_16Assignitem_embedding/part_9save/RestoreV2:16*
T0*
_output_shapes

:*
use_locking(*
validate_shape(*(
_class
loc:@item_embedding/part_9
�
save/Assign_17Assignlayer_1/biassave/RestoreV2:17*
T0*
_output_shapes
:@*
use_locking(*
validate_shape(*
_class
loc:@layer_1/bias
�
save/Assign_18Assignlayer_1/kernelsave/RestoreV2:18*
T0*
_output_shapes

: @*
use_locking(*
validate_shape(*!
_class
loc:@layer_1/kernel
�
save/Assign_19Assignlayer_2/biassave/RestoreV2:19*
T0*
_output_shapes
: *
use_locking(*
validate_shape(*
_class
loc:@layer_2/bias
�
save/Assign_20Assignlayer_2/kernelsave/RestoreV2:20*
T0*
_output_shapes

:@ *
use_locking(*
validate_shape(*!
_class
loc:@layer_2/kernel
�
save/Assign_21Assignuser_vector/biassave/RestoreV2:21*
T0*
_output_shapes
:*
use_locking(*
validate_shape(*#
_class
loc:@user_vector/bias
�
save/Assign_22Assignuser_vector/kernelsave/RestoreV2:22*
T0*
_output_shapes

: *
use_locking(*
validate_shape(*%
_class
loc:@user_vector/kernel
�
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
-
save/restore_allNoOp^save/restore_shard"&<
save/Const:0save/Identity:0save/restore_all (5 @F8"m
global_step^\
Z
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0H"�
trainable_variables��
�
item_embedding/part_0:0item_embedding/part_0/Assignitem_embedding/part_0/read:0"
item_embedding�  " 22item_embedding/part_0/Initializer/random_uniform:08
�
item_embedding/part_1:0item_embedding/part_1/Assignitem_embedding/part_1/read:0"
item_embedding�  " 22item_embedding/part_1/Initializer/random_uniform:08
�
item_embedding/part_2:0item_embedding/part_2/Assignitem_embedding/part_2/read:0"
item_embedding�@ " 22item_embedding/part_2/Initializer/random_uniform:08
�
item_embedding/part_3:0item_embedding/part_3/Assignitem_embedding/part_3/read:0"
item_embedding�` " 22item_embedding/part_3/Initializer/random_uniform:08
�
item_embedding/part_4:0item_embedding/part_4/Assignitem_embedding/part_4/read:0"
item_embedding�� "22item_embedding/part_4/Initializer/random_uniform:08
�
item_embedding/part_5:0item_embedding/part_5/Assignitem_embedding/part_5/read:0"
item_embedding�� "22item_embedding/part_5/Initializer/random_uniform:08
�
item_embedding/part_6:0item_embedding/part_6/Assignitem_embedding/part_6/read:0"
item_embedding�� "22item_embedding/part_6/Initializer/random_uniform:08
�
item_embedding/part_7:0item_embedding/part_7/Assignitem_embedding/part_7/read:0"
item_embedding�� "22item_embedding/part_7/Initializer/random_uniform:08
�
item_embedding/part_8:0item_embedding/part_8/Assignitem_embedding/part_8/read:0"
item_embedding�� "22item_embedding/part_8/Initializer/random_uniform:08
�
item_embedding/part_9:0item_embedding/part_9/Assignitem_embedding/part_9/read:0"
item_embedding�� "22item_embedding/part_9/Initializer/random_uniform:08
�
item_embedding/part_10:0item_embedding/part_10/Assignitem_embedding/part_10/read:0"
item_embedding�� "23item_embedding/part_10/Initializer/random_uniform:08
�
item_embedding/part_11:0item_embedding/part_11/Assignitem_embedding/part_11/read:0"
item_embedding�� "23item_embedding/part_11/Initializer/random_uniform:08
�
item_embedding/part_12:0item_embedding/part_12/Assignitem_embedding/part_12/read:0"
item_embedding�� "23item_embedding/part_12/Initializer/random_uniform:08
�
item_embedding/part_13:0item_embedding/part_13/Assignitem_embedding/part_13/read:0"
item_embedding�� "23item_embedding/part_13/Initializer/random_uniform:08
�
item_embedding/part_14:0item_embedding/part_14/Assignitem_embedding/part_14/read:0"
item_embedding�� "23item_embedding/part_14/Initializer/random_uniform:08
�
item_embedding/part_15:0item_embedding/part_15/Assignitem_embedding/part_15/read:0"
item_embedding�� "23item_embedding/part_15/Initializer/random_uniform:08
n
layer_1/kernel:0layer_1/kernel/Assignlayer_1/kernel/read:02*layer_1/kernel/Initializer/random_normal:08
f
layer_1/bias:0layer_1/bias/Assignlayer_1/bias/read:02(layer_1/bias/Initializer/random_normal:08
n
layer_2/kernel:0layer_2/kernel/Assignlayer_2/kernel/read:02*layer_2/kernel/Initializer/random_normal:08
f
layer_2/bias:0layer_2/bias/Assignlayer_2/bias/read:02(layer_2/bias/Initializer/random_normal:08
~
user_vector/kernel:0user_vector/kernel/Assignuser_vector/kernel/read:02.user_vector/kernel/Initializer/random_normal:08
v
user_vector/bias:0user_vector/bias/Assignuser_vector/bias/read:02,user_vector/bias/Initializer/random_normal:08"%
saved_model_main_op


group_deps"�
	variables��
Z
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0H
�
item_embedding/part_0:0item_embedding/part_0/Assignitem_embedding/part_0/read:0"
item_embedding�  " 22item_embedding/part_0/Initializer/random_uniform:08
�
item_embedding/part_1:0item_embedding/part_1/Assignitem_embedding/part_1/read:0"
item_embedding�  " 22item_embedding/part_1/Initializer/random_uniform:08
�
item_embedding/part_2:0item_embedding/part_2/Assignitem_embedding/part_2/read:0"
item_embedding�@ " 22item_embedding/part_2/Initializer/random_uniform:08
�
item_embedding/part_3:0item_embedding/part_3/Assignitem_embedding/part_3/read:0"
item_embedding�` " 22item_embedding/part_3/Initializer/random_uniform:08
�
item_embedding/part_4:0item_embedding/part_4/Assignitem_embedding/part_4/read:0"
item_embedding�� "22item_embedding/part_4/Initializer/random_uniform:08
�
item_embedding/part_5:0item_embedding/part_5/Assignitem_embedding/part_5/read:0"
item_embedding�� "22item_embedding/part_5/Initializer/random_uniform:08
�
item_embedding/part_6:0item_embedding/part_6/Assignitem_embedding/part_6/read:0"
item_embedding�� "22item_embedding/part_6/Initializer/random_uniform:08
�
item_embedding/part_7:0item_embedding/part_7/Assignitem_embedding/part_7/read:0"
item_embedding�� "22item_embedding/part_7/Initializer/random_uniform:08
�
item_embedding/part_8:0item_embedding/part_8/Assignitem_embedding/part_8/read:0"
item_embedding�� "22item_embedding/part_8/Initializer/random_uniform:08
�
item_embedding/part_9:0item_embedding/part_9/Assignitem_embedding/part_9/read:0"
item_embedding�� "22item_embedding/part_9/Initializer/random_uniform:08
�
item_embedding/part_10:0item_embedding/part_10/Assignitem_embedding/part_10/read:0"
item_embedding�� "23item_embedding/part_10/Initializer/random_uniform:08
�
item_embedding/part_11:0item_embedding/part_11/Assignitem_embedding/part_11/read:0"
item_embedding�� "23item_embedding/part_11/Initializer/random_uniform:08
�
item_embedding/part_12:0item_embedding/part_12/Assignitem_embedding/part_12/read:0"
item_embedding�� "23item_embedding/part_12/Initializer/random_uniform:08
�
item_embedding/part_13:0item_embedding/part_13/Assignitem_embedding/part_13/read:0"
item_embedding�� "23item_embedding/part_13/Initializer/random_uniform:08
�
item_embedding/part_14:0item_embedding/part_14/Assignitem_embedding/part_14/read:0"
item_embedding�� "23item_embedding/part_14/Initializer/random_uniform:08
�
item_embedding/part_15:0item_embedding/part_15/Assignitem_embedding/part_15/read:0"
item_embedding�� "23item_embedding/part_15/Initializer/random_uniform:08
n
layer_1/kernel:0layer_1/kernel/Assignlayer_1/kernel/read:02*layer_1/kernel/Initializer/random_normal:08
f
layer_1/bias:0layer_1/bias/Assignlayer_1/bias/read:02(layer_1/bias/Initializer/random_normal:08
n
layer_2/kernel:0layer_2/kernel/Assignlayer_2/kernel/read:02*layer_2/kernel/Initializer/random_normal:08
f
layer_2/bias:0layer_2/bias/Assignlayer_2/bias/read:02(layer_2/bias/Initializer/random_normal:08
~
user_vector/kernel:0user_vector/kernel/Assignuser_vector/kernel/read:02.user_vector/kernel/Initializer/random_normal:08
v
user_vector/bias:0user_vector/bias/Assignuser_vector/bias/read:02,user_vector/bias/Initializer/random_normal:08*�
serving_default�
O
continuous_features_value2
continuous_features_value:0���������
?
visit_items_index*
visit_items_index:0	���������8
user_vector)
user_vector/Relu:0���������'
index
index:0���������tensorflow/serving/predict*�

prediction�
O
continuous_features_value2
continuous_features_value:0���������
?
visit_items_index*
visit_items_index:0	���������8
user_vector)
user_vector/Relu:0���������'
index
index:0���������tensorflow/serving/predict