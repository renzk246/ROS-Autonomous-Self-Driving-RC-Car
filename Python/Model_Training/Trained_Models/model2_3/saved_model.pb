??
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
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
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

;
Elu
features"T
activations"T"
Ttype:
2
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
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?

NoOp
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
@
ReadVariableOp
resource
value"dtype"
dtypetype?
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
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718??
?
Natural_Conv2D_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameNatural_Conv2D_1/kernel
?
+Natural_Conv2D_1/kernel/Read/ReadVariableOpReadVariableOpNatural_Conv2D_1/kernel*&
_output_shapes
:*
dtype0
?
Natural_Conv2D_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameNatural_Conv2D_1/bias
{
)Natural_Conv2D_1/bias/Read/ReadVariableOpReadVariableOpNatural_Conv2D_1/bias*
_output_shapes
:*
dtype0
?
Lane_Conv2D_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameLane_Conv2D_1/kernel
?
(Lane_Conv2D_1/kernel/Read/ReadVariableOpReadVariableOpLane_Conv2D_1/kernel*&
_output_shapes
:*
dtype0
|
Lane_Conv2D_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameLane_Conv2D_1/bias
u
&Lane_Conv2D_1/bias/Read/ReadVariableOpReadVariableOpLane_Conv2D_1/bias*
_output_shapes
:*
dtype0
?
Natural_Conv2D_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameNatural_Conv2D_2/kernel
?
+Natural_Conv2D_2/kernel/Read/ReadVariableOpReadVariableOpNatural_Conv2D_2/kernel*&
_output_shapes
: *
dtype0
?
Natural_Conv2D_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameNatural_Conv2D_2/bias
{
)Natural_Conv2D_2/bias/Read/ReadVariableOpReadVariableOpNatural_Conv2D_2/bias*
_output_shapes
: *
dtype0
?
Lane_Conv2D_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameLane_Conv2D_2/kernel
?
(Lane_Conv2D_2/kernel/Read/ReadVariableOpReadVariableOpLane_Conv2D_2/kernel*&
_output_shapes
: *
dtype0
|
Lane_Conv2D_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameLane_Conv2D_2/bias
u
&Lane_Conv2D_2/bias/Read/ReadVariableOpReadVariableOpLane_Conv2D_2/bias*
_output_shapes
: *
dtype0
?
Natural_Conv2D_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameNatural_Conv2D_3/kernel
?
+Natural_Conv2D_3/kernel/Read/ReadVariableOpReadVariableOpNatural_Conv2D_3/kernel*&
_output_shapes
: @*
dtype0
?
Natural_Conv2D_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameNatural_Conv2D_3/bias
{
)Natural_Conv2D_3/bias/Read/ReadVariableOpReadVariableOpNatural_Conv2D_3/bias*
_output_shapes
:@*
dtype0
?
Lane_Conv2D_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*%
shared_nameLane_Conv2D_3/kernel
?
(Lane_Conv2D_3/kernel/Read/ReadVariableOpReadVariableOpLane_Conv2D_3/kernel*&
_output_shapes
: @*
dtype0
|
Lane_Conv2D_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*#
shared_nameLane_Conv2D_3/bias
u
&Lane_Conv2D_3/bias/Read/ReadVariableOpReadVariableOpLane_Conv2D_3/bias*
_output_shapes
:@*
dtype0
?
Natural_Conv2D_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameNatural_Conv2D_4/kernel
?
+Natural_Conv2D_4/kernel/Read/ReadVariableOpReadVariableOpNatural_Conv2D_4/kernel*&
_output_shapes
:@@*
dtype0
?
Natural_Conv2D_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameNatural_Conv2D_4/bias
{
)Natural_Conv2D_4/bias/Read/ReadVariableOpReadVariableOpNatural_Conv2D_4/bias*
_output_shapes
:@*
dtype0
?
Lane_Conv2D_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*%
shared_nameLane_Conv2D_4/kernel
?
(Lane_Conv2D_4/kernel/Read/ReadVariableOpReadVariableOpLane_Conv2D_4/kernel*&
_output_shapes
:@@*
dtype0
|
Lane_Conv2D_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*#
shared_nameLane_Conv2D_4/bias
u
&Lane_Conv2D_4/bias/Read/ReadVariableOpReadVariableOpLane_Conv2D_4/bias*
_output_shapes
:@*
dtype0
?
Natural_Conv2D_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*(
shared_nameNatural_Conv2D_5/kernel
?
+Natural_Conv2D_5/kernel/Read/ReadVariableOpReadVariableOpNatural_Conv2D_5/kernel*&
_output_shapes
:@@*
dtype0
?
Natural_Conv2D_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameNatural_Conv2D_5/bias
{
)Natural_Conv2D_5/bias/Read/ReadVariableOpReadVariableOpNatural_Conv2D_5/bias*
_output_shapes
:@*
dtype0
?
Lane_Conv2D_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*%
shared_nameLane_Conv2D_5/kernel
?
(Lane_Conv2D_5/kernel/Read/ReadVariableOpReadVariableOpLane_Conv2D_5/kernel*&
_output_shapes
:@@*
dtype0
|
Lane_Conv2D_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*#
shared_nameLane_Conv2D_5/bias
u
&Lane_Conv2D_5/bias/Read/ReadVariableOpReadVariableOpLane_Conv2D_5/bias*
_output_shapes
:@*
dtype0
v
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??d*
shared_namedense/kernel
o
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel* 
_output_shapes
:
??d*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:d*
dtype0
z
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??d*
shared_namedense_1/kernel
s
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel* 
_output_shapes
:
??d*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:d*
dtype0
y
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?d*
shared_namedense_2/kernel
r
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes
:	?d*
dtype0
p
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:d*
dtype0
x
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d2*
shared_namedense_3/kernel
q
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes

:d2*
dtype0
p
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_namedense_3/bias
i
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes
:2*
dtype0
x
dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2
*
shared_namedense_4/kernel
q
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel*
_output_shapes

:2
*
dtype0
p
dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_4/bias
i
 dense_4/bias/Read/ReadVariableOpReadVariableOpdense_4/bias*
_output_shapes
:
*
dtype0
?
steering_out/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*$
shared_namesteering_out/kernel
{
'steering_out/kernel/Read/ReadVariableOpReadVariableOpsteering_out/kernel*
_output_shapes

:
*
dtype0
z
steering_out/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_namesteering_out/bias
s
%steering_out/bias/Read/ReadVariableOpReadVariableOpsteering_out/bias*
_output_shapes
:*
dtype0
?
throttle_out/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*$
shared_namethrottle_out/kernel
{
'throttle_out/kernel/Read/ReadVariableOpReadVariableOpthrottle_out/kernel*
_output_shapes

:
*
dtype0
z
throttle_out/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_namethrottle_out/bias
s
%throttle_out/bias/Read/ReadVariableOpReadVariableOpthrottle_out/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
b
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0
?
Adam/Natural_Conv2D_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/Natural_Conv2D_1/kernel/m
?
2Adam/Natural_Conv2D_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Natural_Conv2D_1/kernel/m*&
_output_shapes
:*
dtype0
?
Adam/Natural_Conv2D_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_nameAdam/Natural_Conv2D_1/bias/m
?
0Adam/Natural_Conv2D_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/Natural_Conv2D_1/bias/m*
_output_shapes
:*
dtype0
?
Adam/Lane_Conv2D_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_nameAdam/Lane_Conv2D_1/kernel/m
?
/Adam/Lane_Conv2D_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Lane_Conv2D_1/kernel/m*&
_output_shapes
:*
dtype0
?
Adam/Lane_Conv2D_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameAdam/Lane_Conv2D_1/bias/m
?
-Adam/Lane_Conv2D_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/Lane_Conv2D_1/bias/m*
_output_shapes
:*
dtype0
?
Adam/Natural_Conv2D_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name Adam/Natural_Conv2D_2/kernel/m
?
2Adam/Natural_Conv2D_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Natural_Conv2D_2/kernel/m*&
_output_shapes
: *
dtype0
?
Adam/Natural_Conv2D_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_nameAdam/Natural_Conv2D_2/bias/m
?
0Adam/Natural_Conv2D_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/Natural_Conv2D_2/bias/m*
_output_shapes
: *
dtype0
?
Adam/Lane_Conv2D_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_nameAdam/Lane_Conv2D_2/kernel/m
?
/Adam/Lane_Conv2D_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Lane_Conv2D_2/kernel/m*&
_output_shapes
: *
dtype0
?
Adam/Lane_Conv2D_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_nameAdam/Lane_Conv2D_2/bias/m
?
-Adam/Lane_Conv2D_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/Lane_Conv2D_2/bias/m*
_output_shapes
: *
dtype0
?
Adam/Natural_Conv2D_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*/
shared_name Adam/Natural_Conv2D_3/kernel/m
?
2Adam/Natural_Conv2D_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Natural_Conv2D_3/kernel/m*&
_output_shapes
: @*
dtype0
?
Adam/Natural_Conv2D_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_nameAdam/Natural_Conv2D_3/bias/m
?
0Adam/Natural_Conv2D_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/Natural_Conv2D_3/bias/m*
_output_shapes
:@*
dtype0
?
Adam/Lane_Conv2D_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*,
shared_nameAdam/Lane_Conv2D_3/kernel/m
?
/Adam/Lane_Conv2D_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Lane_Conv2D_3/kernel/m*&
_output_shapes
: @*
dtype0
?
Adam/Lane_Conv2D_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@**
shared_nameAdam/Lane_Conv2D_3/bias/m
?
-Adam/Lane_Conv2D_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/Lane_Conv2D_3/bias/m*
_output_shapes
:@*
dtype0
?
Adam/Natural_Conv2D_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*/
shared_name Adam/Natural_Conv2D_4/kernel/m
?
2Adam/Natural_Conv2D_4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Natural_Conv2D_4/kernel/m*&
_output_shapes
:@@*
dtype0
?
Adam/Natural_Conv2D_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_nameAdam/Natural_Conv2D_4/bias/m
?
0Adam/Natural_Conv2D_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/Natural_Conv2D_4/bias/m*
_output_shapes
:@*
dtype0
?
Adam/Lane_Conv2D_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*,
shared_nameAdam/Lane_Conv2D_4/kernel/m
?
/Adam/Lane_Conv2D_4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Lane_Conv2D_4/kernel/m*&
_output_shapes
:@@*
dtype0
?
Adam/Lane_Conv2D_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@**
shared_nameAdam/Lane_Conv2D_4/bias/m
?
-Adam/Lane_Conv2D_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/Lane_Conv2D_4/bias/m*
_output_shapes
:@*
dtype0
?
Adam/Natural_Conv2D_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*/
shared_name Adam/Natural_Conv2D_5/kernel/m
?
2Adam/Natural_Conv2D_5/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Natural_Conv2D_5/kernel/m*&
_output_shapes
:@@*
dtype0
?
Adam/Natural_Conv2D_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_nameAdam/Natural_Conv2D_5/bias/m
?
0Adam/Natural_Conv2D_5/bias/m/Read/ReadVariableOpReadVariableOpAdam/Natural_Conv2D_5/bias/m*
_output_shapes
:@*
dtype0
?
Adam/Lane_Conv2D_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*,
shared_nameAdam/Lane_Conv2D_5/kernel/m
?
/Adam/Lane_Conv2D_5/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Lane_Conv2D_5/kernel/m*&
_output_shapes
:@@*
dtype0
?
Adam/Lane_Conv2D_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@**
shared_nameAdam/Lane_Conv2D_5/bias/m
?
-Adam/Lane_Conv2D_5/bias/m/Read/ReadVariableOpReadVariableOpAdam/Lane_Conv2D_5/bias/m*
_output_shapes
:@*
dtype0
?
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??d*$
shared_nameAdam/dense/kernel/m
}
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m* 
_output_shapes
:
??d*
dtype0
z
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*"
shared_nameAdam/dense/bias/m
s
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes
:d*
dtype0
?
Adam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??d*&
shared_nameAdam/dense_1/kernel/m
?
)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m* 
_output_shapes
:
??d*
dtype0
~
Adam/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*$
shared_nameAdam/dense_1/bias/m
w
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_output_shapes
:d*
dtype0
?
Adam/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?d*&
shared_nameAdam/dense_2/kernel/m
?
)Adam/dense_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/m*
_output_shapes
:	?d*
dtype0
~
Adam/dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*$
shared_nameAdam/dense_2/bias/m
w
'Adam/dense_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/m*
_output_shapes
:d*
dtype0
?
Adam/dense_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d2*&
shared_nameAdam/dense_3/kernel/m

)Adam/dense_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/m*
_output_shapes

:d2*
dtype0
~
Adam/dense_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*$
shared_nameAdam/dense_3/bias/m
w
'Adam/dense_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/m*
_output_shapes
:2*
dtype0
?
Adam/dense_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2
*&
shared_nameAdam/dense_4/kernel/m

)Adam/dense_4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_4/kernel/m*
_output_shapes

:2
*
dtype0
~
Adam/dense_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense_4/bias/m
w
'Adam/dense_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_4/bias/m*
_output_shapes
:
*
dtype0
?
Adam/steering_out/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*+
shared_nameAdam/steering_out/kernel/m
?
.Adam/steering_out/kernel/m/Read/ReadVariableOpReadVariableOpAdam/steering_out/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/steering_out/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/steering_out/bias/m
?
,Adam/steering_out/bias/m/Read/ReadVariableOpReadVariableOpAdam/steering_out/bias/m*
_output_shapes
:*
dtype0
?
Adam/throttle_out/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*+
shared_nameAdam/throttle_out/kernel/m
?
.Adam/throttle_out/kernel/m/Read/ReadVariableOpReadVariableOpAdam/throttle_out/kernel/m*
_output_shapes

:
*
dtype0
?
Adam/throttle_out/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/throttle_out/bias/m
?
,Adam/throttle_out/bias/m/Read/ReadVariableOpReadVariableOpAdam/throttle_out/bias/m*
_output_shapes
:*
dtype0
?
Adam/Natural_Conv2D_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/Natural_Conv2D_1/kernel/v
?
2Adam/Natural_Conv2D_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Natural_Conv2D_1/kernel/v*&
_output_shapes
:*
dtype0
?
Adam/Natural_Conv2D_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_nameAdam/Natural_Conv2D_1/bias/v
?
0Adam/Natural_Conv2D_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/Natural_Conv2D_1/bias/v*
_output_shapes
:*
dtype0
?
Adam/Lane_Conv2D_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_nameAdam/Lane_Conv2D_1/kernel/v
?
/Adam/Lane_Conv2D_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Lane_Conv2D_1/kernel/v*&
_output_shapes
:*
dtype0
?
Adam/Lane_Conv2D_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameAdam/Lane_Conv2D_1/bias/v
?
-Adam/Lane_Conv2D_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/Lane_Conv2D_1/bias/v*
_output_shapes
:*
dtype0
?
Adam/Natural_Conv2D_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name Adam/Natural_Conv2D_2/kernel/v
?
2Adam/Natural_Conv2D_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Natural_Conv2D_2/kernel/v*&
_output_shapes
: *
dtype0
?
Adam/Natural_Conv2D_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_nameAdam/Natural_Conv2D_2/bias/v
?
0Adam/Natural_Conv2D_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/Natural_Conv2D_2/bias/v*
_output_shapes
: *
dtype0
?
Adam/Lane_Conv2D_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_nameAdam/Lane_Conv2D_2/kernel/v
?
/Adam/Lane_Conv2D_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Lane_Conv2D_2/kernel/v*&
_output_shapes
: *
dtype0
?
Adam/Lane_Conv2D_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_nameAdam/Lane_Conv2D_2/bias/v
?
-Adam/Lane_Conv2D_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/Lane_Conv2D_2/bias/v*
_output_shapes
: *
dtype0
?
Adam/Natural_Conv2D_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*/
shared_name Adam/Natural_Conv2D_3/kernel/v
?
2Adam/Natural_Conv2D_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Natural_Conv2D_3/kernel/v*&
_output_shapes
: @*
dtype0
?
Adam/Natural_Conv2D_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_nameAdam/Natural_Conv2D_3/bias/v
?
0Adam/Natural_Conv2D_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/Natural_Conv2D_3/bias/v*
_output_shapes
:@*
dtype0
?
Adam/Lane_Conv2D_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*,
shared_nameAdam/Lane_Conv2D_3/kernel/v
?
/Adam/Lane_Conv2D_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Lane_Conv2D_3/kernel/v*&
_output_shapes
: @*
dtype0
?
Adam/Lane_Conv2D_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@**
shared_nameAdam/Lane_Conv2D_3/bias/v
?
-Adam/Lane_Conv2D_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/Lane_Conv2D_3/bias/v*
_output_shapes
:@*
dtype0
?
Adam/Natural_Conv2D_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*/
shared_name Adam/Natural_Conv2D_4/kernel/v
?
2Adam/Natural_Conv2D_4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Natural_Conv2D_4/kernel/v*&
_output_shapes
:@@*
dtype0
?
Adam/Natural_Conv2D_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_nameAdam/Natural_Conv2D_4/bias/v
?
0Adam/Natural_Conv2D_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/Natural_Conv2D_4/bias/v*
_output_shapes
:@*
dtype0
?
Adam/Lane_Conv2D_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*,
shared_nameAdam/Lane_Conv2D_4/kernel/v
?
/Adam/Lane_Conv2D_4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Lane_Conv2D_4/kernel/v*&
_output_shapes
:@@*
dtype0
?
Adam/Lane_Conv2D_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@**
shared_nameAdam/Lane_Conv2D_4/bias/v
?
-Adam/Lane_Conv2D_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/Lane_Conv2D_4/bias/v*
_output_shapes
:@*
dtype0
?
Adam/Natural_Conv2D_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*/
shared_name Adam/Natural_Conv2D_5/kernel/v
?
2Adam/Natural_Conv2D_5/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Natural_Conv2D_5/kernel/v*&
_output_shapes
:@@*
dtype0
?
Adam/Natural_Conv2D_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_nameAdam/Natural_Conv2D_5/bias/v
?
0Adam/Natural_Conv2D_5/bias/v/Read/ReadVariableOpReadVariableOpAdam/Natural_Conv2D_5/bias/v*
_output_shapes
:@*
dtype0
?
Adam/Lane_Conv2D_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*,
shared_nameAdam/Lane_Conv2D_5/kernel/v
?
/Adam/Lane_Conv2D_5/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Lane_Conv2D_5/kernel/v*&
_output_shapes
:@@*
dtype0
?
Adam/Lane_Conv2D_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@**
shared_nameAdam/Lane_Conv2D_5/bias/v
?
-Adam/Lane_Conv2D_5/bias/v/Read/ReadVariableOpReadVariableOpAdam/Lane_Conv2D_5/bias/v*
_output_shapes
:@*
dtype0
?
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??d*$
shared_nameAdam/dense/kernel/v
}
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v* 
_output_shapes
:
??d*
dtype0
z
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*"
shared_nameAdam/dense/bias/v
s
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes
:d*
dtype0
?
Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??d*&
shared_nameAdam/dense_1/kernel/v
?
)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v* 
_output_shapes
:
??d*
dtype0
~
Adam/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*$
shared_nameAdam/dense_1/bias/v
w
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_output_shapes
:d*
dtype0
?
Adam/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?d*&
shared_nameAdam/dense_2/kernel/v
?
)Adam/dense_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/v*
_output_shapes
:	?d*
dtype0
~
Adam/dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*$
shared_nameAdam/dense_2/bias/v
w
'Adam/dense_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/v*
_output_shapes
:d*
dtype0
?
Adam/dense_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d2*&
shared_nameAdam/dense_3/kernel/v

)Adam/dense_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/v*
_output_shapes

:d2*
dtype0
~
Adam/dense_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*$
shared_nameAdam/dense_3/bias/v
w
'Adam/dense_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/v*
_output_shapes
:2*
dtype0
?
Adam/dense_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2
*&
shared_nameAdam/dense_4/kernel/v

)Adam/dense_4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_4/kernel/v*
_output_shapes

:2
*
dtype0
~
Adam/dense_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense_4/bias/v
w
'Adam/dense_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_4/bias/v*
_output_shapes
:
*
dtype0
?
Adam/steering_out/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*+
shared_nameAdam/steering_out/kernel/v
?
.Adam/steering_out/kernel/v/Read/ReadVariableOpReadVariableOpAdam/steering_out/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/steering_out/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/steering_out/bias/v
?
,Adam/steering_out/bias/v/Read/ReadVariableOpReadVariableOpAdam/steering_out/bias/v*
_output_shapes
:*
dtype0
?
Adam/throttle_out/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*+
shared_nameAdam/throttle_out/kernel/v
?
.Adam/throttle_out/kernel/v/Read/ReadVariableOpReadVariableOpAdam/throttle_out/kernel/v*
_output_shapes

:
*
dtype0
?
Adam/throttle_out/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/throttle_out/bias/v
?
,Adam/throttle_out/bias/v/Read/ReadVariableOpReadVariableOpAdam/throttle_out/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
??
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*??
value??B?? B??
?
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
	layer_with_weights-6
	layer-8

layer_with_weights-7

layer-9
layer_with_weights-8
layer-10
layer_with_weights-9
layer-11
layer-12
layer-13
layer_with_weights-10
layer-14
layer_with_weights-11
layer-15
layer-16
layer_with_weights-12
layer-17
layer_with_weights-13
layer-18
layer_with_weights-14
layer-19
layer_with_weights-15
layer-20
layer_with_weights-16
layer-21
	optimizer
loss
regularization_losses
	variables
trainable_variables
	keras_api

signatures
 
 
h

kernel
bias
 regularization_losses
!	variables
"trainable_variables
#	keras_api
h

$kernel
%bias
&regularization_losses
'	variables
(trainable_variables
)	keras_api
h

*kernel
+bias
,regularization_losses
-	variables
.trainable_variables
/	keras_api
h

0kernel
1bias
2regularization_losses
3	variables
4trainable_variables
5	keras_api
h

6kernel
7bias
8regularization_losses
9	variables
:trainable_variables
;	keras_api
h

<kernel
=bias
>regularization_losses
?	variables
@trainable_variables
A	keras_api
h

Bkernel
Cbias
Dregularization_losses
E	variables
Ftrainable_variables
G	keras_api
h

Hkernel
Ibias
Jregularization_losses
K	variables
Ltrainable_variables
M	keras_api
h

Nkernel
Obias
Pregularization_losses
Q	variables
Rtrainable_variables
S	keras_api
h

Tkernel
Ubias
Vregularization_losses
W	variables
Xtrainable_variables
Y	keras_api
R
Zregularization_losses
[	variables
\trainable_variables
]	keras_api
R
^regularization_losses
_	variables
`trainable_variables
a	keras_api
h

bkernel
cbias
dregularization_losses
e	variables
ftrainable_variables
g	keras_api
h

hkernel
ibias
jregularization_losses
k	variables
ltrainable_variables
m	keras_api
R
nregularization_losses
o	variables
ptrainable_variables
q	keras_api
h

rkernel
sbias
tregularization_losses
u	variables
vtrainable_variables
w	keras_api
h

xkernel
ybias
zregularization_losses
{	variables
|trainable_variables
}	keras_api
l

~kernel
bias
?regularization_losses
?	variables
?trainable_variables
?	keras_api
n
?kernel
	?bias
?regularization_losses
?	variables
?trainable_variables
?	keras_api
n
?kernel
	?bias
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?
	?iter
?beta_1
?beta_2

?decay
?learning_ratem?m?$m?%m?*m?+m?0m?1m?6m?7m?<m?=m?Bm?Cm?Hm?Im?Nm?Om?Tm?Um?bm?cm?hm?im?rm?sm?xm?ym?~m?m?	?m?	?m?	?m?	?m?v?v?$v?%v?*v?+v?0v?1v?6v?7v?<v?=v?Bv?Cv?Hv?Iv?Nv?Ov?Tv?Uv?bv?cv?hv?iv?rv?sv?xv?yv?~v?v?	?v?	?v?	?v?	?v?
 
 
?
0
1
$2
%3
*4
+5
06
17
68
79
<10
=11
B12
C13
H14
I15
N16
O17
T18
U19
b20
c21
h22
i23
r24
s25
x26
y27
~28
29
?30
?31
?32
?33
?
0
1
$2
%3
*4
+5
06
17
68
79
<10
=11
B12
C13
H14
I15
N16
O17
T18
U19
b20
c21
h22
i23
r24
s25
x26
y27
~28
29
?30
?31
?32
?33
?
?layers
?layer_metrics
?metrics
 ?layer_regularization_losses
regularization_losses
	variables
trainable_variables
?non_trainable_variables
 
ca
VARIABLE_VALUENatural_Conv2D_1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUENatural_Conv2D_1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
?
?layers
?layer_metrics
?metrics
 ?layer_regularization_losses
 regularization_losses
!	variables
"trainable_variables
?non_trainable_variables
`^
VARIABLE_VALUELane_Conv2D_1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
\Z
VARIABLE_VALUELane_Conv2D_1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

$0
%1

$0
%1
?
?layers
?layer_metrics
?metrics
 ?layer_regularization_losses
&regularization_losses
'	variables
(trainable_variables
?non_trainable_variables
ca
VARIABLE_VALUENatural_Conv2D_2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUENatural_Conv2D_2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

*0
+1

*0
+1
?
?layers
?layer_metrics
?metrics
 ?layer_regularization_losses
,regularization_losses
-	variables
.trainable_variables
?non_trainable_variables
`^
VARIABLE_VALUELane_Conv2D_2/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
\Z
VARIABLE_VALUELane_Conv2D_2/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

00
11

00
11
?
?layers
?layer_metrics
?metrics
 ?layer_regularization_losses
2regularization_losses
3	variables
4trainable_variables
?non_trainable_variables
ca
VARIABLE_VALUENatural_Conv2D_3/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUENatural_Conv2D_3/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

60
71

60
71
?
?layers
?layer_metrics
?metrics
 ?layer_regularization_losses
8regularization_losses
9	variables
:trainable_variables
?non_trainable_variables
`^
VARIABLE_VALUELane_Conv2D_3/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
\Z
VARIABLE_VALUELane_Conv2D_3/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
 

<0
=1

<0
=1
?
?layers
?layer_metrics
?metrics
 ?layer_regularization_losses
>regularization_losses
?	variables
@trainable_variables
?non_trainable_variables
ca
VARIABLE_VALUENatural_Conv2D_4/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUENatural_Conv2D_4/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
 

B0
C1

B0
C1
?
?layers
?layer_metrics
?metrics
 ?layer_regularization_losses
Dregularization_losses
E	variables
Ftrainable_variables
?non_trainable_variables
`^
VARIABLE_VALUELane_Conv2D_4/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
\Z
VARIABLE_VALUELane_Conv2D_4/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE
 

H0
I1

H0
I1
?
?layers
?layer_metrics
?metrics
 ?layer_regularization_losses
Jregularization_losses
K	variables
Ltrainable_variables
?non_trainable_variables
ca
VARIABLE_VALUENatural_Conv2D_5/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUENatural_Conv2D_5/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE
 

N0
O1

N0
O1
?
?layers
?layer_metrics
?metrics
 ?layer_regularization_losses
Pregularization_losses
Q	variables
Rtrainable_variables
?non_trainable_variables
`^
VARIABLE_VALUELane_Conv2D_5/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE
\Z
VARIABLE_VALUELane_Conv2D_5/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE
 

T0
U1

T0
U1
?
?layers
?layer_metrics
?metrics
 ?layer_regularization_losses
Vregularization_losses
W	variables
Xtrainable_variables
?non_trainable_variables
 
 
 
?
?layers
?layer_metrics
?metrics
 ?layer_regularization_losses
Zregularization_losses
[	variables
\trainable_variables
?non_trainable_variables
 
 
 
?
?layers
?layer_metrics
?metrics
 ?layer_regularization_losses
^regularization_losses
_	variables
`trainable_variables
?non_trainable_variables
YW
VARIABLE_VALUEdense/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUE
dense/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE
 

b0
c1

b0
c1
?
?layers
?layer_metrics
?metrics
 ?layer_regularization_losses
dregularization_losses
e	variables
ftrainable_variables
?non_trainable_variables
[Y
VARIABLE_VALUEdense_1/kernel7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_1/bias5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUE
 

h0
i1

h0
i1
?
?layers
?layer_metrics
?metrics
 ?layer_regularization_losses
jregularization_losses
k	variables
ltrainable_variables
?non_trainable_variables
 
 
 
?
?layers
?layer_metrics
?metrics
 ?layer_regularization_losses
nregularization_losses
o	variables
ptrainable_variables
?non_trainable_variables
[Y
VARIABLE_VALUEdense_2/kernel7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_2/bias5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUE
 

r0
s1

r0
s1
?
?layers
?layer_metrics
?metrics
 ?layer_regularization_losses
tregularization_losses
u	variables
vtrainable_variables
?non_trainable_variables
[Y
VARIABLE_VALUEdense_3/kernel7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_3/bias5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUE
 

x0
y1

x0
y1
?
?layers
?layer_metrics
?metrics
 ?layer_regularization_losses
zregularization_losses
{	variables
|trainable_variables
?non_trainable_variables
[Y
VARIABLE_VALUEdense_4/kernel7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_4/bias5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUE
 

~0
1

~0
1
?
?layers
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?	variables
?trainable_variables
?non_trainable_variables
`^
VARIABLE_VALUEsteering_out/kernel7layer_with_weights-15/kernel/.ATTRIBUTES/VARIABLE_VALUE
\Z
VARIABLE_VALUEsteering_out/bias5layer_with_weights-15/bias/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?0
?1
?
?layers
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?	variables
?trainable_variables
?non_trainable_variables
`^
VARIABLE_VALUEthrottle_out/kernel7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUE
\Z
VARIABLE_VALUEthrottle_out/bias5layer_with_weights-16/bias/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?0
?1
?
?layers
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?	variables
?trainable_variables
?non_trainable_variables
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
?
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
 

?0
?1
?2
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

?total

?count
?	variables
?	keras_api
8

?total

?count
?	variables
?	keras_api
8

?total

?count
?	variables
?	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_24keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_24keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
??
VARIABLE_VALUEAdam/Natural_Conv2D_1/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/Natural_Conv2D_1/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/Lane_Conv2D_1/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/Lane_Conv2D_1/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/Natural_Conv2D_2/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/Natural_Conv2D_2/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/Lane_Conv2D_2/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/Lane_Conv2D_2/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/Natural_Conv2D_3/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/Natural_Conv2D_3/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/Lane_Conv2D_3/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/Lane_Conv2D_3/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/Natural_Conv2D_4/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/Natural_Conv2D_4/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/Lane_Conv2D_4/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/Lane_Conv2D_4/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/Natural_Conv2D_5/kernel/mRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/Natural_Conv2D_5/bias/mPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/Lane_Conv2D_5/kernel/mRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/Lane_Conv2D_5/bias/mPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/dense/kernel/mSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dense/bias/mQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_1/kernel/mSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_1/bias/mQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_2/kernel/mSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_2/bias/mQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_3/kernel/mSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_3/bias/mQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_4/kernel/mSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_4/bias/mQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/steering_out/kernel/mSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/steering_out/bias/mQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/throttle_out/kernel/mSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/throttle_out/bias/mQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/Natural_Conv2D_1/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/Natural_Conv2D_1/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/Lane_Conv2D_1/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/Lane_Conv2D_1/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/Natural_Conv2D_2/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/Natural_Conv2D_2/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/Lane_Conv2D_2/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/Lane_Conv2D_2/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/Natural_Conv2D_3/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/Natural_Conv2D_3/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/Lane_Conv2D_3/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/Lane_Conv2D_3/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/Natural_Conv2D_4/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/Natural_Conv2D_4/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/Lane_Conv2D_4/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/Lane_Conv2D_4/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/Natural_Conv2D_5/kernel/vRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/Natural_Conv2D_5/bias/vPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/Lane_Conv2D_5/kernel/vRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/Lane_Conv2D_5/bias/vPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/dense/kernel/vSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dense/bias/vQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_1/kernel/vSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_1/bias/vQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_2/kernel/vSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_2/bias/vQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_3/kernel/vSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_3/bias/vQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_4/kernel/vSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_4/bias/vQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/steering_out/kernel/vSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/steering_out/bias/vQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/throttle_out/kernel/vSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/throttle_out/bias/vQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_input_1Placeholder*1
_output_shapes
:???????????*
dtype0*&
shape:???????????
?
serving_default_input_2Placeholder*1
_output_shapes
:???????????*
dtype0*&
shape:???????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1serving_default_input_2Lane_Conv2D_1/kernelLane_Conv2D_1/biasNatural_Conv2D_1/kernelNatural_Conv2D_1/biasLane_Conv2D_2/kernelLane_Conv2D_2/biasNatural_Conv2D_2/kernelNatural_Conv2D_2/biasLane_Conv2D_3/kernelLane_Conv2D_3/biasNatural_Conv2D_3/kernelNatural_Conv2D_3/biasLane_Conv2D_4/kernelLane_Conv2D_4/biasNatural_Conv2D_4/kernelNatural_Conv2D_4/biasLane_Conv2D_5/kernelLane_Conv2D_5/biasNatural_Conv2D_5/kernelNatural_Conv2D_5/biasdense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/biasdense_3/kerneldense_3/biasdense_4/kerneldense_4/biasthrottle_out/kernelthrottle_out/biassteering_out/kernelsteering_out/bias*/
Tin(
&2$*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????:?????????*D
_read_only_resource_inputs&
$"	
 !"#*0
config_proto 

CPU

GPU2*0J 8? *,
f'R%
#__inference_signature_wrapper_17554
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?)
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename+Natural_Conv2D_1/kernel/Read/ReadVariableOp)Natural_Conv2D_1/bias/Read/ReadVariableOp(Lane_Conv2D_1/kernel/Read/ReadVariableOp&Lane_Conv2D_1/bias/Read/ReadVariableOp+Natural_Conv2D_2/kernel/Read/ReadVariableOp)Natural_Conv2D_2/bias/Read/ReadVariableOp(Lane_Conv2D_2/kernel/Read/ReadVariableOp&Lane_Conv2D_2/bias/Read/ReadVariableOp+Natural_Conv2D_3/kernel/Read/ReadVariableOp)Natural_Conv2D_3/bias/Read/ReadVariableOp(Lane_Conv2D_3/kernel/Read/ReadVariableOp&Lane_Conv2D_3/bias/Read/ReadVariableOp+Natural_Conv2D_4/kernel/Read/ReadVariableOp)Natural_Conv2D_4/bias/Read/ReadVariableOp(Lane_Conv2D_4/kernel/Read/ReadVariableOp&Lane_Conv2D_4/bias/Read/ReadVariableOp+Natural_Conv2D_5/kernel/Read/ReadVariableOp)Natural_Conv2D_5/bias/Read/ReadVariableOp(Lane_Conv2D_5/kernel/Read/ReadVariableOp&Lane_Conv2D_5/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOp"dense_3/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOp"dense_4/kernel/Read/ReadVariableOp dense_4/bias/Read/ReadVariableOp'steering_out/kernel/Read/ReadVariableOp%steering_out/bias/Read/ReadVariableOp'throttle_out/kernel/Read/ReadVariableOp%throttle_out/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOp2Adam/Natural_Conv2D_1/kernel/m/Read/ReadVariableOp0Adam/Natural_Conv2D_1/bias/m/Read/ReadVariableOp/Adam/Lane_Conv2D_1/kernel/m/Read/ReadVariableOp-Adam/Lane_Conv2D_1/bias/m/Read/ReadVariableOp2Adam/Natural_Conv2D_2/kernel/m/Read/ReadVariableOp0Adam/Natural_Conv2D_2/bias/m/Read/ReadVariableOp/Adam/Lane_Conv2D_2/kernel/m/Read/ReadVariableOp-Adam/Lane_Conv2D_2/bias/m/Read/ReadVariableOp2Adam/Natural_Conv2D_3/kernel/m/Read/ReadVariableOp0Adam/Natural_Conv2D_3/bias/m/Read/ReadVariableOp/Adam/Lane_Conv2D_3/kernel/m/Read/ReadVariableOp-Adam/Lane_Conv2D_3/bias/m/Read/ReadVariableOp2Adam/Natural_Conv2D_4/kernel/m/Read/ReadVariableOp0Adam/Natural_Conv2D_4/bias/m/Read/ReadVariableOp/Adam/Lane_Conv2D_4/kernel/m/Read/ReadVariableOp-Adam/Lane_Conv2D_4/bias/m/Read/ReadVariableOp2Adam/Natural_Conv2D_5/kernel/m/Read/ReadVariableOp0Adam/Natural_Conv2D_5/bias/m/Read/ReadVariableOp/Adam/Lane_Conv2D_5/kernel/m/Read/ReadVariableOp-Adam/Lane_Conv2D_5/bias/m/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOp)Adam/dense_2/kernel/m/Read/ReadVariableOp'Adam/dense_2/bias/m/Read/ReadVariableOp)Adam/dense_3/kernel/m/Read/ReadVariableOp'Adam/dense_3/bias/m/Read/ReadVariableOp)Adam/dense_4/kernel/m/Read/ReadVariableOp'Adam/dense_4/bias/m/Read/ReadVariableOp.Adam/steering_out/kernel/m/Read/ReadVariableOp,Adam/steering_out/bias/m/Read/ReadVariableOp.Adam/throttle_out/kernel/m/Read/ReadVariableOp,Adam/throttle_out/bias/m/Read/ReadVariableOp2Adam/Natural_Conv2D_1/kernel/v/Read/ReadVariableOp0Adam/Natural_Conv2D_1/bias/v/Read/ReadVariableOp/Adam/Lane_Conv2D_1/kernel/v/Read/ReadVariableOp-Adam/Lane_Conv2D_1/bias/v/Read/ReadVariableOp2Adam/Natural_Conv2D_2/kernel/v/Read/ReadVariableOp0Adam/Natural_Conv2D_2/bias/v/Read/ReadVariableOp/Adam/Lane_Conv2D_2/kernel/v/Read/ReadVariableOp-Adam/Lane_Conv2D_2/bias/v/Read/ReadVariableOp2Adam/Natural_Conv2D_3/kernel/v/Read/ReadVariableOp0Adam/Natural_Conv2D_3/bias/v/Read/ReadVariableOp/Adam/Lane_Conv2D_3/kernel/v/Read/ReadVariableOp-Adam/Lane_Conv2D_3/bias/v/Read/ReadVariableOp2Adam/Natural_Conv2D_4/kernel/v/Read/ReadVariableOp0Adam/Natural_Conv2D_4/bias/v/Read/ReadVariableOp/Adam/Lane_Conv2D_4/kernel/v/Read/ReadVariableOp-Adam/Lane_Conv2D_4/bias/v/Read/ReadVariableOp2Adam/Natural_Conv2D_5/kernel/v/Read/ReadVariableOp0Adam/Natural_Conv2D_5/bias/v/Read/ReadVariableOp/Adam/Lane_Conv2D_5/kernel/v/Read/ReadVariableOp-Adam/Lane_Conv2D_5/bias/v/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOp)Adam/dense_2/kernel/v/Read/ReadVariableOp'Adam/dense_2/bias/v/Read/ReadVariableOp)Adam/dense_3/kernel/v/Read/ReadVariableOp'Adam/dense_3/bias/v/Read/ReadVariableOp)Adam/dense_4/kernel/v/Read/ReadVariableOp'Adam/dense_4/bias/v/Read/ReadVariableOp.Adam/steering_out/kernel/v/Read/ReadVariableOp,Adam/steering_out/bias/v/Read/ReadVariableOp.Adam/throttle_out/kernel/v/Read/ReadVariableOp,Adam/throttle_out/bias/v/Read/ReadVariableOpConst*~
Tinw
u2s	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *'
f"R 
__inference__traced_save_18695
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameNatural_Conv2D_1/kernelNatural_Conv2D_1/biasLane_Conv2D_1/kernelLane_Conv2D_1/biasNatural_Conv2D_2/kernelNatural_Conv2D_2/biasLane_Conv2D_2/kernelLane_Conv2D_2/biasNatural_Conv2D_3/kernelNatural_Conv2D_3/biasLane_Conv2D_3/kernelLane_Conv2D_3/biasNatural_Conv2D_4/kernelNatural_Conv2D_4/biasLane_Conv2D_4/kernelLane_Conv2D_4/biasNatural_Conv2D_5/kernelNatural_Conv2D_5/biasLane_Conv2D_5/kernelLane_Conv2D_5/biasdense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/biasdense_3/kerneldense_3/biasdense_4/kerneldense_4/biassteering_out/kernelsteering_out/biasthrottle_out/kernelthrottle_out/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1total_2count_2Adam/Natural_Conv2D_1/kernel/mAdam/Natural_Conv2D_1/bias/mAdam/Lane_Conv2D_1/kernel/mAdam/Lane_Conv2D_1/bias/mAdam/Natural_Conv2D_2/kernel/mAdam/Natural_Conv2D_2/bias/mAdam/Lane_Conv2D_2/kernel/mAdam/Lane_Conv2D_2/bias/mAdam/Natural_Conv2D_3/kernel/mAdam/Natural_Conv2D_3/bias/mAdam/Lane_Conv2D_3/kernel/mAdam/Lane_Conv2D_3/bias/mAdam/Natural_Conv2D_4/kernel/mAdam/Natural_Conv2D_4/bias/mAdam/Lane_Conv2D_4/kernel/mAdam/Lane_Conv2D_4/bias/mAdam/Natural_Conv2D_5/kernel/mAdam/Natural_Conv2D_5/bias/mAdam/Lane_Conv2D_5/kernel/mAdam/Lane_Conv2D_5/bias/mAdam/dense/kernel/mAdam/dense/bias/mAdam/dense_1/kernel/mAdam/dense_1/bias/mAdam/dense_2/kernel/mAdam/dense_2/bias/mAdam/dense_3/kernel/mAdam/dense_3/bias/mAdam/dense_4/kernel/mAdam/dense_4/bias/mAdam/steering_out/kernel/mAdam/steering_out/bias/mAdam/throttle_out/kernel/mAdam/throttle_out/bias/mAdam/Natural_Conv2D_1/kernel/vAdam/Natural_Conv2D_1/bias/vAdam/Lane_Conv2D_1/kernel/vAdam/Lane_Conv2D_1/bias/vAdam/Natural_Conv2D_2/kernel/vAdam/Natural_Conv2D_2/bias/vAdam/Lane_Conv2D_2/kernel/vAdam/Lane_Conv2D_2/bias/vAdam/Natural_Conv2D_3/kernel/vAdam/Natural_Conv2D_3/bias/vAdam/Lane_Conv2D_3/kernel/vAdam/Lane_Conv2D_3/bias/vAdam/Natural_Conv2D_4/kernel/vAdam/Natural_Conv2D_4/bias/vAdam/Lane_Conv2D_4/kernel/vAdam/Lane_Conv2D_4/bias/vAdam/Natural_Conv2D_5/kernel/vAdam/Natural_Conv2D_5/bias/vAdam/Lane_Conv2D_5/kernel/vAdam/Lane_Conv2D_5/bias/vAdam/dense/kernel/vAdam/dense/bias/vAdam/dense_1/kernel/vAdam/dense_1/bias/vAdam/dense_2/kernel/vAdam/dense_2/bias/vAdam/dense_3/kernel/vAdam/dense_3/bias/vAdam/dense_4/kernel/vAdam/dense_4/bias/vAdam/steering_out/kernel/vAdam/steering_out/bias/vAdam/throttle_out/kernel/vAdam/throttle_out/bias/v*}
Tinv
t2r*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__traced_restore_19044??
?
?
K__inference_Natural_Conv2D_3_layer_call_and_return_conditional_losses_16482

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????%@*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????%@2	
BiasAdd]
EluEluBiasAdd:output:0*
T0*/
_output_shapes
:?????????%@2
Elu?
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????%@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????&M : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????&M 
 
_user_specified_nameinputs
?
?
H__inference_Lane_Conv2D_5_layer_call_and_return_conditional_losses_18151

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????!@*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????!@2	
BiasAdd]
EluEluBiasAdd:output:0*
T0*/
_output_shapes
:?????????!@2
Elu?
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????!@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????#@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????#@
 
_user_specified_nameinputs
?
G
+__inference_Flattened_y_layer_call_fn_18182

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_Flattened_y_layer_call_and_return_conditional_losses_165622
PartitionedCalln
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????!@:W S
/
_output_shapes
:?????????!@
 
_user_specified_nameinputs
?

?
B__inference_dense_3_layer_call_and_return_conditional_losses_18264

inputs0
matmul_readvariableop_resource:d2-
biasadd_readvariableop_resource:2
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d2*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22	
BiasAddU
EluEluBiasAdd:output:0*
T0*'
_output_shapes
:?????????22
Elu?
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
-__inference_Lane_Conv2D_2_layer_call_fn_18040

inputs!
unknown: 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????&M *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_Lane_Conv2D_2_layer_call_and_return_conditional_losses_164312
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????&M 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????P?: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????P?
 
_user_specified_nameinputs
?
?
K__inference_Natural_Conv2D_5_layer_call_and_return_conditional_losses_16550

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????!@*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????!@2	
BiasAdd]
EluEluBiasAdd:output:0*
T0*/
_output_shapes
:?????????!@2
Elu?
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????!@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????#@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????#@
 
_user_specified_nameinputs
?
?
H__inference_Lane_Conv2D_4_layer_call_and_return_conditional_losses_16499

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????#@*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????#@2	
BiasAdd]
EluEluBiasAdd:output:0*
T0*/
_output_shapes
:?????????#@2
Elu?
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????#@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????%@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????%@
 
_user_specified_nameinputs
?
?
H__inference_Lane_Conv2D_3_layer_call_and_return_conditional_losses_16465

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????%@*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????%@2	
BiasAdd]
EluEluBiasAdd:output:0*
T0*/
_output_shapes
:?????????%@2
Elu?
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????%@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????&M : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????&M 
 
_user_specified_nameinputs
?

?
B__inference_dense_4_layer_call_and_return_conditional_losses_16658

inputs0
matmul_readvariableop_resource:2
-
biasadd_readvariableop_resource:

identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2	
BiasAddU
EluEluBiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
Elu?
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
H__inference_Lane_Conv2D_2_layer_call_and_return_conditional_losses_18031

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????&M *
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????&M 2	
BiasAdd]
EluEluBiasAdd:output:0*
T0*/
_output_shapes
:?????????&M 2
Elu?
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????&M 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????P?: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????P?
 
_user_specified_nameinputs
?
p
F__inference_concatenate_layer_call_and_return_conditional_losses_16611

inputs
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis?
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*(
_output_shapes
:??????????2
concatd
IdentityIdentityconcat:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????d:?????????d:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
-__inference_Lane_Conv2D_5_layer_call_fn_18160

inputs!
unknown:@@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????!@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_Lane_Conv2D_5_layer_call_and_return_conditional_losses_165332
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????!@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????#@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????#@
 
_user_specified_nameinputs
?
?
'__inference_dense_4_layer_call_fn_18293

inputs
unknown:2

	unknown_0:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_166582
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????2: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
b
F__inference_Flattened_x_layer_call_and_return_conditional_losses_16570

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????@k  2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:???????????2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????!@:W S
/
_output_shapes
:?????????!@
 
_user_specified_nameinputs
?
?
K__inference_Natural_Conv2D_1_layer_call_and_return_conditional_losses_16414

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????P?*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????P?2	
BiasAdd^
EluEluBiasAdd:output:0*
T0*0
_output_shapes
:?????????P?2
Elu?
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:?????????P?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?	
?
G__inference_steering_out_layer_call_and_return_conditional_losses_16690

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs
??
?
 __inference__wrapped_model_16377
input_1
input_2L
2model_lane_conv2d_1_conv2d_readvariableop_resource:A
3model_lane_conv2d_1_biasadd_readvariableop_resource:O
5model_natural_conv2d_1_conv2d_readvariableop_resource:D
6model_natural_conv2d_1_biasadd_readvariableop_resource:L
2model_lane_conv2d_2_conv2d_readvariableop_resource: A
3model_lane_conv2d_2_biasadd_readvariableop_resource: O
5model_natural_conv2d_2_conv2d_readvariableop_resource: D
6model_natural_conv2d_2_biasadd_readvariableop_resource: L
2model_lane_conv2d_3_conv2d_readvariableop_resource: @A
3model_lane_conv2d_3_biasadd_readvariableop_resource:@O
5model_natural_conv2d_3_conv2d_readvariableop_resource: @D
6model_natural_conv2d_3_biasadd_readvariableop_resource:@L
2model_lane_conv2d_4_conv2d_readvariableop_resource:@@A
3model_lane_conv2d_4_biasadd_readvariableop_resource:@O
5model_natural_conv2d_4_conv2d_readvariableop_resource:@@D
6model_natural_conv2d_4_biasadd_readvariableop_resource:@L
2model_lane_conv2d_5_conv2d_readvariableop_resource:@@A
3model_lane_conv2d_5_biasadd_readvariableop_resource:@O
5model_natural_conv2d_5_conv2d_readvariableop_resource:@@D
6model_natural_conv2d_5_biasadd_readvariableop_resource:@>
*model_dense_matmul_readvariableop_resource:
??d9
+model_dense_biasadd_readvariableop_resource:d@
,model_dense_1_matmul_readvariableop_resource:
??d;
-model_dense_1_biasadd_readvariableop_resource:d?
,model_dense_2_matmul_readvariableop_resource:	?d;
-model_dense_2_biasadd_readvariableop_resource:d>
,model_dense_3_matmul_readvariableop_resource:d2;
-model_dense_3_biasadd_readvariableop_resource:2>
,model_dense_4_matmul_readvariableop_resource:2
;
-model_dense_4_biasadd_readvariableop_resource:
C
1model_throttle_out_matmul_readvariableop_resource:
@
2model_throttle_out_biasadd_readvariableop_resource:C
1model_steering_out_matmul_readvariableop_resource:
@
2model_steering_out_biasadd_readvariableop_resource:
identity

identity_1??*model/Lane_Conv2D_1/BiasAdd/ReadVariableOp?)model/Lane_Conv2D_1/Conv2D/ReadVariableOp?*model/Lane_Conv2D_2/BiasAdd/ReadVariableOp?)model/Lane_Conv2D_2/Conv2D/ReadVariableOp?*model/Lane_Conv2D_3/BiasAdd/ReadVariableOp?)model/Lane_Conv2D_3/Conv2D/ReadVariableOp?*model/Lane_Conv2D_4/BiasAdd/ReadVariableOp?)model/Lane_Conv2D_4/Conv2D/ReadVariableOp?*model/Lane_Conv2D_5/BiasAdd/ReadVariableOp?)model/Lane_Conv2D_5/Conv2D/ReadVariableOp?-model/Natural_Conv2D_1/BiasAdd/ReadVariableOp?,model/Natural_Conv2D_1/Conv2D/ReadVariableOp?-model/Natural_Conv2D_2/BiasAdd/ReadVariableOp?,model/Natural_Conv2D_2/Conv2D/ReadVariableOp?-model/Natural_Conv2D_3/BiasAdd/ReadVariableOp?,model/Natural_Conv2D_3/Conv2D/ReadVariableOp?-model/Natural_Conv2D_4/BiasAdd/ReadVariableOp?,model/Natural_Conv2D_4/Conv2D/ReadVariableOp?-model/Natural_Conv2D_5/BiasAdd/ReadVariableOp?,model/Natural_Conv2D_5/Conv2D/ReadVariableOp?"model/dense/BiasAdd/ReadVariableOp?!model/dense/MatMul/ReadVariableOp?$model/dense_1/BiasAdd/ReadVariableOp?#model/dense_1/MatMul/ReadVariableOp?$model/dense_2/BiasAdd/ReadVariableOp?#model/dense_2/MatMul/ReadVariableOp?$model/dense_3/BiasAdd/ReadVariableOp?#model/dense_3/MatMul/ReadVariableOp?$model/dense_4/BiasAdd/ReadVariableOp?#model/dense_4/MatMul/ReadVariableOp?)model/steering_out/BiasAdd/ReadVariableOp?(model/steering_out/MatMul/ReadVariableOp?)model/throttle_out/BiasAdd/ReadVariableOp?(model/throttle_out/MatMul/ReadVariableOp?
)model/Lane_Conv2D_1/Conv2D/ReadVariableOpReadVariableOp2model_lane_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02+
)model/Lane_Conv2D_1/Conv2D/ReadVariableOp?
model/Lane_Conv2D_1/Conv2DConv2Dinput_21model/Lane_Conv2D_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????P?*
paddingVALID*
strides
2
model/Lane_Conv2D_1/Conv2D?
*model/Lane_Conv2D_1/BiasAdd/ReadVariableOpReadVariableOp3model_lane_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model/Lane_Conv2D_1/BiasAdd/ReadVariableOp?
model/Lane_Conv2D_1/BiasAddBiasAdd#model/Lane_Conv2D_1/Conv2D:output:02model/Lane_Conv2D_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????P?2
model/Lane_Conv2D_1/BiasAdd?
model/Lane_Conv2D_1/EluElu$model/Lane_Conv2D_1/BiasAdd:output:0*
T0*0
_output_shapes
:?????????P?2
model/Lane_Conv2D_1/Elu?
,model/Natural_Conv2D_1/Conv2D/ReadVariableOpReadVariableOp5model_natural_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02.
,model/Natural_Conv2D_1/Conv2D/ReadVariableOp?
model/Natural_Conv2D_1/Conv2DConv2Dinput_14model/Natural_Conv2D_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????P?*
paddingVALID*
strides
2
model/Natural_Conv2D_1/Conv2D?
-model/Natural_Conv2D_1/BiasAdd/ReadVariableOpReadVariableOp6model_natural_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02/
-model/Natural_Conv2D_1/BiasAdd/ReadVariableOp?
model/Natural_Conv2D_1/BiasAddBiasAdd&model/Natural_Conv2D_1/Conv2D:output:05model/Natural_Conv2D_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????P?2 
model/Natural_Conv2D_1/BiasAdd?
model/Natural_Conv2D_1/EluElu'model/Natural_Conv2D_1/BiasAdd:output:0*
T0*0
_output_shapes
:?????????P?2
model/Natural_Conv2D_1/Elu?
)model/Lane_Conv2D_2/Conv2D/ReadVariableOpReadVariableOp2model_lane_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02+
)model/Lane_Conv2D_2/Conv2D/ReadVariableOp?
model/Lane_Conv2D_2/Conv2DConv2D%model/Lane_Conv2D_1/Elu:activations:01model/Lane_Conv2D_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????&M *
paddingVALID*
strides
2
model/Lane_Conv2D_2/Conv2D?
*model/Lane_Conv2D_2/BiasAdd/ReadVariableOpReadVariableOp3model_lane_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02,
*model/Lane_Conv2D_2/BiasAdd/ReadVariableOp?
model/Lane_Conv2D_2/BiasAddBiasAdd#model/Lane_Conv2D_2/Conv2D:output:02model/Lane_Conv2D_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????&M 2
model/Lane_Conv2D_2/BiasAdd?
model/Lane_Conv2D_2/EluElu$model/Lane_Conv2D_2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????&M 2
model/Lane_Conv2D_2/Elu?
,model/Natural_Conv2D_2/Conv2D/ReadVariableOpReadVariableOp5model_natural_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02.
,model/Natural_Conv2D_2/Conv2D/ReadVariableOp?
model/Natural_Conv2D_2/Conv2DConv2D(model/Natural_Conv2D_1/Elu:activations:04model/Natural_Conv2D_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????&M *
paddingVALID*
strides
2
model/Natural_Conv2D_2/Conv2D?
-model/Natural_Conv2D_2/BiasAdd/ReadVariableOpReadVariableOp6model_natural_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02/
-model/Natural_Conv2D_2/BiasAdd/ReadVariableOp?
model/Natural_Conv2D_2/BiasAddBiasAdd&model/Natural_Conv2D_2/Conv2D:output:05model/Natural_Conv2D_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????&M 2 
model/Natural_Conv2D_2/BiasAdd?
model/Natural_Conv2D_2/EluElu'model/Natural_Conv2D_2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????&M 2
model/Natural_Conv2D_2/Elu?
)model/Lane_Conv2D_3/Conv2D/ReadVariableOpReadVariableOp2model_lane_conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02+
)model/Lane_Conv2D_3/Conv2D/ReadVariableOp?
model/Lane_Conv2D_3/Conv2DConv2D%model/Lane_Conv2D_2/Elu:activations:01model/Lane_Conv2D_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????%@*
paddingVALID*
strides
2
model/Lane_Conv2D_3/Conv2D?
*model/Lane_Conv2D_3/BiasAdd/ReadVariableOpReadVariableOp3model_lane_conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02,
*model/Lane_Conv2D_3/BiasAdd/ReadVariableOp?
model/Lane_Conv2D_3/BiasAddBiasAdd#model/Lane_Conv2D_3/Conv2D:output:02model/Lane_Conv2D_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????%@2
model/Lane_Conv2D_3/BiasAdd?
model/Lane_Conv2D_3/EluElu$model/Lane_Conv2D_3/BiasAdd:output:0*
T0*/
_output_shapes
:?????????%@2
model/Lane_Conv2D_3/Elu?
,model/Natural_Conv2D_3/Conv2D/ReadVariableOpReadVariableOp5model_natural_conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02.
,model/Natural_Conv2D_3/Conv2D/ReadVariableOp?
model/Natural_Conv2D_3/Conv2DConv2D(model/Natural_Conv2D_2/Elu:activations:04model/Natural_Conv2D_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????%@*
paddingVALID*
strides
2
model/Natural_Conv2D_3/Conv2D?
-model/Natural_Conv2D_3/BiasAdd/ReadVariableOpReadVariableOp6model_natural_conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-model/Natural_Conv2D_3/BiasAdd/ReadVariableOp?
model/Natural_Conv2D_3/BiasAddBiasAdd&model/Natural_Conv2D_3/Conv2D:output:05model/Natural_Conv2D_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????%@2 
model/Natural_Conv2D_3/BiasAdd?
model/Natural_Conv2D_3/EluElu'model/Natural_Conv2D_3/BiasAdd:output:0*
T0*/
_output_shapes
:?????????%@2
model/Natural_Conv2D_3/Elu?
)model/Lane_Conv2D_4/Conv2D/ReadVariableOpReadVariableOp2model_lane_conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02+
)model/Lane_Conv2D_4/Conv2D/ReadVariableOp?
model/Lane_Conv2D_4/Conv2DConv2D%model/Lane_Conv2D_3/Elu:activations:01model/Lane_Conv2D_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????#@*
paddingVALID*
strides
2
model/Lane_Conv2D_4/Conv2D?
*model/Lane_Conv2D_4/BiasAdd/ReadVariableOpReadVariableOp3model_lane_conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02,
*model/Lane_Conv2D_4/BiasAdd/ReadVariableOp?
model/Lane_Conv2D_4/BiasAddBiasAdd#model/Lane_Conv2D_4/Conv2D:output:02model/Lane_Conv2D_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????#@2
model/Lane_Conv2D_4/BiasAdd?
model/Lane_Conv2D_4/EluElu$model/Lane_Conv2D_4/BiasAdd:output:0*
T0*/
_output_shapes
:?????????#@2
model/Lane_Conv2D_4/Elu?
,model/Natural_Conv2D_4/Conv2D/ReadVariableOpReadVariableOp5model_natural_conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02.
,model/Natural_Conv2D_4/Conv2D/ReadVariableOp?
model/Natural_Conv2D_4/Conv2DConv2D(model/Natural_Conv2D_3/Elu:activations:04model/Natural_Conv2D_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????#@*
paddingVALID*
strides
2
model/Natural_Conv2D_4/Conv2D?
-model/Natural_Conv2D_4/BiasAdd/ReadVariableOpReadVariableOp6model_natural_conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-model/Natural_Conv2D_4/BiasAdd/ReadVariableOp?
model/Natural_Conv2D_4/BiasAddBiasAdd&model/Natural_Conv2D_4/Conv2D:output:05model/Natural_Conv2D_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????#@2 
model/Natural_Conv2D_4/BiasAdd?
model/Natural_Conv2D_4/EluElu'model/Natural_Conv2D_4/BiasAdd:output:0*
T0*/
_output_shapes
:?????????#@2
model/Natural_Conv2D_4/Elu?
)model/Lane_Conv2D_5/Conv2D/ReadVariableOpReadVariableOp2model_lane_conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02+
)model/Lane_Conv2D_5/Conv2D/ReadVariableOp?
model/Lane_Conv2D_5/Conv2DConv2D%model/Lane_Conv2D_4/Elu:activations:01model/Lane_Conv2D_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????!@*
paddingVALID*
strides
2
model/Lane_Conv2D_5/Conv2D?
*model/Lane_Conv2D_5/BiasAdd/ReadVariableOpReadVariableOp3model_lane_conv2d_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02,
*model/Lane_Conv2D_5/BiasAdd/ReadVariableOp?
model/Lane_Conv2D_5/BiasAddBiasAdd#model/Lane_Conv2D_5/Conv2D:output:02model/Lane_Conv2D_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????!@2
model/Lane_Conv2D_5/BiasAdd?
model/Lane_Conv2D_5/EluElu$model/Lane_Conv2D_5/BiasAdd:output:0*
T0*/
_output_shapes
:?????????!@2
model/Lane_Conv2D_5/Elu?
,model/Natural_Conv2D_5/Conv2D/ReadVariableOpReadVariableOp5model_natural_conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02.
,model/Natural_Conv2D_5/Conv2D/ReadVariableOp?
model/Natural_Conv2D_5/Conv2DConv2D(model/Natural_Conv2D_4/Elu:activations:04model/Natural_Conv2D_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????!@*
paddingVALID*
strides
2
model/Natural_Conv2D_5/Conv2D?
-model/Natural_Conv2D_5/BiasAdd/ReadVariableOpReadVariableOp6model_natural_conv2d_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02/
-model/Natural_Conv2D_5/BiasAdd/ReadVariableOp?
model/Natural_Conv2D_5/BiasAddBiasAdd&model/Natural_Conv2D_5/Conv2D:output:05model/Natural_Conv2D_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????!@2 
model/Natural_Conv2D_5/BiasAdd?
model/Natural_Conv2D_5/EluElu'model/Natural_Conv2D_5/BiasAdd:output:0*
T0*/
_output_shapes
:?????????!@2
model/Natural_Conv2D_5/Elu?
model/Flattened_y/ConstConst*
_output_shapes
:*
dtype0*
valueB"????@k  2
model/Flattened_y/Const?
model/Flattened_y/ReshapeReshape%model/Lane_Conv2D_5/Elu:activations:0 model/Flattened_y/Const:output:0*
T0*)
_output_shapes
:???????????2
model/Flattened_y/Reshape?
model/Flattened_x/ConstConst*
_output_shapes
:*
dtype0*
valueB"????@k  2
model/Flattened_x/Const?
model/Flattened_x/ReshapeReshape(model/Natural_Conv2D_5/Elu:activations:0 model/Flattened_x/Const:output:0*
T0*)
_output_shapes
:???????????2
model/Flattened_x/Reshape?
!model/dense/MatMul/ReadVariableOpReadVariableOp*model_dense_matmul_readvariableop_resource* 
_output_shapes
:
??d*
dtype02#
!model/dense/MatMul/ReadVariableOp?
model/dense/MatMulMatMul"model/Flattened_x/Reshape:output:0)model/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
model/dense/MatMul?
"model/dense/BiasAdd/ReadVariableOpReadVariableOp+model_dense_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02$
"model/dense/BiasAdd/ReadVariableOp?
model/dense/BiasAddBiasAddmodel/dense/MatMul:product:0*model/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
model/dense/BiasAdd?
#model/dense_1/MatMul/ReadVariableOpReadVariableOp,model_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??d*
dtype02%
#model/dense_1/MatMul/ReadVariableOp?
model/dense_1/MatMulMatMul"model/Flattened_y/Reshape:output:0+model/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
model/dense_1/MatMul?
$model/dense_1/BiasAdd/ReadVariableOpReadVariableOp-model_dense_1_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02&
$model/dense_1/BiasAdd/ReadVariableOp?
model/dense_1/BiasAddBiasAddmodel/dense_1/MatMul:product:0,model/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
model/dense_1/BiasAdd?
model/concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
model/concatenate/concat/axis?
model/concatenate/concatConcatV2model/dense/BiasAdd:output:0model/dense_1/BiasAdd:output:0&model/concatenate/concat/axis:output:0*
N*
T0*(
_output_shapes
:??????????2
model/concatenate/concat?
#model/dense_2/MatMul/ReadVariableOpReadVariableOp,model_dense_2_matmul_readvariableop_resource*
_output_shapes
:	?d*
dtype02%
#model/dense_2/MatMul/ReadVariableOp?
model/dense_2/MatMulMatMul!model/concatenate/concat:output:0+model/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
model/dense_2/MatMul?
$model/dense_2/BiasAdd/ReadVariableOpReadVariableOp-model_dense_2_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02&
$model/dense_2/BiasAdd/ReadVariableOp?
model/dense_2/BiasAddBiasAddmodel/dense_2/MatMul:product:0,model/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
model/dense_2/BiasAdd
model/dense_2/EluElumodel/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
model/dense_2/Elu?
#model/dense_3/MatMul/ReadVariableOpReadVariableOp,model_dense_3_matmul_readvariableop_resource*
_output_shapes

:d2*
dtype02%
#model/dense_3/MatMul/ReadVariableOp?
model/dense_3/MatMulMatMulmodel/dense_2/Elu:activations:0+model/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
model/dense_3/MatMul?
$model/dense_3/BiasAdd/ReadVariableOpReadVariableOp-model_dense_3_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02&
$model/dense_3/BiasAdd/ReadVariableOp?
model/dense_3/BiasAddBiasAddmodel/dense_3/MatMul:product:0,model/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
model/dense_3/BiasAdd
model/dense_3/EluElumodel/dense_3/BiasAdd:output:0*
T0*'
_output_shapes
:?????????22
model/dense_3/Elu?
#model/dense_4/MatMul/ReadVariableOpReadVariableOp,model_dense_4_matmul_readvariableop_resource*
_output_shapes

:2
*
dtype02%
#model/dense_4/MatMul/ReadVariableOp?
model/dense_4/MatMulMatMulmodel/dense_3/Elu:activations:0+model/dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
model/dense_4/MatMul?
$model/dense_4/BiasAdd/ReadVariableOpReadVariableOp-model_dense_4_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02&
$model/dense_4/BiasAdd/ReadVariableOp?
model/dense_4/BiasAddBiasAddmodel/dense_4/MatMul:product:0,model/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
model/dense_4/BiasAdd
model/dense_4/EluElumodel/dense_4/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
model/dense_4/Elu?
(model/throttle_out/MatMul/ReadVariableOpReadVariableOp1model_throttle_out_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02*
(model/throttle_out/MatMul/ReadVariableOp?
model/throttle_out/MatMulMatMulmodel/dense_4/Elu:activations:00model/throttle_out/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model/throttle_out/MatMul?
)model/throttle_out/BiasAdd/ReadVariableOpReadVariableOp2model_throttle_out_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)model/throttle_out/BiasAdd/ReadVariableOp?
model/throttle_out/BiasAddBiasAdd#model/throttle_out/MatMul:product:01model/throttle_out/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model/throttle_out/BiasAdd?
(model/steering_out/MatMul/ReadVariableOpReadVariableOp1model_steering_out_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02*
(model/steering_out/MatMul/ReadVariableOp?
model/steering_out/MatMulMatMulmodel/dense_4/Elu:activations:00model/steering_out/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model/steering_out/MatMul?
)model/steering_out/BiasAdd/ReadVariableOpReadVariableOp2model_steering_out_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02+
)model/steering_out/BiasAdd/ReadVariableOp?
model/steering_out/BiasAddBiasAdd#model/steering_out/MatMul:product:01model/steering_out/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model/steering_out/BiasAdd?
IdentityIdentity#model/steering_out/BiasAdd:output:0+^model/Lane_Conv2D_1/BiasAdd/ReadVariableOp*^model/Lane_Conv2D_1/Conv2D/ReadVariableOp+^model/Lane_Conv2D_2/BiasAdd/ReadVariableOp*^model/Lane_Conv2D_2/Conv2D/ReadVariableOp+^model/Lane_Conv2D_3/BiasAdd/ReadVariableOp*^model/Lane_Conv2D_3/Conv2D/ReadVariableOp+^model/Lane_Conv2D_4/BiasAdd/ReadVariableOp*^model/Lane_Conv2D_4/Conv2D/ReadVariableOp+^model/Lane_Conv2D_5/BiasAdd/ReadVariableOp*^model/Lane_Conv2D_5/Conv2D/ReadVariableOp.^model/Natural_Conv2D_1/BiasAdd/ReadVariableOp-^model/Natural_Conv2D_1/Conv2D/ReadVariableOp.^model/Natural_Conv2D_2/BiasAdd/ReadVariableOp-^model/Natural_Conv2D_2/Conv2D/ReadVariableOp.^model/Natural_Conv2D_3/BiasAdd/ReadVariableOp-^model/Natural_Conv2D_3/Conv2D/ReadVariableOp.^model/Natural_Conv2D_4/BiasAdd/ReadVariableOp-^model/Natural_Conv2D_4/Conv2D/ReadVariableOp.^model/Natural_Conv2D_5/BiasAdd/ReadVariableOp-^model/Natural_Conv2D_5/Conv2D/ReadVariableOp#^model/dense/BiasAdd/ReadVariableOp"^model/dense/MatMul/ReadVariableOp%^model/dense_1/BiasAdd/ReadVariableOp$^model/dense_1/MatMul/ReadVariableOp%^model/dense_2/BiasAdd/ReadVariableOp$^model/dense_2/MatMul/ReadVariableOp%^model/dense_3/BiasAdd/ReadVariableOp$^model/dense_3/MatMul/ReadVariableOp%^model/dense_4/BiasAdd/ReadVariableOp$^model/dense_4/MatMul/ReadVariableOp*^model/steering_out/BiasAdd/ReadVariableOp)^model/steering_out/MatMul/ReadVariableOp*^model/throttle_out/BiasAdd/ReadVariableOp)^model/throttle_out/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity#model/throttle_out/BiasAdd:output:0+^model/Lane_Conv2D_1/BiasAdd/ReadVariableOp*^model/Lane_Conv2D_1/Conv2D/ReadVariableOp+^model/Lane_Conv2D_2/BiasAdd/ReadVariableOp*^model/Lane_Conv2D_2/Conv2D/ReadVariableOp+^model/Lane_Conv2D_3/BiasAdd/ReadVariableOp*^model/Lane_Conv2D_3/Conv2D/ReadVariableOp+^model/Lane_Conv2D_4/BiasAdd/ReadVariableOp*^model/Lane_Conv2D_4/Conv2D/ReadVariableOp+^model/Lane_Conv2D_5/BiasAdd/ReadVariableOp*^model/Lane_Conv2D_5/Conv2D/ReadVariableOp.^model/Natural_Conv2D_1/BiasAdd/ReadVariableOp-^model/Natural_Conv2D_1/Conv2D/ReadVariableOp.^model/Natural_Conv2D_2/BiasAdd/ReadVariableOp-^model/Natural_Conv2D_2/Conv2D/ReadVariableOp.^model/Natural_Conv2D_3/BiasAdd/ReadVariableOp-^model/Natural_Conv2D_3/Conv2D/ReadVariableOp.^model/Natural_Conv2D_4/BiasAdd/ReadVariableOp-^model/Natural_Conv2D_4/Conv2D/ReadVariableOp.^model/Natural_Conv2D_5/BiasAdd/ReadVariableOp-^model/Natural_Conv2D_5/Conv2D/ReadVariableOp#^model/dense/BiasAdd/ReadVariableOp"^model/dense/MatMul/ReadVariableOp%^model/dense_1/BiasAdd/ReadVariableOp$^model/dense_1/MatMul/ReadVariableOp%^model/dense_2/BiasAdd/ReadVariableOp$^model/dense_2/MatMul/ReadVariableOp%^model/dense_3/BiasAdd/ReadVariableOp$^model/dense_3/MatMul/ReadVariableOp%^model/dense_4/BiasAdd/ReadVariableOp$^model/dense_4/MatMul/ReadVariableOp*^model/steering_out/BiasAdd/ReadVariableOp)^model/steering_out/MatMul/ReadVariableOp*^model/throttle_out/BiasAdd/ReadVariableOp)^model/throttle_out/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
~:???????????:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2X
*model/Lane_Conv2D_1/BiasAdd/ReadVariableOp*model/Lane_Conv2D_1/BiasAdd/ReadVariableOp2V
)model/Lane_Conv2D_1/Conv2D/ReadVariableOp)model/Lane_Conv2D_1/Conv2D/ReadVariableOp2X
*model/Lane_Conv2D_2/BiasAdd/ReadVariableOp*model/Lane_Conv2D_2/BiasAdd/ReadVariableOp2V
)model/Lane_Conv2D_2/Conv2D/ReadVariableOp)model/Lane_Conv2D_2/Conv2D/ReadVariableOp2X
*model/Lane_Conv2D_3/BiasAdd/ReadVariableOp*model/Lane_Conv2D_3/BiasAdd/ReadVariableOp2V
)model/Lane_Conv2D_3/Conv2D/ReadVariableOp)model/Lane_Conv2D_3/Conv2D/ReadVariableOp2X
*model/Lane_Conv2D_4/BiasAdd/ReadVariableOp*model/Lane_Conv2D_4/BiasAdd/ReadVariableOp2V
)model/Lane_Conv2D_4/Conv2D/ReadVariableOp)model/Lane_Conv2D_4/Conv2D/ReadVariableOp2X
*model/Lane_Conv2D_5/BiasAdd/ReadVariableOp*model/Lane_Conv2D_5/BiasAdd/ReadVariableOp2V
)model/Lane_Conv2D_5/Conv2D/ReadVariableOp)model/Lane_Conv2D_5/Conv2D/ReadVariableOp2^
-model/Natural_Conv2D_1/BiasAdd/ReadVariableOp-model/Natural_Conv2D_1/BiasAdd/ReadVariableOp2\
,model/Natural_Conv2D_1/Conv2D/ReadVariableOp,model/Natural_Conv2D_1/Conv2D/ReadVariableOp2^
-model/Natural_Conv2D_2/BiasAdd/ReadVariableOp-model/Natural_Conv2D_2/BiasAdd/ReadVariableOp2\
,model/Natural_Conv2D_2/Conv2D/ReadVariableOp,model/Natural_Conv2D_2/Conv2D/ReadVariableOp2^
-model/Natural_Conv2D_3/BiasAdd/ReadVariableOp-model/Natural_Conv2D_3/BiasAdd/ReadVariableOp2\
,model/Natural_Conv2D_3/Conv2D/ReadVariableOp,model/Natural_Conv2D_3/Conv2D/ReadVariableOp2^
-model/Natural_Conv2D_4/BiasAdd/ReadVariableOp-model/Natural_Conv2D_4/BiasAdd/ReadVariableOp2\
,model/Natural_Conv2D_4/Conv2D/ReadVariableOp,model/Natural_Conv2D_4/Conv2D/ReadVariableOp2^
-model/Natural_Conv2D_5/BiasAdd/ReadVariableOp-model/Natural_Conv2D_5/BiasAdd/ReadVariableOp2\
,model/Natural_Conv2D_5/Conv2D/ReadVariableOp,model/Natural_Conv2D_5/Conv2D/ReadVariableOp2H
"model/dense/BiasAdd/ReadVariableOp"model/dense/BiasAdd/ReadVariableOp2F
!model/dense/MatMul/ReadVariableOp!model/dense/MatMul/ReadVariableOp2L
$model/dense_1/BiasAdd/ReadVariableOp$model/dense_1/BiasAdd/ReadVariableOp2J
#model/dense_1/MatMul/ReadVariableOp#model/dense_1/MatMul/ReadVariableOp2L
$model/dense_2/BiasAdd/ReadVariableOp$model/dense_2/BiasAdd/ReadVariableOp2J
#model/dense_2/MatMul/ReadVariableOp#model/dense_2/MatMul/ReadVariableOp2L
$model/dense_3/BiasAdd/ReadVariableOp$model/dense_3/BiasAdd/ReadVariableOp2J
#model/dense_3/MatMul/ReadVariableOp#model/dense_3/MatMul/ReadVariableOp2L
$model/dense_4/BiasAdd/ReadVariableOp$model/dense_4/BiasAdd/ReadVariableOp2J
#model/dense_4/MatMul/ReadVariableOp#model/dense_4/MatMul/ReadVariableOp2V
)model/steering_out/BiasAdd/ReadVariableOp)model/steering_out/BiasAdd/ReadVariableOp2T
(model/steering_out/MatMul/ReadVariableOp(model/steering_out/MatMul/ReadVariableOp2V
)model/throttle_out/BiasAdd/ReadVariableOp)model/throttle_out/BiasAdd/ReadVariableOp2T
(model/throttle_out/MatMul/ReadVariableOp(model/throttle_out/MatMul/ReadVariableOp:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_1:ZV
1
_output_shapes
:???????????
!
_user_specified_name	input_2
?
?
K__inference_Natural_Conv2D_1_layer_call_and_return_conditional_losses_17971

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????P?*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????P?2	
BiasAdd^
EluEluBiasAdd:output:0*
T0*0
_output_shapes
:?????????P?2
Elu?
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:?????????P?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
-__inference_Lane_Conv2D_4_layer_call_fn_18120

inputs!
unknown:@@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????#@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_Lane_Conv2D_4_layer_call_and_return_conditional_losses_164992
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????#@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????%@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????%@
 
_user_specified_nameinputs
?

?
B__inference_dense_3_layer_call_and_return_conditional_losses_16641

inputs0
matmul_readvariableop_resource:d2-
biasadd_readvariableop_resource:2
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d2*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22	
BiasAddU
EluEluBiasAdd:output:0*
T0*'
_output_shapes
:?????????22
Elu?
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
0__inference_Natural_Conv2D_1_layer_call_fn_17980

inputs!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????P?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_Natural_Conv2D_1_layer_call_and_return_conditional_losses_164142
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:?????????P?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
??
?0
__inference__traced_save_18695
file_prefix6
2savev2_natural_conv2d_1_kernel_read_readvariableop4
0savev2_natural_conv2d_1_bias_read_readvariableop3
/savev2_lane_conv2d_1_kernel_read_readvariableop1
-savev2_lane_conv2d_1_bias_read_readvariableop6
2savev2_natural_conv2d_2_kernel_read_readvariableop4
0savev2_natural_conv2d_2_bias_read_readvariableop3
/savev2_lane_conv2d_2_kernel_read_readvariableop1
-savev2_lane_conv2d_2_bias_read_readvariableop6
2savev2_natural_conv2d_3_kernel_read_readvariableop4
0savev2_natural_conv2d_3_bias_read_readvariableop3
/savev2_lane_conv2d_3_kernel_read_readvariableop1
-savev2_lane_conv2d_3_bias_read_readvariableop6
2savev2_natural_conv2d_4_kernel_read_readvariableop4
0savev2_natural_conv2d_4_bias_read_readvariableop3
/savev2_lane_conv2d_4_kernel_read_readvariableop1
-savev2_lane_conv2d_4_bias_read_readvariableop6
2savev2_natural_conv2d_5_kernel_read_readvariableop4
0savev2_natural_conv2d_5_bias_read_readvariableop3
/savev2_lane_conv2d_5_kernel_read_readvariableop1
-savev2_lane_conv2d_5_bias_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop-
)savev2_dense_3_kernel_read_readvariableop+
'savev2_dense_3_bias_read_readvariableop-
)savev2_dense_4_kernel_read_readvariableop+
'savev2_dense_4_bias_read_readvariableop2
.savev2_steering_out_kernel_read_readvariableop0
,savev2_steering_out_bias_read_readvariableop2
.savev2_throttle_out_kernel_read_readvariableop0
,savev2_throttle_out_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableop=
9savev2_adam_natural_conv2d_1_kernel_m_read_readvariableop;
7savev2_adam_natural_conv2d_1_bias_m_read_readvariableop:
6savev2_adam_lane_conv2d_1_kernel_m_read_readvariableop8
4savev2_adam_lane_conv2d_1_bias_m_read_readvariableop=
9savev2_adam_natural_conv2d_2_kernel_m_read_readvariableop;
7savev2_adam_natural_conv2d_2_bias_m_read_readvariableop:
6savev2_adam_lane_conv2d_2_kernel_m_read_readvariableop8
4savev2_adam_lane_conv2d_2_bias_m_read_readvariableop=
9savev2_adam_natural_conv2d_3_kernel_m_read_readvariableop;
7savev2_adam_natural_conv2d_3_bias_m_read_readvariableop:
6savev2_adam_lane_conv2d_3_kernel_m_read_readvariableop8
4savev2_adam_lane_conv2d_3_bias_m_read_readvariableop=
9savev2_adam_natural_conv2d_4_kernel_m_read_readvariableop;
7savev2_adam_natural_conv2d_4_bias_m_read_readvariableop:
6savev2_adam_lane_conv2d_4_kernel_m_read_readvariableop8
4savev2_adam_lane_conv2d_4_bias_m_read_readvariableop=
9savev2_adam_natural_conv2d_5_kernel_m_read_readvariableop;
7savev2_adam_natural_conv2d_5_bias_m_read_readvariableop:
6savev2_adam_lane_conv2d_5_kernel_m_read_readvariableop8
4savev2_adam_lane_conv2d_5_bias_m_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableop4
0savev2_adam_dense_2_kernel_m_read_readvariableop2
.savev2_adam_dense_2_bias_m_read_readvariableop4
0savev2_adam_dense_3_kernel_m_read_readvariableop2
.savev2_adam_dense_3_bias_m_read_readvariableop4
0savev2_adam_dense_4_kernel_m_read_readvariableop2
.savev2_adam_dense_4_bias_m_read_readvariableop9
5savev2_adam_steering_out_kernel_m_read_readvariableop7
3savev2_adam_steering_out_bias_m_read_readvariableop9
5savev2_adam_throttle_out_kernel_m_read_readvariableop7
3savev2_adam_throttle_out_bias_m_read_readvariableop=
9savev2_adam_natural_conv2d_1_kernel_v_read_readvariableop;
7savev2_adam_natural_conv2d_1_bias_v_read_readvariableop:
6savev2_adam_lane_conv2d_1_kernel_v_read_readvariableop8
4savev2_adam_lane_conv2d_1_bias_v_read_readvariableop=
9savev2_adam_natural_conv2d_2_kernel_v_read_readvariableop;
7savev2_adam_natural_conv2d_2_bias_v_read_readvariableop:
6savev2_adam_lane_conv2d_2_kernel_v_read_readvariableop8
4savev2_adam_lane_conv2d_2_bias_v_read_readvariableop=
9savev2_adam_natural_conv2d_3_kernel_v_read_readvariableop;
7savev2_adam_natural_conv2d_3_bias_v_read_readvariableop:
6savev2_adam_lane_conv2d_3_kernel_v_read_readvariableop8
4savev2_adam_lane_conv2d_3_bias_v_read_readvariableop=
9savev2_adam_natural_conv2d_4_kernel_v_read_readvariableop;
7savev2_adam_natural_conv2d_4_bias_v_read_readvariableop:
6savev2_adam_lane_conv2d_4_kernel_v_read_readvariableop8
4savev2_adam_lane_conv2d_4_bias_v_read_readvariableop=
9savev2_adam_natural_conv2d_5_kernel_v_read_readvariableop;
7savev2_adam_natural_conv2d_5_bias_v_read_readvariableop:
6savev2_adam_lane_conv2d_5_kernel_v_read_readvariableop8
4savev2_adam_lane_conv2d_5_bias_v_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableop4
0savev2_adam_dense_2_kernel_v_read_readvariableop2
.savev2_adam_dense_2_bias_v_read_readvariableop4
0savev2_adam_dense_3_kernel_v_read_readvariableop2
.savev2_adam_dense_3_bias_v_read_readvariableop4
0savev2_adam_dense_4_kernel_v_read_readvariableop2
.savev2_adam_dense_4_bias_v_read_readvariableop9
5savev2_adam_steering_out_kernel_v_read_readvariableop7
3savev2_adam_steering_out_bias_v_read_readvariableop9
5savev2_adam_throttle_out_kernel_v_read_readvariableop7
3savev2_adam_throttle_out_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?@
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:r*
dtype0*??
value??B??rB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-15/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-15/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-16/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:r*
dtype0*?
value?B?rB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?.
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:02savev2_natural_conv2d_1_kernel_read_readvariableop0savev2_natural_conv2d_1_bias_read_readvariableop/savev2_lane_conv2d_1_kernel_read_readvariableop-savev2_lane_conv2d_1_bias_read_readvariableop2savev2_natural_conv2d_2_kernel_read_readvariableop0savev2_natural_conv2d_2_bias_read_readvariableop/savev2_lane_conv2d_2_kernel_read_readvariableop-savev2_lane_conv2d_2_bias_read_readvariableop2savev2_natural_conv2d_3_kernel_read_readvariableop0savev2_natural_conv2d_3_bias_read_readvariableop/savev2_lane_conv2d_3_kernel_read_readvariableop-savev2_lane_conv2d_3_bias_read_readvariableop2savev2_natural_conv2d_4_kernel_read_readvariableop0savev2_natural_conv2d_4_bias_read_readvariableop/savev2_lane_conv2d_4_kernel_read_readvariableop-savev2_lane_conv2d_4_bias_read_readvariableop2savev2_natural_conv2d_5_kernel_read_readvariableop0savev2_natural_conv2d_5_bias_read_readvariableop/savev2_lane_conv2d_5_kernel_read_readvariableop-savev2_lane_conv2d_5_bias_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableop)savev2_dense_4_kernel_read_readvariableop'savev2_dense_4_bias_read_readvariableop.savev2_steering_out_kernel_read_readvariableop,savev2_steering_out_bias_read_readvariableop.savev2_throttle_out_kernel_read_readvariableop,savev2_throttle_out_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop9savev2_adam_natural_conv2d_1_kernel_m_read_readvariableop7savev2_adam_natural_conv2d_1_bias_m_read_readvariableop6savev2_adam_lane_conv2d_1_kernel_m_read_readvariableop4savev2_adam_lane_conv2d_1_bias_m_read_readvariableop9savev2_adam_natural_conv2d_2_kernel_m_read_readvariableop7savev2_adam_natural_conv2d_2_bias_m_read_readvariableop6savev2_adam_lane_conv2d_2_kernel_m_read_readvariableop4savev2_adam_lane_conv2d_2_bias_m_read_readvariableop9savev2_adam_natural_conv2d_3_kernel_m_read_readvariableop7savev2_adam_natural_conv2d_3_bias_m_read_readvariableop6savev2_adam_lane_conv2d_3_kernel_m_read_readvariableop4savev2_adam_lane_conv2d_3_bias_m_read_readvariableop9savev2_adam_natural_conv2d_4_kernel_m_read_readvariableop7savev2_adam_natural_conv2d_4_bias_m_read_readvariableop6savev2_adam_lane_conv2d_4_kernel_m_read_readvariableop4savev2_adam_lane_conv2d_4_bias_m_read_readvariableop9savev2_adam_natural_conv2d_5_kernel_m_read_readvariableop7savev2_adam_natural_conv2d_5_bias_m_read_readvariableop6savev2_adam_lane_conv2d_5_kernel_m_read_readvariableop4savev2_adam_lane_conv2d_5_bias_m_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableop0savev2_adam_dense_2_kernel_m_read_readvariableop.savev2_adam_dense_2_bias_m_read_readvariableop0savev2_adam_dense_3_kernel_m_read_readvariableop.savev2_adam_dense_3_bias_m_read_readvariableop0savev2_adam_dense_4_kernel_m_read_readvariableop.savev2_adam_dense_4_bias_m_read_readvariableop5savev2_adam_steering_out_kernel_m_read_readvariableop3savev2_adam_steering_out_bias_m_read_readvariableop5savev2_adam_throttle_out_kernel_m_read_readvariableop3savev2_adam_throttle_out_bias_m_read_readvariableop9savev2_adam_natural_conv2d_1_kernel_v_read_readvariableop7savev2_adam_natural_conv2d_1_bias_v_read_readvariableop6savev2_adam_lane_conv2d_1_kernel_v_read_readvariableop4savev2_adam_lane_conv2d_1_bias_v_read_readvariableop9savev2_adam_natural_conv2d_2_kernel_v_read_readvariableop7savev2_adam_natural_conv2d_2_bias_v_read_readvariableop6savev2_adam_lane_conv2d_2_kernel_v_read_readvariableop4savev2_adam_lane_conv2d_2_bias_v_read_readvariableop9savev2_adam_natural_conv2d_3_kernel_v_read_readvariableop7savev2_adam_natural_conv2d_3_bias_v_read_readvariableop6savev2_adam_lane_conv2d_3_kernel_v_read_readvariableop4savev2_adam_lane_conv2d_3_bias_v_read_readvariableop9savev2_adam_natural_conv2d_4_kernel_v_read_readvariableop7savev2_adam_natural_conv2d_4_bias_v_read_readvariableop6savev2_adam_lane_conv2d_4_kernel_v_read_readvariableop4savev2_adam_lane_conv2d_4_bias_v_read_readvariableop9savev2_adam_natural_conv2d_5_kernel_v_read_readvariableop7savev2_adam_natural_conv2d_5_bias_v_read_readvariableop6savev2_adam_lane_conv2d_5_kernel_v_read_readvariableop4savev2_adam_lane_conv2d_5_bias_v_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableop0savev2_adam_dense_2_kernel_v_read_readvariableop.savev2_adam_dense_2_bias_v_read_readvariableop0savev2_adam_dense_3_kernel_v_read_readvariableop.savev2_adam_dense_3_bias_v_read_readvariableop0savev2_adam_dense_4_kernel_v_read_readvariableop.savev2_adam_dense_4_bias_v_read_readvariableop5savev2_adam_steering_out_kernel_v_read_readvariableop3savev2_adam_steering_out_bias_v_read_readvariableop5savev2_adam_throttle_out_kernel_v_read_readvariableop3savev2_adam_throttle_out_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *?
dtypesv
t2r	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?
_input_shapes?
?: ::::: : : : : @:@: @:@:@@:@:@@:@:@@:@:@@:@:
??d:d:
??d:d:	?d:d:d2:2:2
:
:
::
:: : : : : : : : : : : ::::: : : : : @:@: @:@:@@:@:@@:@:@@:@:@@:@:
??d:d:
??d:d:	?d:d:d2:2:2
:
:
::
:::::: : : : : @:@: @:@:@@:@:@@:@:@@:@:@@:@:
??d:d:
??d:d:	?d:d:d2:2:2
:
:
::
:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
: :,	(
&
_output_shapes
: @: 


_output_shapes
:@:,(
&
_output_shapes
: @: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:&"
 
_output_shapes
:
??d: 

_output_shapes
:d:&"
 
_output_shapes
:
??d: 

_output_shapes
:d:%!

_output_shapes
:	?d: 

_output_shapes
:d:$ 

_output_shapes

:d2: 

_output_shapes
:2:$ 

_output_shapes

:2
: 

_output_shapes
:
:$ 

_output_shapes

:
:  

_output_shapes
::$! 

_output_shapes

:
: "

_output_shapes
::#

_output_shapes
: :$

_output_shapes
: :%

_output_shapes
: :&

_output_shapes
: :'

_output_shapes
: :(

_output_shapes
: :)

_output_shapes
: :*

_output_shapes
: :+

_output_shapes
: :,

_output_shapes
: :-

_output_shapes
: :,.(
&
_output_shapes
:: /

_output_shapes
::,0(
&
_output_shapes
:: 1

_output_shapes
::,2(
&
_output_shapes
: : 3

_output_shapes
: :,4(
&
_output_shapes
: : 5

_output_shapes
: :,6(
&
_output_shapes
: @: 7

_output_shapes
:@:,8(
&
_output_shapes
: @: 9

_output_shapes
:@:,:(
&
_output_shapes
:@@: ;

_output_shapes
:@:,<(
&
_output_shapes
:@@: =

_output_shapes
:@:,>(
&
_output_shapes
:@@: ?

_output_shapes
:@:,@(
&
_output_shapes
:@@: A

_output_shapes
:@:&B"
 
_output_shapes
:
??d: C

_output_shapes
:d:&D"
 
_output_shapes
:
??d: E

_output_shapes
:d:%F!

_output_shapes
:	?d: G

_output_shapes
:d:$H 

_output_shapes

:d2: I

_output_shapes
:2:$J 

_output_shapes

:2
: K

_output_shapes
:
:$L 

_output_shapes

:
: M

_output_shapes
::$N 

_output_shapes

:
: O

_output_shapes
::,P(
&
_output_shapes
:: Q

_output_shapes
::,R(
&
_output_shapes
:: S

_output_shapes
::,T(
&
_output_shapes
: : U

_output_shapes
: :,V(
&
_output_shapes
: : W

_output_shapes
: :,X(
&
_output_shapes
: @: Y

_output_shapes
:@:,Z(
&
_output_shapes
: @: [

_output_shapes
:@:,\(
&
_output_shapes
:@@: ]

_output_shapes
:@:,^(
&
_output_shapes
:@@: _

_output_shapes
:@:,`(
&
_output_shapes
:@@: a

_output_shapes
:@:,b(
&
_output_shapes
:@@: c

_output_shapes
:@:&d"
 
_output_shapes
:
??d: e

_output_shapes
:d:&f"
 
_output_shapes
:
??d: g

_output_shapes
:d:%h!

_output_shapes
:	?d: i

_output_shapes
:d:$j 

_output_shapes

:d2: k

_output_shapes
:2:$l 

_output_shapes

:2
: m

_output_shapes
:
:$n 

_output_shapes

:
: o

_output_shapes
::$p 

_output_shapes

:
: q

_output_shapes
::r

_output_shapes
: 
?
b
F__inference_Flattened_y_layer_call_and_return_conditional_losses_16562

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????@k  2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:???????????2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????!@:W S
/
_output_shapes
:?????????!@
 
_user_specified_nameinputs
?q
?
@__inference_model_layer_call_and_return_conditional_losses_17133

inputs
inputs_1-
lane_conv2d_1_17043:!
lane_conv2d_1_17045:0
natural_conv2d_1_17048:$
natural_conv2d_1_17050:-
lane_conv2d_2_17053: !
lane_conv2d_2_17055: 0
natural_conv2d_2_17058: $
natural_conv2d_2_17060: -
lane_conv2d_3_17063: @!
lane_conv2d_3_17065:@0
natural_conv2d_3_17068: @$
natural_conv2d_3_17070:@-
lane_conv2d_4_17073:@@!
lane_conv2d_4_17075:@0
natural_conv2d_4_17078:@@$
natural_conv2d_4_17080:@-
lane_conv2d_5_17083:@@!
lane_conv2d_5_17085:@0
natural_conv2d_5_17088:@@$
natural_conv2d_5_17090:@
dense_17095:
??d
dense_17097:d!
dense_1_17100:
??d
dense_1_17102:d 
dense_2_17106:	?d
dense_2_17108:d
dense_3_17111:d2
dense_3_17113:2
dense_4_17116:2

dense_4_17118:
$
throttle_out_17121:
 
throttle_out_17123:$
steering_out_17126:
 
steering_out_17128:
identity

identity_1??%Lane_Conv2D_1/StatefulPartitionedCall?%Lane_Conv2D_2/StatefulPartitionedCall?%Lane_Conv2D_3/StatefulPartitionedCall?%Lane_Conv2D_4/StatefulPartitionedCall?%Lane_Conv2D_5/StatefulPartitionedCall?(Natural_Conv2D_1/StatefulPartitionedCall?(Natural_Conv2D_2/StatefulPartitionedCall?(Natural_Conv2D_3/StatefulPartitionedCall?(Natural_Conv2D_4/StatefulPartitionedCall?(Natural_Conv2D_5/StatefulPartitionedCall?dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?dense_3/StatefulPartitionedCall?dense_4/StatefulPartitionedCall?$steering_out/StatefulPartitionedCall?$throttle_out/StatefulPartitionedCall?
%Lane_Conv2D_1/StatefulPartitionedCallStatefulPartitionedCallinputs_1lane_conv2d_1_17043lane_conv2d_1_17045*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????P?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_Lane_Conv2D_1_layer_call_and_return_conditional_losses_163972'
%Lane_Conv2D_1/StatefulPartitionedCall?
(Natural_Conv2D_1/StatefulPartitionedCallStatefulPartitionedCallinputsnatural_conv2d_1_17048natural_conv2d_1_17050*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????P?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_Natural_Conv2D_1_layer_call_and_return_conditional_losses_164142*
(Natural_Conv2D_1/StatefulPartitionedCall?
%Lane_Conv2D_2/StatefulPartitionedCallStatefulPartitionedCall.Lane_Conv2D_1/StatefulPartitionedCall:output:0lane_conv2d_2_17053lane_conv2d_2_17055*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????&M *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_Lane_Conv2D_2_layer_call_and_return_conditional_losses_164312'
%Lane_Conv2D_2/StatefulPartitionedCall?
(Natural_Conv2D_2/StatefulPartitionedCallStatefulPartitionedCall1Natural_Conv2D_1/StatefulPartitionedCall:output:0natural_conv2d_2_17058natural_conv2d_2_17060*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????&M *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_Natural_Conv2D_2_layer_call_and_return_conditional_losses_164482*
(Natural_Conv2D_2/StatefulPartitionedCall?
%Lane_Conv2D_3/StatefulPartitionedCallStatefulPartitionedCall.Lane_Conv2D_2/StatefulPartitionedCall:output:0lane_conv2d_3_17063lane_conv2d_3_17065*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????%@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_Lane_Conv2D_3_layer_call_and_return_conditional_losses_164652'
%Lane_Conv2D_3/StatefulPartitionedCall?
(Natural_Conv2D_3/StatefulPartitionedCallStatefulPartitionedCall1Natural_Conv2D_2/StatefulPartitionedCall:output:0natural_conv2d_3_17068natural_conv2d_3_17070*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????%@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_Natural_Conv2D_3_layer_call_and_return_conditional_losses_164822*
(Natural_Conv2D_3/StatefulPartitionedCall?
%Lane_Conv2D_4/StatefulPartitionedCallStatefulPartitionedCall.Lane_Conv2D_3/StatefulPartitionedCall:output:0lane_conv2d_4_17073lane_conv2d_4_17075*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????#@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_Lane_Conv2D_4_layer_call_and_return_conditional_losses_164992'
%Lane_Conv2D_4/StatefulPartitionedCall?
(Natural_Conv2D_4/StatefulPartitionedCallStatefulPartitionedCall1Natural_Conv2D_3/StatefulPartitionedCall:output:0natural_conv2d_4_17078natural_conv2d_4_17080*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????#@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_Natural_Conv2D_4_layer_call_and_return_conditional_losses_165162*
(Natural_Conv2D_4/StatefulPartitionedCall?
%Lane_Conv2D_5/StatefulPartitionedCallStatefulPartitionedCall.Lane_Conv2D_4/StatefulPartitionedCall:output:0lane_conv2d_5_17083lane_conv2d_5_17085*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????!@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_Lane_Conv2D_5_layer_call_and_return_conditional_losses_165332'
%Lane_Conv2D_5/StatefulPartitionedCall?
(Natural_Conv2D_5/StatefulPartitionedCallStatefulPartitionedCall1Natural_Conv2D_4/StatefulPartitionedCall:output:0natural_conv2d_5_17088natural_conv2d_5_17090*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????!@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_Natural_Conv2D_5_layer_call_and_return_conditional_losses_165502*
(Natural_Conv2D_5/StatefulPartitionedCall?
Flattened_y/PartitionedCallPartitionedCall.Lane_Conv2D_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_Flattened_y_layer_call_and_return_conditional_losses_165622
Flattened_y/PartitionedCall?
Flattened_x/PartitionedCallPartitionedCall1Natural_Conv2D_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_Flattened_x_layer_call_and_return_conditional_losses_165702
Flattened_x/PartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall$Flattened_x/PartitionedCall:output:0dense_17095dense_17097*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_165822
dense/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall$Flattened_y/PartitionedCall:output:0dense_1_17100dense_1_17102*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_165982!
dense_1/StatefulPartitionedCall?
concatenate/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_concatenate_layer_call_and_return_conditional_losses_166112
concatenate/PartitionedCall?
dense_2/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0dense_2_17106dense_2_17108*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_166242!
dense_2/StatefulPartitionedCall?
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_17111dense_3_17113*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_166412!
dense_3/StatefulPartitionedCall?
dense_4/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0dense_4_17116dense_4_17118*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_166582!
dense_4/StatefulPartitionedCall?
$throttle_out/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0throttle_out_17121throttle_out_17123*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_throttle_out_layer_call_and_return_conditional_losses_166742&
$throttle_out/StatefulPartitionedCall?
$steering_out/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0steering_out_17126steering_out_17128*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_steering_out_layer_call_and_return_conditional_losses_166902&
$steering_out/StatefulPartitionedCall?
IdentityIdentity-steering_out/StatefulPartitionedCall:output:0&^Lane_Conv2D_1/StatefulPartitionedCall&^Lane_Conv2D_2/StatefulPartitionedCall&^Lane_Conv2D_3/StatefulPartitionedCall&^Lane_Conv2D_4/StatefulPartitionedCall&^Lane_Conv2D_5/StatefulPartitionedCall)^Natural_Conv2D_1/StatefulPartitionedCall)^Natural_Conv2D_2/StatefulPartitionedCall)^Natural_Conv2D_3/StatefulPartitionedCall)^Natural_Conv2D_4/StatefulPartitionedCall)^Natural_Conv2D_5/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall%^steering_out/StatefulPartitionedCall%^throttle_out/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity-throttle_out/StatefulPartitionedCall:output:0&^Lane_Conv2D_1/StatefulPartitionedCall&^Lane_Conv2D_2/StatefulPartitionedCall&^Lane_Conv2D_3/StatefulPartitionedCall&^Lane_Conv2D_4/StatefulPartitionedCall&^Lane_Conv2D_5/StatefulPartitionedCall)^Natural_Conv2D_1/StatefulPartitionedCall)^Natural_Conv2D_2/StatefulPartitionedCall)^Natural_Conv2D_3/StatefulPartitionedCall)^Natural_Conv2D_4/StatefulPartitionedCall)^Natural_Conv2D_5/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall%^steering_out/StatefulPartitionedCall%^throttle_out/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
~:???????????:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2N
%Lane_Conv2D_1/StatefulPartitionedCall%Lane_Conv2D_1/StatefulPartitionedCall2N
%Lane_Conv2D_2/StatefulPartitionedCall%Lane_Conv2D_2/StatefulPartitionedCall2N
%Lane_Conv2D_3/StatefulPartitionedCall%Lane_Conv2D_3/StatefulPartitionedCall2N
%Lane_Conv2D_4/StatefulPartitionedCall%Lane_Conv2D_4/StatefulPartitionedCall2N
%Lane_Conv2D_5/StatefulPartitionedCall%Lane_Conv2D_5/StatefulPartitionedCall2T
(Natural_Conv2D_1/StatefulPartitionedCall(Natural_Conv2D_1/StatefulPartitionedCall2T
(Natural_Conv2D_2/StatefulPartitionedCall(Natural_Conv2D_2/StatefulPartitionedCall2T
(Natural_Conv2D_3/StatefulPartitionedCall(Natural_Conv2D_3/StatefulPartitionedCall2T
(Natural_Conv2D_4/StatefulPartitionedCall(Natural_Conv2D_4/StatefulPartitionedCall2T
(Natural_Conv2D_5/StatefulPartitionedCall(Natural_Conv2D_5/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2L
$steering_out/StatefulPartitionedCall$steering_out/StatefulPartitionedCall2L
$throttle_out/StatefulPartitionedCall$throttle_out/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs:YU
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
%__inference_model_layer_call_fn_16771
input_1
input_2!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3: 
	unknown_4: #
	unknown_5: 
	unknown_6: #
	unknown_7: @
	unknown_8:@#
	unknown_9: @

unknown_10:@$

unknown_11:@@

unknown_12:@$

unknown_13:@@

unknown_14:@$

unknown_15:@@

unknown_16:@$

unknown_17:@@

unknown_18:@

unknown_19:
??d

unknown_20:d

unknown_21:
??d

unknown_22:d

unknown_23:	?d

unknown_24:d

unknown_25:d2

unknown_26:2

unknown_27:2


unknown_28:


unknown_29:


unknown_30:

unknown_31:


unknown_32:
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32*/
Tin(
&2$*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????:?????????*D
_read_only_resource_inputs&
$"	
 !"#*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_166982
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
~:???????????:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_1:ZV
1
_output_shapes
:???????????
!
_user_specified_name	input_2
?

?
B__inference_dense_2_layer_call_and_return_conditional_losses_18244

inputs1
matmul_readvariableop_resource:	?d-
biasadd_readvariableop_resource:d
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?d*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2	
BiasAddU
EluEluBiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
Elu?
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
r
F__inference_concatenate_layer_call_and_return_conditional_losses_18227
inputs_0
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis?
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*(
_output_shapes
:??????????2
concatd
IdentityIdentityconcat:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????d:?????????d:Q M
'
_output_shapes
:?????????d
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????d
"
_user_specified_name
inputs/1
?
?
'__inference_dense_1_layer_call_fn_18220

inputs
unknown:
??d
	unknown_0:d
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_165982
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
'__inference_dense_2_layer_call_fn_18253

inputs
unknown:	?d
	unknown_0:d
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_166242
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
G__inference_throttle_out_layer_call_and_return_conditional_losses_18322

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs
?
?
%__inference_model_layer_call_fn_17884
inputs_0
inputs_1!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3: 
	unknown_4: #
	unknown_5: 
	unknown_6: #
	unknown_7: @
	unknown_8:@#
	unknown_9: @

unknown_10:@$

unknown_11:@@

unknown_12:@$

unknown_13:@@

unknown_14:@$

unknown_15:@@

unknown_16:@$

unknown_17:@@

unknown_18:@

unknown_19:
??d

unknown_20:d

unknown_21:
??d

unknown_22:d

unknown_23:	?d

unknown_24:d

unknown_25:d2

unknown_26:2

unknown_27:2


unknown_28:


unknown_29:


unknown_30:

unknown_31:


unknown_32:
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32*/
Tin(
&2$*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????:?????????*D
_read_only_resource_inputs&
$"	
 !"#*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_166982
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
~:???????????:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
1
_output_shapes
:???????????
"
_user_specified_name
inputs/0:[W
1
_output_shapes
:???????????
"
_user_specified_name
inputs/1
?
?
K__inference_Natural_Conv2D_4_layer_call_and_return_conditional_losses_18091

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????#@*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????#@2	
BiasAdd]
EluEluBiasAdd:output:0*
T0*/
_output_shapes
:?????????#@2
Elu?
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????#@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????%@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????%@
 
_user_specified_nameinputs
?q
?
@__inference_model_layer_call_and_return_conditional_losses_17376
input_1
input_2-
lane_conv2d_1_17286:!
lane_conv2d_1_17288:0
natural_conv2d_1_17291:$
natural_conv2d_1_17293:-
lane_conv2d_2_17296: !
lane_conv2d_2_17298: 0
natural_conv2d_2_17301: $
natural_conv2d_2_17303: -
lane_conv2d_3_17306: @!
lane_conv2d_3_17308:@0
natural_conv2d_3_17311: @$
natural_conv2d_3_17313:@-
lane_conv2d_4_17316:@@!
lane_conv2d_4_17318:@0
natural_conv2d_4_17321:@@$
natural_conv2d_4_17323:@-
lane_conv2d_5_17326:@@!
lane_conv2d_5_17328:@0
natural_conv2d_5_17331:@@$
natural_conv2d_5_17333:@
dense_17338:
??d
dense_17340:d!
dense_1_17343:
??d
dense_1_17345:d 
dense_2_17349:	?d
dense_2_17351:d
dense_3_17354:d2
dense_3_17356:2
dense_4_17359:2

dense_4_17361:
$
throttle_out_17364:
 
throttle_out_17366:$
steering_out_17369:
 
steering_out_17371:
identity

identity_1??%Lane_Conv2D_1/StatefulPartitionedCall?%Lane_Conv2D_2/StatefulPartitionedCall?%Lane_Conv2D_3/StatefulPartitionedCall?%Lane_Conv2D_4/StatefulPartitionedCall?%Lane_Conv2D_5/StatefulPartitionedCall?(Natural_Conv2D_1/StatefulPartitionedCall?(Natural_Conv2D_2/StatefulPartitionedCall?(Natural_Conv2D_3/StatefulPartitionedCall?(Natural_Conv2D_4/StatefulPartitionedCall?(Natural_Conv2D_5/StatefulPartitionedCall?dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?dense_3/StatefulPartitionedCall?dense_4/StatefulPartitionedCall?$steering_out/StatefulPartitionedCall?$throttle_out/StatefulPartitionedCall?
%Lane_Conv2D_1/StatefulPartitionedCallStatefulPartitionedCallinput_2lane_conv2d_1_17286lane_conv2d_1_17288*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????P?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_Lane_Conv2D_1_layer_call_and_return_conditional_losses_163972'
%Lane_Conv2D_1/StatefulPartitionedCall?
(Natural_Conv2D_1/StatefulPartitionedCallStatefulPartitionedCallinput_1natural_conv2d_1_17291natural_conv2d_1_17293*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????P?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_Natural_Conv2D_1_layer_call_and_return_conditional_losses_164142*
(Natural_Conv2D_1/StatefulPartitionedCall?
%Lane_Conv2D_2/StatefulPartitionedCallStatefulPartitionedCall.Lane_Conv2D_1/StatefulPartitionedCall:output:0lane_conv2d_2_17296lane_conv2d_2_17298*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????&M *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_Lane_Conv2D_2_layer_call_and_return_conditional_losses_164312'
%Lane_Conv2D_2/StatefulPartitionedCall?
(Natural_Conv2D_2/StatefulPartitionedCallStatefulPartitionedCall1Natural_Conv2D_1/StatefulPartitionedCall:output:0natural_conv2d_2_17301natural_conv2d_2_17303*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????&M *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_Natural_Conv2D_2_layer_call_and_return_conditional_losses_164482*
(Natural_Conv2D_2/StatefulPartitionedCall?
%Lane_Conv2D_3/StatefulPartitionedCallStatefulPartitionedCall.Lane_Conv2D_2/StatefulPartitionedCall:output:0lane_conv2d_3_17306lane_conv2d_3_17308*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????%@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_Lane_Conv2D_3_layer_call_and_return_conditional_losses_164652'
%Lane_Conv2D_3/StatefulPartitionedCall?
(Natural_Conv2D_3/StatefulPartitionedCallStatefulPartitionedCall1Natural_Conv2D_2/StatefulPartitionedCall:output:0natural_conv2d_3_17311natural_conv2d_3_17313*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????%@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_Natural_Conv2D_3_layer_call_and_return_conditional_losses_164822*
(Natural_Conv2D_3/StatefulPartitionedCall?
%Lane_Conv2D_4/StatefulPartitionedCallStatefulPartitionedCall.Lane_Conv2D_3/StatefulPartitionedCall:output:0lane_conv2d_4_17316lane_conv2d_4_17318*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????#@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_Lane_Conv2D_4_layer_call_and_return_conditional_losses_164992'
%Lane_Conv2D_4/StatefulPartitionedCall?
(Natural_Conv2D_4/StatefulPartitionedCallStatefulPartitionedCall1Natural_Conv2D_3/StatefulPartitionedCall:output:0natural_conv2d_4_17321natural_conv2d_4_17323*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????#@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_Natural_Conv2D_4_layer_call_and_return_conditional_losses_165162*
(Natural_Conv2D_4/StatefulPartitionedCall?
%Lane_Conv2D_5/StatefulPartitionedCallStatefulPartitionedCall.Lane_Conv2D_4/StatefulPartitionedCall:output:0lane_conv2d_5_17326lane_conv2d_5_17328*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????!@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_Lane_Conv2D_5_layer_call_and_return_conditional_losses_165332'
%Lane_Conv2D_5/StatefulPartitionedCall?
(Natural_Conv2D_5/StatefulPartitionedCallStatefulPartitionedCall1Natural_Conv2D_4/StatefulPartitionedCall:output:0natural_conv2d_5_17331natural_conv2d_5_17333*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????!@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_Natural_Conv2D_5_layer_call_and_return_conditional_losses_165502*
(Natural_Conv2D_5/StatefulPartitionedCall?
Flattened_y/PartitionedCallPartitionedCall.Lane_Conv2D_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_Flattened_y_layer_call_and_return_conditional_losses_165622
Flattened_y/PartitionedCall?
Flattened_x/PartitionedCallPartitionedCall1Natural_Conv2D_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_Flattened_x_layer_call_and_return_conditional_losses_165702
Flattened_x/PartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall$Flattened_x/PartitionedCall:output:0dense_17338dense_17340*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_165822
dense/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall$Flattened_y/PartitionedCall:output:0dense_1_17343dense_1_17345*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_165982!
dense_1/StatefulPartitionedCall?
concatenate/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_concatenate_layer_call_and_return_conditional_losses_166112
concatenate/PartitionedCall?
dense_2/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0dense_2_17349dense_2_17351*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_166242!
dense_2/StatefulPartitionedCall?
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_17354dense_3_17356*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_166412!
dense_3/StatefulPartitionedCall?
dense_4/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0dense_4_17359dense_4_17361*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_166582!
dense_4/StatefulPartitionedCall?
$throttle_out/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0throttle_out_17364throttle_out_17366*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_throttle_out_layer_call_and_return_conditional_losses_166742&
$throttle_out/StatefulPartitionedCall?
$steering_out/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0steering_out_17369steering_out_17371*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_steering_out_layer_call_and_return_conditional_losses_166902&
$steering_out/StatefulPartitionedCall?
IdentityIdentity-steering_out/StatefulPartitionedCall:output:0&^Lane_Conv2D_1/StatefulPartitionedCall&^Lane_Conv2D_2/StatefulPartitionedCall&^Lane_Conv2D_3/StatefulPartitionedCall&^Lane_Conv2D_4/StatefulPartitionedCall&^Lane_Conv2D_5/StatefulPartitionedCall)^Natural_Conv2D_1/StatefulPartitionedCall)^Natural_Conv2D_2/StatefulPartitionedCall)^Natural_Conv2D_3/StatefulPartitionedCall)^Natural_Conv2D_4/StatefulPartitionedCall)^Natural_Conv2D_5/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall%^steering_out/StatefulPartitionedCall%^throttle_out/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity-throttle_out/StatefulPartitionedCall:output:0&^Lane_Conv2D_1/StatefulPartitionedCall&^Lane_Conv2D_2/StatefulPartitionedCall&^Lane_Conv2D_3/StatefulPartitionedCall&^Lane_Conv2D_4/StatefulPartitionedCall&^Lane_Conv2D_5/StatefulPartitionedCall)^Natural_Conv2D_1/StatefulPartitionedCall)^Natural_Conv2D_2/StatefulPartitionedCall)^Natural_Conv2D_3/StatefulPartitionedCall)^Natural_Conv2D_4/StatefulPartitionedCall)^Natural_Conv2D_5/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall%^steering_out/StatefulPartitionedCall%^throttle_out/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
~:???????????:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2N
%Lane_Conv2D_1/StatefulPartitionedCall%Lane_Conv2D_1/StatefulPartitionedCall2N
%Lane_Conv2D_2/StatefulPartitionedCall%Lane_Conv2D_2/StatefulPartitionedCall2N
%Lane_Conv2D_3/StatefulPartitionedCall%Lane_Conv2D_3/StatefulPartitionedCall2N
%Lane_Conv2D_4/StatefulPartitionedCall%Lane_Conv2D_4/StatefulPartitionedCall2N
%Lane_Conv2D_5/StatefulPartitionedCall%Lane_Conv2D_5/StatefulPartitionedCall2T
(Natural_Conv2D_1/StatefulPartitionedCall(Natural_Conv2D_1/StatefulPartitionedCall2T
(Natural_Conv2D_2/StatefulPartitionedCall(Natural_Conv2D_2/StatefulPartitionedCall2T
(Natural_Conv2D_3/StatefulPartitionedCall(Natural_Conv2D_3/StatefulPartitionedCall2T
(Natural_Conv2D_4/StatefulPartitionedCall(Natural_Conv2D_4/StatefulPartitionedCall2T
(Natural_Conv2D_5/StatefulPartitionedCall(Natural_Conv2D_5/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2L
$steering_out/StatefulPartitionedCall$steering_out/StatefulPartitionedCall2L
$throttle_out/StatefulPartitionedCall$throttle_out/StatefulPartitionedCall:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_1:ZV
1
_output_shapes
:???????????
!
_user_specified_name	input_2
?
?
,__inference_throttle_out_layer_call_fn_18331

inputs
unknown:

	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_throttle_out_layer_call_and_return_conditional_losses_166742
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????
: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs
?	
?
G__inference_throttle_out_layer_call_and_return_conditional_losses_16674

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs
?
b
F__inference_Flattened_y_layer_call_and_return_conditional_losses_18177

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????@k  2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:???????????2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????!@:W S
/
_output_shapes
:?????????!@
 
_user_specified_nameinputs
?
?
%__inference_model_layer_call_fn_17960
inputs_0
inputs_1!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3: 
	unknown_4: #
	unknown_5: 
	unknown_6: #
	unknown_7: @
	unknown_8:@#
	unknown_9: @

unknown_10:@$

unknown_11:@@

unknown_12:@$

unknown_13:@@

unknown_14:@$

unknown_15:@@

unknown_16:@$

unknown_17:@@

unknown_18:@

unknown_19:
??d

unknown_20:d

unknown_21:
??d

unknown_22:d

unknown_23:	?d

unknown_24:d

unknown_25:d2

unknown_26:2

unknown_27:2


unknown_28:


unknown_29:


unknown_30:

unknown_31:


unknown_32:
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32*/
Tin(
&2$*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????:?????????*D
_read_only_resource_inputs&
$"	
 !"#*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_171332
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
~:???????????:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
1
_output_shapes
:???????????
"
_user_specified_name
inputs/0:[W
1
_output_shapes
:???????????
"
_user_specified_name
inputs/1
??
?
@__inference_model_layer_call_and_return_conditional_losses_17808
inputs_0
inputs_1F
,lane_conv2d_1_conv2d_readvariableop_resource:;
-lane_conv2d_1_biasadd_readvariableop_resource:I
/natural_conv2d_1_conv2d_readvariableop_resource:>
0natural_conv2d_1_biasadd_readvariableop_resource:F
,lane_conv2d_2_conv2d_readvariableop_resource: ;
-lane_conv2d_2_biasadd_readvariableop_resource: I
/natural_conv2d_2_conv2d_readvariableop_resource: >
0natural_conv2d_2_biasadd_readvariableop_resource: F
,lane_conv2d_3_conv2d_readvariableop_resource: @;
-lane_conv2d_3_biasadd_readvariableop_resource:@I
/natural_conv2d_3_conv2d_readvariableop_resource: @>
0natural_conv2d_3_biasadd_readvariableop_resource:@F
,lane_conv2d_4_conv2d_readvariableop_resource:@@;
-lane_conv2d_4_biasadd_readvariableop_resource:@I
/natural_conv2d_4_conv2d_readvariableop_resource:@@>
0natural_conv2d_4_biasadd_readvariableop_resource:@F
,lane_conv2d_5_conv2d_readvariableop_resource:@@;
-lane_conv2d_5_biasadd_readvariableop_resource:@I
/natural_conv2d_5_conv2d_readvariableop_resource:@@>
0natural_conv2d_5_biasadd_readvariableop_resource:@8
$dense_matmul_readvariableop_resource:
??d3
%dense_biasadd_readvariableop_resource:d:
&dense_1_matmul_readvariableop_resource:
??d5
'dense_1_biasadd_readvariableop_resource:d9
&dense_2_matmul_readvariableop_resource:	?d5
'dense_2_biasadd_readvariableop_resource:d8
&dense_3_matmul_readvariableop_resource:d25
'dense_3_biasadd_readvariableop_resource:28
&dense_4_matmul_readvariableop_resource:2
5
'dense_4_biasadd_readvariableop_resource:
=
+throttle_out_matmul_readvariableop_resource:
:
,throttle_out_biasadd_readvariableop_resource:=
+steering_out_matmul_readvariableop_resource:
:
,steering_out_biasadd_readvariableop_resource:
identity

identity_1??$Lane_Conv2D_1/BiasAdd/ReadVariableOp?#Lane_Conv2D_1/Conv2D/ReadVariableOp?$Lane_Conv2D_2/BiasAdd/ReadVariableOp?#Lane_Conv2D_2/Conv2D/ReadVariableOp?$Lane_Conv2D_3/BiasAdd/ReadVariableOp?#Lane_Conv2D_3/Conv2D/ReadVariableOp?$Lane_Conv2D_4/BiasAdd/ReadVariableOp?#Lane_Conv2D_4/Conv2D/ReadVariableOp?$Lane_Conv2D_5/BiasAdd/ReadVariableOp?#Lane_Conv2D_5/Conv2D/ReadVariableOp?'Natural_Conv2D_1/BiasAdd/ReadVariableOp?&Natural_Conv2D_1/Conv2D/ReadVariableOp?'Natural_Conv2D_2/BiasAdd/ReadVariableOp?&Natural_Conv2D_2/Conv2D/ReadVariableOp?'Natural_Conv2D_3/BiasAdd/ReadVariableOp?&Natural_Conv2D_3/Conv2D/ReadVariableOp?'Natural_Conv2D_4/BiasAdd/ReadVariableOp?&Natural_Conv2D_4/Conv2D/ReadVariableOp?'Natural_Conv2D_5/BiasAdd/ReadVariableOp?&Natural_Conv2D_5/Conv2D/ReadVariableOp?dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOp?dense_3/BiasAdd/ReadVariableOp?dense_3/MatMul/ReadVariableOp?dense_4/BiasAdd/ReadVariableOp?dense_4/MatMul/ReadVariableOp?#steering_out/BiasAdd/ReadVariableOp?"steering_out/MatMul/ReadVariableOp?#throttle_out/BiasAdd/ReadVariableOp?"throttle_out/MatMul/ReadVariableOp?
#Lane_Conv2D_1/Conv2D/ReadVariableOpReadVariableOp,lane_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02%
#Lane_Conv2D_1/Conv2D/ReadVariableOp?
Lane_Conv2D_1/Conv2DConv2Dinputs_1+Lane_Conv2D_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????P?*
paddingVALID*
strides
2
Lane_Conv2D_1/Conv2D?
$Lane_Conv2D_1/BiasAdd/ReadVariableOpReadVariableOp-lane_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02&
$Lane_Conv2D_1/BiasAdd/ReadVariableOp?
Lane_Conv2D_1/BiasAddBiasAddLane_Conv2D_1/Conv2D:output:0,Lane_Conv2D_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????P?2
Lane_Conv2D_1/BiasAdd?
Lane_Conv2D_1/EluEluLane_Conv2D_1/BiasAdd:output:0*
T0*0
_output_shapes
:?????????P?2
Lane_Conv2D_1/Elu?
&Natural_Conv2D_1/Conv2D/ReadVariableOpReadVariableOp/natural_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02(
&Natural_Conv2D_1/Conv2D/ReadVariableOp?
Natural_Conv2D_1/Conv2DConv2Dinputs_0.Natural_Conv2D_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????P?*
paddingVALID*
strides
2
Natural_Conv2D_1/Conv2D?
'Natural_Conv2D_1/BiasAdd/ReadVariableOpReadVariableOp0natural_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'Natural_Conv2D_1/BiasAdd/ReadVariableOp?
Natural_Conv2D_1/BiasAddBiasAdd Natural_Conv2D_1/Conv2D:output:0/Natural_Conv2D_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????P?2
Natural_Conv2D_1/BiasAdd?
Natural_Conv2D_1/EluElu!Natural_Conv2D_1/BiasAdd:output:0*
T0*0
_output_shapes
:?????????P?2
Natural_Conv2D_1/Elu?
#Lane_Conv2D_2/Conv2D/ReadVariableOpReadVariableOp,lane_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02%
#Lane_Conv2D_2/Conv2D/ReadVariableOp?
Lane_Conv2D_2/Conv2DConv2DLane_Conv2D_1/Elu:activations:0+Lane_Conv2D_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????&M *
paddingVALID*
strides
2
Lane_Conv2D_2/Conv2D?
$Lane_Conv2D_2/BiasAdd/ReadVariableOpReadVariableOp-lane_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02&
$Lane_Conv2D_2/BiasAdd/ReadVariableOp?
Lane_Conv2D_2/BiasAddBiasAddLane_Conv2D_2/Conv2D:output:0,Lane_Conv2D_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????&M 2
Lane_Conv2D_2/BiasAdd?
Lane_Conv2D_2/EluEluLane_Conv2D_2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????&M 2
Lane_Conv2D_2/Elu?
&Natural_Conv2D_2/Conv2D/ReadVariableOpReadVariableOp/natural_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02(
&Natural_Conv2D_2/Conv2D/ReadVariableOp?
Natural_Conv2D_2/Conv2DConv2D"Natural_Conv2D_1/Elu:activations:0.Natural_Conv2D_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????&M *
paddingVALID*
strides
2
Natural_Conv2D_2/Conv2D?
'Natural_Conv2D_2/BiasAdd/ReadVariableOpReadVariableOp0natural_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02)
'Natural_Conv2D_2/BiasAdd/ReadVariableOp?
Natural_Conv2D_2/BiasAddBiasAdd Natural_Conv2D_2/Conv2D:output:0/Natural_Conv2D_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????&M 2
Natural_Conv2D_2/BiasAdd?
Natural_Conv2D_2/EluElu!Natural_Conv2D_2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????&M 2
Natural_Conv2D_2/Elu?
#Lane_Conv2D_3/Conv2D/ReadVariableOpReadVariableOp,lane_conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02%
#Lane_Conv2D_3/Conv2D/ReadVariableOp?
Lane_Conv2D_3/Conv2DConv2DLane_Conv2D_2/Elu:activations:0+Lane_Conv2D_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????%@*
paddingVALID*
strides
2
Lane_Conv2D_3/Conv2D?
$Lane_Conv2D_3/BiasAdd/ReadVariableOpReadVariableOp-lane_conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02&
$Lane_Conv2D_3/BiasAdd/ReadVariableOp?
Lane_Conv2D_3/BiasAddBiasAddLane_Conv2D_3/Conv2D:output:0,Lane_Conv2D_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????%@2
Lane_Conv2D_3/BiasAdd?
Lane_Conv2D_3/EluEluLane_Conv2D_3/BiasAdd:output:0*
T0*/
_output_shapes
:?????????%@2
Lane_Conv2D_3/Elu?
&Natural_Conv2D_3/Conv2D/ReadVariableOpReadVariableOp/natural_conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02(
&Natural_Conv2D_3/Conv2D/ReadVariableOp?
Natural_Conv2D_3/Conv2DConv2D"Natural_Conv2D_2/Elu:activations:0.Natural_Conv2D_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????%@*
paddingVALID*
strides
2
Natural_Conv2D_3/Conv2D?
'Natural_Conv2D_3/BiasAdd/ReadVariableOpReadVariableOp0natural_conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02)
'Natural_Conv2D_3/BiasAdd/ReadVariableOp?
Natural_Conv2D_3/BiasAddBiasAdd Natural_Conv2D_3/Conv2D:output:0/Natural_Conv2D_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????%@2
Natural_Conv2D_3/BiasAdd?
Natural_Conv2D_3/EluElu!Natural_Conv2D_3/BiasAdd:output:0*
T0*/
_output_shapes
:?????????%@2
Natural_Conv2D_3/Elu?
#Lane_Conv2D_4/Conv2D/ReadVariableOpReadVariableOp,lane_conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02%
#Lane_Conv2D_4/Conv2D/ReadVariableOp?
Lane_Conv2D_4/Conv2DConv2DLane_Conv2D_3/Elu:activations:0+Lane_Conv2D_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????#@*
paddingVALID*
strides
2
Lane_Conv2D_4/Conv2D?
$Lane_Conv2D_4/BiasAdd/ReadVariableOpReadVariableOp-lane_conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02&
$Lane_Conv2D_4/BiasAdd/ReadVariableOp?
Lane_Conv2D_4/BiasAddBiasAddLane_Conv2D_4/Conv2D:output:0,Lane_Conv2D_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????#@2
Lane_Conv2D_4/BiasAdd?
Lane_Conv2D_4/EluEluLane_Conv2D_4/BiasAdd:output:0*
T0*/
_output_shapes
:?????????#@2
Lane_Conv2D_4/Elu?
&Natural_Conv2D_4/Conv2D/ReadVariableOpReadVariableOp/natural_conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02(
&Natural_Conv2D_4/Conv2D/ReadVariableOp?
Natural_Conv2D_4/Conv2DConv2D"Natural_Conv2D_3/Elu:activations:0.Natural_Conv2D_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????#@*
paddingVALID*
strides
2
Natural_Conv2D_4/Conv2D?
'Natural_Conv2D_4/BiasAdd/ReadVariableOpReadVariableOp0natural_conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02)
'Natural_Conv2D_4/BiasAdd/ReadVariableOp?
Natural_Conv2D_4/BiasAddBiasAdd Natural_Conv2D_4/Conv2D:output:0/Natural_Conv2D_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????#@2
Natural_Conv2D_4/BiasAdd?
Natural_Conv2D_4/EluElu!Natural_Conv2D_4/BiasAdd:output:0*
T0*/
_output_shapes
:?????????#@2
Natural_Conv2D_4/Elu?
#Lane_Conv2D_5/Conv2D/ReadVariableOpReadVariableOp,lane_conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02%
#Lane_Conv2D_5/Conv2D/ReadVariableOp?
Lane_Conv2D_5/Conv2DConv2DLane_Conv2D_4/Elu:activations:0+Lane_Conv2D_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????!@*
paddingVALID*
strides
2
Lane_Conv2D_5/Conv2D?
$Lane_Conv2D_5/BiasAdd/ReadVariableOpReadVariableOp-lane_conv2d_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02&
$Lane_Conv2D_5/BiasAdd/ReadVariableOp?
Lane_Conv2D_5/BiasAddBiasAddLane_Conv2D_5/Conv2D:output:0,Lane_Conv2D_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????!@2
Lane_Conv2D_5/BiasAdd?
Lane_Conv2D_5/EluEluLane_Conv2D_5/BiasAdd:output:0*
T0*/
_output_shapes
:?????????!@2
Lane_Conv2D_5/Elu?
&Natural_Conv2D_5/Conv2D/ReadVariableOpReadVariableOp/natural_conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02(
&Natural_Conv2D_5/Conv2D/ReadVariableOp?
Natural_Conv2D_5/Conv2DConv2D"Natural_Conv2D_4/Elu:activations:0.Natural_Conv2D_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????!@*
paddingVALID*
strides
2
Natural_Conv2D_5/Conv2D?
'Natural_Conv2D_5/BiasAdd/ReadVariableOpReadVariableOp0natural_conv2d_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02)
'Natural_Conv2D_5/BiasAdd/ReadVariableOp?
Natural_Conv2D_5/BiasAddBiasAdd Natural_Conv2D_5/Conv2D:output:0/Natural_Conv2D_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????!@2
Natural_Conv2D_5/BiasAdd?
Natural_Conv2D_5/EluElu!Natural_Conv2D_5/BiasAdd:output:0*
T0*/
_output_shapes
:?????????!@2
Natural_Conv2D_5/Eluw
Flattened_y/ConstConst*
_output_shapes
:*
dtype0*
valueB"????@k  2
Flattened_y/Const?
Flattened_y/ReshapeReshapeLane_Conv2D_5/Elu:activations:0Flattened_y/Const:output:0*
T0*)
_output_shapes
:???????????2
Flattened_y/Reshapew
Flattened_x/ConstConst*
_output_shapes
:*
dtype0*
valueB"????@k  2
Flattened_x/Const?
Flattened_x/ReshapeReshape"Natural_Conv2D_5/Elu:activations:0Flattened_x/Const:output:0*
T0*)
_output_shapes
:???????????2
Flattened_x/Reshape?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
??d*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMulFlattened_x/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense/BiasAdd?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??d*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMulFlattened_y/Reshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_1/BiasAddt
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate/concat/axis?
concatenate/concatConcatV2dense/BiasAdd:output:0dense_1/BiasAdd:output:0 concatenate/concat/axis:output:0*
N*
T0*(
_output_shapes
:??????????2
concatenate/concat?
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	?d*
dtype02
dense_2/MatMul/ReadVariableOp?
dense_2/MatMulMatMulconcatenate/concat:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_2/MatMul?
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02 
dense_2/BiasAdd/ReadVariableOp?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_2/BiasAddm
dense_2/EluEludense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
dense_2/Elu?
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

:d2*
dtype02
dense_3/MatMul/ReadVariableOp?
dense_3/MatMulMatMuldense_2/Elu:activations:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_3/MatMul?
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02 
dense_3/BiasAdd/ReadVariableOp?
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_3/BiasAddm
dense_3/EluEludense_3/BiasAdd:output:0*
T0*'
_output_shapes
:?????????22
dense_3/Elu?
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes

:2
*
dtype02
dense_4/MatMul/ReadVariableOp?
dense_4/MatMulMatMuldense_3/Elu:activations:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_4/MatMul?
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02 
dense_4/BiasAdd/ReadVariableOp?
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_4/BiasAddm
dense_4/EluEludense_4/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
dense_4/Elu?
"throttle_out/MatMul/ReadVariableOpReadVariableOp+throttle_out_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02$
"throttle_out/MatMul/ReadVariableOp?
throttle_out/MatMulMatMuldense_4/Elu:activations:0*throttle_out/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
throttle_out/MatMul?
#throttle_out/BiasAdd/ReadVariableOpReadVariableOp,throttle_out_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02%
#throttle_out/BiasAdd/ReadVariableOp?
throttle_out/BiasAddBiasAddthrottle_out/MatMul:product:0+throttle_out/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
throttle_out/BiasAdd?
"steering_out/MatMul/ReadVariableOpReadVariableOp+steering_out_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02$
"steering_out/MatMul/ReadVariableOp?
steering_out/MatMulMatMuldense_4/Elu:activations:0*steering_out/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
steering_out/MatMul?
#steering_out/BiasAdd/ReadVariableOpReadVariableOp,steering_out_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02%
#steering_out/BiasAdd/ReadVariableOp?
steering_out/BiasAddBiasAddsteering_out/MatMul:product:0+steering_out/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
steering_out/BiasAdd?

IdentityIdentitysteering_out/BiasAdd:output:0%^Lane_Conv2D_1/BiasAdd/ReadVariableOp$^Lane_Conv2D_1/Conv2D/ReadVariableOp%^Lane_Conv2D_2/BiasAdd/ReadVariableOp$^Lane_Conv2D_2/Conv2D/ReadVariableOp%^Lane_Conv2D_3/BiasAdd/ReadVariableOp$^Lane_Conv2D_3/Conv2D/ReadVariableOp%^Lane_Conv2D_4/BiasAdd/ReadVariableOp$^Lane_Conv2D_4/Conv2D/ReadVariableOp%^Lane_Conv2D_5/BiasAdd/ReadVariableOp$^Lane_Conv2D_5/Conv2D/ReadVariableOp(^Natural_Conv2D_1/BiasAdd/ReadVariableOp'^Natural_Conv2D_1/Conv2D/ReadVariableOp(^Natural_Conv2D_2/BiasAdd/ReadVariableOp'^Natural_Conv2D_2/Conv2D/ReadVariableOp(^Natural_Conv2D_3/BiasAdd/ReadVariableOp'^Natural_Conv2D_3/Conv2D/ReadVariableOp(^Natural_Conv2D_4/BiasAdd/ReadVariableOp'^Natural_Conv2D_4/Conv2D/ReadVariableOp(^Natural_Conv2D_5/BiasAdd/ReadVariableOp'^Natural_Conv2D_5/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp$^steering_out/BiasAdd/ReadVariableOp#^steering_out/MatMul/ReadVariableOp$^throttle_out/BiasAdd/ReadVariableOp#^throttle_out/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity?


Identity_1Identitythrottle_out/BiasAdd:output:0%^Lane_Conv2D_1/BiasAdd/ReadVariableOp$^Lane_Conv2D_1/Conv2D/ReadVariableOp%^Lane_Conv2D_2/BiasAdd/ReadVariableOp$^Lane_Conv2D_2/Conv2D/ReadVariableOp%^Lane_Conv2D_3/BiasAdd/ReadVariableOp$^Lane_Conv2D_3/Conv2D/ReadVariableOp%^Lane_Conv2D_4/BiasAdd/ReadVariableOp$^Lane_Conv2D_4/Conv2D/ReadVariableOp%^Lane_Conv2D_5/BiasAdd/ReadVariableOp$^Lane_Conv2D_5/Conv2D/ReadVariableOp(^Natural_Conv2D_1/BiasAdd/ReadVariableOp'^Natural_Conv2D_1/Conv2D/ReadVariableOp(^Natural_Conv2D_2/BiasAdd/ReadVariableOp'^Natural_Conv2D_2/Conv2D/ReadVariableOp(^Natural_Conv2D_3/BiasAdd/ReadVariableOp'^Natural_Conv2D_3/Conv2D/ReadVariableOp(^Natural_Conv2D_4/BiasAdd/ReadVariableOp'^Natural_Conv2D_4/Conv2D/ReadVariableOp(^Natural_Conv2D_5/BiasAdd/ReadVariableOp'^Natural_Conv2D_5/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp$^steering_out/BiasAdd/ReadVariableOp#^steering_out/MatMul/ReadVariableOp$^throttle_out/BiasAdd/ReadVariableOp#^throttle_out/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
~:???????????:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$Lane_Conv2D_1/BiasAdd/ReadVariableOp$Lane_Conv2D_1/BiasAdd/ReadVariableOp2J
#Lane_Conv2D_1/Conv2D/ReadVariableOp#Lane_Conv2D_1/Conv2D/ReadVariableOp2L
$Lane_Conv2D_2/BiasAdd/ReadVariableOp$Lane_Conv2D_2/BiasAdd/ReadVariableOp2J
#Lane_Conv2D_2/Conv2D/ReadVariableOp#Lane_Conv2D_2/Conv2D/ReadVariableOp2L
$Lane_Conv2D_3/BiasAdd/ReadVariableOp$Lane_Conv2D_3/BiasAdd/ReadVariableOp2J
#Lane_Conv2D_3/Conv2D/ReadVariableOp#Lane_Conv2D_3/Conv2D/ReadVariableOp2L
$Lane_Conv2D_4/BiasAdd/ReadVariableOp$Lane_Conv2D_4/BiasAdd/ReadVariableOp2J
#Lane_Conv2D_4/Conv2D/ReadVariableOp#Lane_Conv2D_4/Conv2D/ReadVariableOp2L
$Lane_Conv2D_5/BiasAdd/ReadVariableOp$Lane_Conv2D_5/BiasAdd/ReadVariableOp2J
#Lane_Conv2D_5/Conv2D/ReadVariableOp#Lane_Conv2D_5/Conv2D/ReadVariableOp2R
'Natural_Conv2D_1/BiasAdd/ReadVariableOp'Natural_Conv2D_1/BiasAdd/ReadVariableOp2P
&Natural_Conv2D_1/Conv2D/ReadVariableOp&Natural_Conv2D_1/Conv2D/ReadVariableOp2R
'Natural_Conv2D_2/BiasAdd/ReadVariableOp'Natural_Conv2D_2/BiasAdd/ReadVariableOp2P
&Natural_Conv2D_2/Conv2D/ReadVariableOp&Natural_Conv2D_2/Conv2D/ReadVariableOp2R
'Natural_Conv2D_3/BiasAdd/ReadVariableOp'Natural_Conv2D_3/BiasAdd/ReadVariableOp2P
&Natural_Conv2D_3/Conv2D/ReadVariableOp&Natural_Conv2D_3/Conv2D/ReadVariableOp2R
'Natural_Conv2D_4/BiasAdd/ReadVariableOp'Natural_Conv2D_4/BiasAdd/ReadVariableOp2P
&Natural_Conv2D_4/Conv2D/ReadVariableOp&Natural_Conv2D_4/Conv2D/ReadVariableOp2R
'Natural_Conv2D_5/BiasAdd/ReadVariableOp'Natural_Conv2D_5/BiasAdd/ReadVariableOp2P
&Natural_Conv2D_5/Conv2D/ReadVariableOp&Natural_Conv2D_5/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2J
#steering_out/BiasAdd/ReadVariableOp#steering_out/BiasAdd/ReadVariableOp2H
"steering_out/MatMul/ReadVariableOp"steering_out/MatMul/ReadVariableOp2J
#throttle_out/BiasAdd/ReadVariableOp#throttle_out/BiasAdd/ReadVariableOp2H
"throttle_out/MatMul/ReadVariableOp"throttle_out/MatMul/ReadVariableOp:[ W
1
_output_shapes
:???????????
"
_user_specified_name
inputs/0:[W
1
_output_shapes
:???????????
"
_user_specified_name
inputs/1
?
?
,__inference_steering_out_layer_call_fn_18312

inputs
unknown:

	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_steering_out_layer_call_and_return_conditional_losses_166902
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????
: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs
?
?
0__inference_Natural_Conv2D_4_layer_call_fn_18100

inputs!
unknown:@@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????#@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_Natural_Conv2D_4_layer_call_and_return_conditional_losses_165162
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????#@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????%@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????%@
 
_user_specified_nameinputs
?q
?
@__inference_model_layer_call_and_return_conditional_losses_17470
input_1
input_2-
lane_conv2d_1_17380:!
lane_conv2d_1_17382:0
natural_conv2d_1_17385:$
natural_conv2d_1_17387:-
lane_conv2d_2_17390: !
lane_conv2d_2_17392: 0
natural_conv2d_2_17395: $
natural_conv2d_2_17397: -
lane_conv2d_3_17400: @!
lane_conv2d_3_17402:@0
natural_conv2d_3_17405: @$
natural_conv2d_3_17407:@-
lane_conv2d_4_17410:@@!
lane_conv2d_4_17412:@0
natural_conv2d_4_17415:@@$
natural_conv2d_4_17417:@-
lane_conv2d_5_17420:@@!
lane_conv2d_5_17422:@0
natural_conv2d_5_17425:@@$
natural_conv2d_5_17427:@
dense_17432:
??d
dense_17434:d!
dense_1_17437:
??d
dense_1_17439:d 
dense_2_17443:	?d
dense_2_17445:d
dense_3_17448:d2
dense_3_17450:2
dense_4_17453:2

dense_4_17455:
$
throttle_out_17458:
 
throttle_out_17460:$
steering_out_17463:
 
steering_out_17465:
identity

identity_1??%Lane_Conv2D_1/StatefulPartitionedCall?%Lane_Conv2D_2/StatefulPartitionedCall?%Lane_Conv2D_3/StatefulPartitionedCall?%Lane_Conv2D_4/StatefulPartitionedCall?%Lane_Conv2D_5/StatefulPartitionedCall?(Natural_Conv2D_1/StatefulPartitionedCall?(Natural_Conv2D_2/StatefulPartitionedCall?(Natural_Conv2D_3/StatefulPartitionedCall?(Natural_Conv2D_4/StatefulPartitionedCall?(Natural_Conv2D_5/StatefulPartitionedCall?dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?dense_3/StatefulPartitionedCall?dense_4/StatefulPartitionedCall?$steering_out/StatefulPartitionedCall?$throttle_out/StatefulPartitionedCall?
%Lane_Conv2D_1/StatefulPartitionedCallStatefulPartitionedCallinput_2lane_conv2d_1_17380lane_conv2d_1_17382*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????P?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_Lane_Conv2D_1_layer_call_and_return_conditional_losses_163972'
%Lane_Conv2D_1/StatefulPartitionedCall?
(Natural_Conv2D_1/StatefulPartitionedCallStatefulPartitionedCallinput_1natural_conv2d_1_17385natural_conv2d_1_17387*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????P?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_Natural_Conv2D_1_layer_call_and_return_conditional_losses_164142*
(Natural_Conv2D_1/StatefulPartitionedCall?
%Lane_Conv2D_2/StatefulPartitionedCallStatefulPartitionedCall.Lane_Conv2D_1/StatefulPartitionedCall:output:0lane_conv2d_2_17390lane_conv2d_2_17392*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????&M *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_Lane_Conv2D_2_layer_call_and_return_conditional_losses_164312'
%Lane_Conv2D_2/StatefulPartitionedCall?
(Natural_Conv2D_2/StatefulPartitionedCallStatefulPartitionedCall1Natural_Conv2D_1/StatefulPartitionedCall:output:0natural_conv2d_2_17395natural_conv2d_2_17397*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????&M *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_Natural_Conv2D_2_layer_call_and_return_conditional_losses_164482*
(Natural_Conv2D_2/StatefulPartitionedCall?
%Lane_Conv2D_3/StatefulPartitionedCallStatefulPartitionedCall.Lane_Conv2D_2/StatefulPartitionedCall:output:0lane_conv2d_3_17400lane_conv2d_3_17402*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????%@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_Lane_Conv2D_3_layer_call_and_return_conditional_losses_164652'
%Lane_Conv2D_3/StatefulPartitionedCall?
(Natural_Conv2D_3/StatefulPartitionedCallStatefulPartitionedCall1Natural_Conv2D_2/StatefulPartitionedCall:output:0natural_conv2d_3_17405natural_conv2d_3_17407*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????%@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_Natural_Conv2D_3_layer_call_and_return_conditional_losses_164822*
(Natural_Conv2D_3/StatefulPartitionedCall?
%Lane_Conv2D_4/StatefulPartitionedCallStatefulPartitionedCall.Lane_Conv2D_3/StatefulPartitionedCall:output:0lane_conv2d_4_17410lane_conv2d_4_17412*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????#@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_Lane_Conv2D_4_layer_call_and_return_conditional_losses_164992'
%Lane_Conv2D_4/StatefulPartitionedCall?
(Natural_Conv2D_4/StatefulPartitionedCallStatefulPartitionedCall1Natural_Conv2D_3/StatefulPartitionedCall:output:0natural_conv2d_4_17415natural_conv2d_4_17417*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????#@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_Natural_Conv2D_4_layer_call_and_return_conditional_losses_165162*
(Natural_Conv2D_4/StatefulPartitionedCall?
%Lane_Conv2D_5/StatefulPartitionedCallStatefulPartitionedCall.Lane_Conv2D_4/StatefulPartitionedCall:output:0lane_conv2d_5_17420lane_conv2d_5_17422*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????!@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_Lane_Conv2D_5_layer_call_and_return_conditional_losses_165332'
%Lane_Conv2D_5/StatefulPartitionedCall?
(Natural_Conv2D_5/StatefulPartitionedCallStatefulPartitionedCall1Natural_Conv2D_4/StatefulPartitionedCall:output:0natural_conv2d_5_17425natural_conv2d_5_17427*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????!@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_Natural_Conv2D_5_layer_call_and_return_conditional_losses_165502*
(Natural_Conv2D_5/StatefulPartitionedCall?
Flattened_y/PartitionedCallPartitionedCall.Lane_Conv2D_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_Flattened_y_layer_call_and_return_conditional_losses_165622
Flattened_y/PartitionedCall?
Flattened_x/PartitionedCallPartitionedCall1Natural_Conv2D_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_Flattened_x_layer_call_and_return_conditional_losses_165702
Flattened_x/PartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall$Flattened_x/PartitionedCall:output:0dense_17432dense_17434*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_165822
dense/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall$Flattened_y/PartitionedCall:output:0dense_1_17437dense_1_17439*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_165982!
dense_1/StatefulPartitionedCall?
concatenate/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_concatenate_layer_call_and_return_conditional_losses_166112
concatenate/PartitionedCall?
dense_2/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0dense_2_17443dense_2_17445*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_166242!
dense_2/StatefulPartitionedCall?
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_17448dense_3_17450*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_166412!
dense_3/StatefulPartitionedCall?
dense_4/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0dense_4_17453dense_4_17455*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_166582!
dense_4/StatefulPartitionedCall?
$throttle_out/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0throttle_out_17458throttle_out_17460*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_throttle_out_layer_call_and_return_conditional_losses_166742&
$throttle_out/StatefulPartitionedCall?
$steering_out/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0steering_out_17463steering_out_17465*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_steering_out_layer_call_and_return_conditional_losses_166902&
$steering_out/StatefulPartitionedCall?
IdentityIdentity-steering_out/StatefulPartitionedCall:output:0&^Lane_Conv2D_1/StatefulPartitionedCall&^Lane_Conv2D_2/StatefulPartitionedCall&^Lane_Conv2D_3/StatefulPartitionedCall&^Lane_Conv2D_4/StatefulPartitionedCall&^Lane_Conv2D_5/StatefulPartitionedCall)^Natural_Conv2D_1/StatefulPartitionedCall)^Natural_Conv2D_2/StatefulPartitionedCall)^Natural_Conv2D_3/StatefulPartitionedCall)^Natural_Conv2D_4/StatefulPartitionedCall)^Natural_Conv2D_5/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall%^steering_out/StatefulPartitionedCall%^throttle_out/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity-throttle_out/StatefulPartitionedCall:output:0&^Lane_Conv2D_1/StatefulPartitionedCall&^Lane_Conv2D_2/StatefulPartitionedCall&^Lane_Conv2D_3/StatefulPartitionedCall&^Lane_Conv2D_4/StatefulPartitionedCall&^Lane_Conv2D_5/StatefulPartitionedCall)^Natural_Conv2D_1/StatefulPartitionedCall)^Natural_Conv2D_2/StatefulPartitionedCall)^Natural_Conv2D_3/StatefulPartitionedCall)^Natural_Conv2D_4/StatefulPartitionedCall)^Natural_Conv2D_5/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall%^steering_out/StatefulPartitionedCall%^throttle_out/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
~:???????????:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2N
%Lane_Conv2D_1/StatefulPartitionedCall%Lane_Conv2D_1/StatefulPartitionedCall2N
%Lane_Conv2D_2/StatefulPartitionedCall%Lane_Conv2D_2/StatefulPartitionedCall2N
%Lane_Conv2D_3/StatefulPartitionedCall%Lane_Conv2D_3/StatefulPartitionedCall2N
%Lane_Conv2D_4/StatefulPartitionedCall%Lane_Conv2D_4/StatefulPartitionedCall2N
%Lane_Conv2D_5/StatefulPartitionedCall%Lane_Conv2D_5/StatefulPartitionedCall2T
(Natural_Conv2D_1/StatefulPartitionedCall(Natural_Conv2D_1/StatefulPartitionedCall2T
(Natural_Conv2D_2/StatefulPartitionedCall(Natural_Conv2D_2/StatefulPartitionedCall2T
(Natural_Conv2D_3/StatefulPartitionedCall(Natural_Conv2D_3/StatefulPartitionedCall2T
(Natural_Conv2D_4/StatefulPartitionedCall(Natural_Conv2D_4/StatefulPartitionedCall2T
(Natural_Conv2D_5/StatefulPartitionedCall(Natural_Conv2D_5/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2L
$steering_out/StatefulPartitionedCall$steering_out/StatefulPartitionedCall2L
$throttle_out/StatefulPartitionedCall$throttle_out/StatefulPartitionedCall:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_1:ZV
1
_output_shapes
:???????????
!
_user_specified_name	input_2
?
?
K__inference_Natural_Conv2D_3_layer_call_and_return_conditional_losses_18051

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????%@*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????%@2	
BiasAdd]
EluEluBiasAdd:output:0*
T0*/
_output_shapes
:?????????%@2
Elu?
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????%@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????&M : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????&M 
 
_user_specified_nameinputs
?
?
H__inference_Lane_Conv2D_3_layer_call_and_return_conditional_losses_18071

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????%@*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????%@2	
BiasAdd]
EluEluBiasAdd:output:0*
T0*/
_output_shapes
:?????????%@2
Elu?
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????%@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????&M : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????&M 
 
_user_specified_nameinputs
?
?
H__inference_Lane_Conv2D_1_layer_call_and_return_conditional_losses_17991

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????P?*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????P?2	
BiasAdd^
EluEluBiasAdd:output:0*
T0*0
_output_shapes
:?????????P?2
Elu?
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:?????????P?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?	
?
B__inference_dense_1_layer_call_and_return_conditional_losses_18211

inputs2
matmul_readvariableop_resource:
??d-
biasadd_readvariableop_resource:d
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??d*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
H__inference_Lane_Conv2D_4_layer_call_and_return_conditional_losses_18111

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????#@*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????#@2	
BiasAdd]
EluEluBiasAdd:output:0*
T0*/
_output_shapes
:?????????#@2
Elu?
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????#@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????%@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????%@
 
_user_specified_nameinputs
?	
?
G__inference_steering_out_layer_call_and_return_conditional_losses_18303

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs
?	
?
@__inference_dense_layer_call_and_return_conditional_losses_16582

inputs2
matmul_readvariableop_resource:
??d-
biasadd_readvariableop_resource:d
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??d*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
%__inference_model_layer_call_fn_17282
input_1
input_2!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3: 
	unknown_4: #
	unknown_5: 
	unknown_6: #
	unknown_7: @
	unknown_8:@#
	unknown_9: @

unknown_10:@$

unknown_11:@@

unknown_12:@$

unknown_13:@@

unknown_14:@$

unknown_15:@@

unknown_16:@$

unknown_17:@@

unknown_18:@

unknown_19:
??d

unknown_20:d

unknown_21:
??d

unknown_22:d

unknown_23:	?d

unknown_24:d

unknown_25:d2

unknown_26:2

unknown_27:2


unknown_28:


unknown_29:


unknown_30:

unknown_31:


unknown_32:
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32*/
Tin(
&2$*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????:?????????*D
_read_only_resource_inputs&
$"	
 !"#*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_171332
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
~:???????????:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_1:ZV
1
_output_shapes
:???????????
!
_user_specified_name	input_2
?
?
K__inference_Natural_Conv2D_4_layer_call_and_return_conditional_losses_16516

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????#@*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????#@2	
BiasAdd]
EluEluBiasAdd:output:0*
T0*/
_output_shapes
:?????????#@2
Elu?
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????#@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????%@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????%@
 
_user_specified_nameinputs
?
?
0__inference_Natural_Conv2D_2_layer_call_fn_18020

inputs!
unknown: 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????&M *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_Natural_Conv2D_2_layer_call_and_return_conditional_losses_164482
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????&M 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????P?: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:?????????P?
 
_user_specified_nameinputs
?
?
-__inference_Lane_Conv2D_3_layer_call_fn_18080

inputs!
unknown: @
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????%@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_Lane_Conv2D_3_layer_call_and_return_conditional_losses_164652
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????%@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????&M : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????&M 
 
_user_specified_nameinputs
?
?
H__inference_Lane_Conv2D_5_layer_call_and_return_conditional_losses_16533

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????!@*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????!@2	
BiasAdd]
EluEluBiasAdd:output:0*
T0*/
_output_shapes
:?????????!@2
Elu?
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????!@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????#@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????#@
 
_user_specified_nameinputs
?
?
H__inference_Lane_Conv2D_1_layer_call_and_return_conditional_losses_16397

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????P?*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????P?2	
BiasAdd^
EluEluBiasAdd:output:0*
T0*0
_output_shapes
:?????????P?2
Elu?
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*0
_output_shapes
:?????????P?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?	
?
B__inference_dense_1_layer_call_and_return_conditional_losses_16598

inputs2
matmul_readvariableop_resource:
??d-
biasadd_readvariableop_resource:d
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??d*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
??
?
@__inference_model_layer_call_and_return_conditional_losses_17681
inputs_0
inputs_1F
,lane_conv2d_1_conv2d_readvariableop_resource:;
-lane_conv2d_1_biasadd_readvariableop_resource:I
/natural_conv2d_1_conv2d_readvariableop_resource:>
0natural_conv2d_1_biasadd_readvariableop_resource:F
,lane_conv2d_2_conv2d_readvariableop_resource: ;
-lane_conv2d_2_biasadd_readvariableop_resource: I
/natural_conv2d_2_conv2d_readvariableop_resource: >
0natural_conv2d_2_biasadd_readvariableop_resource: F
,lane_conv2d_3_conv2d_readvariableop_resource: @;
-lane_conv2d_3_biasadd_readvariableop_resource:@I
/natural_conv2d_3_conv2d_readvariableop_resource: @>
0natural_conv2d_3_biasadd_readvariableop_resource:@F
,lane_conv2d_4_conv2d_readvariableop_resource:@@;
-lane_conv2d_4_biasadd_readvariableop_resource:@I
/natural_conv2d_4_conv2d_readvariableop_resource:@@>
0natural_conv2d_4_biasadd_readvariableop_resource:@F
,lane_conv2d_5_conv2d_readvariableop_resource:@@;
-lane_conv2d_5_biasadd_readvariableop_resource:@I
/natural_conv2d_5_conv2d_readvariableop_resource:@@>
0natural_conv2d_5_biasadd_readvariableop_resource:@8
$dense_matmul_readvariableop_resource:
??d3
%dense_biasadd_readvariableop_resource:d:
&dense_1_matmul_readvariableop_resource:
??d5
'dense_1_biasadd_readvariableop_resource:d9
&dense_2_matmul_readvariableop_resource:	?d5
'dense_2_biasadd_readvariableop_resource:d8
&dense_3_matmul_readvariableop_resource:d25
'dense_3_biasadd_readvariableop_resource:28
&dense_4_matmul_readvariableop_resource:2
5
'dense_4_biasadd_readvariableop_resource:
=
+throttle_out_matmul_readvariableop_resource:
:
,throttle_out_biasadd_readvariableop_resource:=
+steering_out_matmul_readvariableop_resource:
:
,steering_out_biasadd_readvariableop_resource:
identity

identity_1??$Lane_Conv2D_1/BiasAdd/ReadVariableOp?#Lane_Conv2D_1/Conv2D/ReadVariableOp?$Lane_Conv2D_2/BiasAdd/ReadVariableOp?#Lane_Conv2D_2/Conv2D/ReadVariableOp?$Lane_Conv2D_3/BiasAdd/ReadVariableOp?#Lane_Conv2D_3/Conv2D/ReadVariableOp?$Lane_Conv2D_4/BiasAdd/ReadVariableOp?#Lane_Conv2D_4/Conv2D/ReadVariableOp?$Lane_Conv2D_5/BiasAdd/ReadVariableOp?#Lane_Conv2D_5/Conv2D/ReadVariableOp?'Natural_Conv2D_1/BiasAdd/ReadVariableOp?&Natural_Conv2D_1/Conv2D/ReadVariableOp?'Natural_Conv2D_2/BiasAdd/ReadVariableOp?&Natural_Conv2D_2/Conv2D/ReadVariableOp?'Natural_Conv2D_3/BiasAdd/ReadVariableOp?&Natural_Conv2D_3/Conv2D/ReadVariableOp?'Natural_Conv2D_4/BiasAdd/ReadVariableOp?&Natural_Conv2D_4/Conv2D/ReadVariableOp?'Natural_Conv2D_5/BiasAdd/ReadVariableOp?&Natural_Conv2D_5/Conv2D/ReadVariableOp?dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOp?dense_3/BiasAdd/ReadVariableOp?dense_3/MatMul/ReadVariableOp?dense_4/BiasAdd/ReadVariableOp?dense_4/MatMul/ReadVariableOp?#steering_out/BiasAdd/ReadVariableOp?"steering_out/MatMul/ReadVariableOp?#throttle_out/BiasAdd/ReadVariableOp?"throttle_out/MatMul/ReadVariableOp?
#Lane_Conv2D_1/Conv2D/ReadVariableOpReadVariableOp,lane_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02%
#Lane_Conv2D_1/Conv2D/ReadVariableOp?
Lane_Conv2D_1/Conv2DConv2Dinputs_1+Lane_Conv2D_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????P?*
paddingVALID*
strides
2
Lane_Conv2D_1/Conv2D?
$Lane_Conv2D_1/BiasAdd/ReadVariableOpReadVariableOp-lane_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02&
$Lane_Conv2D_1/BiasAdd/ReadVariableOp?
Lane_Conv2D_1/BiasAddBiasAddLane_Conv2D_1/Conv2D:output:0,Lane_Conv2D_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????P?2
Lane_Conv2D_1/BiasAdd?
Lane_Conv2D_1/EluEluLane_Conv2D_1/BiasAdd:output:0*
T0*0
_output_shapes
:?????????P?2
Lane_Conv2D_1/Elu?
&Natural_Conv2D_1/Conv2D/ReadVariableOpReadVariableOp/natural_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02(
&Natural_Conv2D_1/Conv2D/ReadVariableOp?
Natural_Conv2D_1/Conv2DConv2Dinputs_0.Natural_Conv2D_1/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????P?*
paddingVALID*
strides
2
Natural_Conv2D_1/Conv2D?
'Natural_Conv2D_1/BiasAdd/ReadVariableOpReadVariableOp0natural_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'Natural_Conv2D_1/BiasAdd/ReadVariableOp?
Natural_Conv2D_1/BiasAddBiasAdd Natural_Conv2D_1/Conv2D:output:0/Natural_Conv2D_1/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:?????????P?2
Natural_Conv2D_1/BiasAdd?
Natural_Conv2D_1/EluElu!Natural_Conv2D_1/BiasAdd:output:0*
T0*0
_output_shapes
:?????????P?2
Natural_Conv2D_1/Elu?
#Lane_Conv2D_2/Conv2D/ReadVariableOpReadVariableOp,lane_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02%
#Lane_Conv2D_2/Conv2D/ReadVariableOp?
Lane_Conv2D_2/Conv2DConv2DLane_Conv2D_1/Elu:activations:0+Lane_Conv2D_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????&M *
paddingVALID*
strides
2
Lane_Conv2D_2/Conv2D?
$Lane_Conv2D_2/BiasAdd/ReadVariableOpReadVariableOp-lane_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02&
$Lane_Conv2D_2/BiasAdd/ReadVariableOp?
Lane_Conv2D_2/BiasAddBiasAddLane_Conv2D_2/Conv2D:output:0,Lane_Conv2D_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????&M 2
Lane_Conv2D_2/BiasAdd?
Lane_Conv2D_2/EluEluLane_Conv2D_2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????&M 2
Lane_Conv2D_2/Elu?
&Natural_Conv2D_2/Conv2D/ReadVariableOpReadVariableOp/natural_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02(
&Natural_Conv2D_2/Conv2D/ReadVariableOp?
Natural_Conv2D_2/Conv2DConv2D"Natural_Conv2D_1/Elu:activations:0.Natural_Conv2D_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????&M *
paddingVALID*
strides
2
Natural_Conv2D_2/Conv2D?
'Natural_Conv2D_2/BiasAdd/ReadVariableOpReadVariableOp0natural_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02)
'Natural_Conv2D_2/BiasAdd/ReadVariableOp?
Natural_Conv2D_2/BiasAddBiasAdd Natural_Conv2D_2/Conv2D:output:0/Natural_Conv2D_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????&M 2
Natural_Conv2D_2/BiasAdd?
Natural_Conv2D_2/EluElu!Natural_Conv2D_2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????&M 2
Natural_Conv2D_2/Elu?
#Lane_Conv2D_3/Conv2D/ReadVariableOpReadVariableOp,lane_conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02%
#Lane_Conv2D_3/Conv2D/ReadVariableOp?
Lane_Conv2D_3/Conv2DConv2DLane_Conv2D_2/Elu:activations:0+Lane_Conv2D_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????%@*
paddingVALID*
strides
2
Lane_Conv2D_3/Conv2D?
$Lane_Conv2D_3/BiasAdd/ReadVariableOpReadVariableOp-lane_conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02&
$Lane_Conv2D_3/BiasAdd/ReadVariableOp?
Lane_Conv2D_3/BiasAddBiasAddLane_Conv2D_3/Conv2D:output:0,Lane_Conv2D_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????%@2
Lane_Conv2D_3/BiasAdd?
Lane_Conv2D_3/EluEluLane_Conv2D_3/BiasAdd:output:0*
T0*/
_output_shapes
:?????????%@2
Lane_Conv2D_3/Elu?
&Natural_Conv2D_3/Conv2D/ReadVariableOpReadVariableOp/natural_conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02(
&Natural_Conv2D_3/Conv2D/ReadVariableOp?
Natural_Conv2D_3/Conv2DConv2D"Natural_Conv2D_2/Elu:activations:0.Natural_Conv2D_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????%@*
paddingVALID*
strides
2
Natural_Conv2D_3/Conv2D?
'Natural_Conv2D_3/BiasAdd/ReadVariableOpReadVariableOp0natural_conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02)
'Natural_Conv2D_3/BiasAdd/ReadVariableOp?
Natural_Conv2D_3/BiasAddBiasAdd Natural_Conv2D_3/Conv2D:output:0/Natural_Conv2D_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????%@2
Natural_Conv2D_3/BiasAdd?
Natural_Conv2D_3/EluElu!Natural_Conv2D_3/BiasAdd:output:0*
T0*/
_output_shapes
:?????????%@2
Natural_Conv2D_3/Elu?
#Lane_Conv2D_4/Conv2D/ReadVariableOpReadVariableOp,lane_conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02%
#Lane_Conv2D_4/Conv2D/ReadVariableOp?
Lane_Conv2D_4/Conv2DConv2DLane_Conv2D_3/Elu:activations:0+Lane_Conv2D_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????#@*
paddingVALID*
strides
2
Lane_Conv2D_4/Conv2D?
$Lane_Conv2D_4/BiasAdd/ReadVariableOpReadVariableOp-lane_conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02&
$Lane_Conv2D_4/BiasAdd/ReadVariableOp?
Lane_Conv2D_4/BiasAddBiasAddLane_Conv2D_4/Conv2D:output:0,Lane_Conv2D_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????#@2
Lane_Conv2D_4/BiasAdd?
Lane_Conv2D_4/EluEluLane_Conv2D_4/BiasAdd:output:0*
T0*/
_output_shapes
:?????????#@2
Lane_Conv2D_4/Elu?
&Natural_Conv2D_4/Conv2D/ReadVariableOpReadVariableOp/natural_conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02(
&Natural_Conv2D_4/Conv2D/ReadVariableOp?
Natural_Conv2D_4/Conv2DConv2D"Natural_Conv2D_3/Elu:activations:0.Natural_Conv2D_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????#@*
paddingVALID*
strides
2
Natural_Conv2D_4/Conv2D?
'Natural_Conv2D_4/BiasAdd/ReadVariableOpReadVariableOp0natural_conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02)
'Natural_Conv2D_4/BiasAdd/ReadVariableOp?
Natural_Conv2D_4/BiasAddBiasAdd Natural_Conv2D_4/Conv2D:output:0/Natural_Conv2D_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????#@2
Natural_Conv2D_4/BiasAdd?
Natural_Conv2D_4/EluElu!Natural_Conv2D_4/BiasAdd:output:0*
T0*/
_output_shapes
:?????????#@2
Natural_Conv2D_4/Elu?
#Lane_Conv2D_5/Conv2D/ReadVariableOpReadVariableOp,lane_conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02%
#Lane_Conv2D_5/Conv2D/ReadVariableOp?
Lane_Conv2D_5/Conv2DConv2DLane_Conv2D_4/Elu:activations:0+Lane_Conv2D_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????!@*
paddingVALID*
strides
2
Lane_Conv2D_5/Conv2D?
$Lane_Conv2D_5/BiasAdd/ReadVariableOpReadVariableOp-lane_conv2d_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02&
$Lane_Conv2D_5/BiasAdd/ReadVariableOp?
Lane_Conv2D_5/BiasAddBiasAddLane_Conv2D_5/Conv2D:output:0,Lane_Conv2D_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????!@2
Lane_Conv2D_5/BiasAdd?
Lane_Conv2D_5/EluEluLane_Conv2D_5/BiasAdd:output:0*
T0*/
_output_shapes
:?????????!@2
Lane_Conv2D_5/Elu?
&Natural_Conv2D_5/Conv2D/ReadVariableOpReadVariableOp/natural_conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02(
&Natural_Conv2D_5/Conv2D/ReadVariableOp?
Natural_Conv2D_5/Conv2DConv2D"Natural_Conv2D_4/Elu:activations:0.Natural_Conv2D_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????!@*
paddingVALID*
strides
2
Natural_Conv2D_5/Conv2D?
'Natural_Conv2D_5/BiasAdd/ReadVariableOpReadVariableOp0natural_conv2d_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02)
'Natural_Conv2D_5/BiasAdd/ReadVariableOp?
Natural_Conv2D_5/BiasAddBiasAdd Natural_Conv2D_5/Conv2D:output:0/Natural_Conv2D_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????!@2
Natural_Conv2D_5/BiasAdd?
Natural_Conv2D_5/EluElu!Natural_Conv2D_5/BiasAdd:output:0*
T0*/
_output_shapes
:?????????!@2
Natural_Conv2D_5/Eluw
Flattened_y/ConstConst*
_output_shapes
:*
dtype0*
valueB"????@k  2
Flattened_y/Const?
Flattened_y/ReshapeReshapeLane_Conv2D_5/Elu:activations:0Flattened_y/Const:output:0*
T0*)
_output_shapes
:???????????2
Flattened_y/Reshapew
Flattened_x/ConstConst*
_output_shapes
:*
dtype0*
valueB"????@k  2
Flattened_x/Const?
Flattened_x/ReshapeReshape"Natural_Conv2D_5/Elu:activations:0Flattened_x/Const:output:0*
T0*)
_output_shapes
:???????????2
Flattened_x/Reshape?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
??d*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMulFlattened_x/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense/BiasAdd?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??d*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMulFlattened_y/Reshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_1/BiasAddt
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate/concat/axis?
concatenate/concatConcatV2dense/BiasAdd:output:0dense_1/BiasAdd:output:0 concatenate/concat/axis:output:0*
N*
T0*(
_output_shapes
:??????????2
concatenate/concat?
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	?d*
dtype02
dense_2/MatMul/ReadVariableOp?
dense_2/MatMulMatMulconcatenate/concat:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_2/MatMul?
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype02 
dense_2/BiasAdd/ReadVariableOp?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
dense_2/BiasAddm
dense_2/EluEludense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
dense_2/Elu?
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

:d2*
dtype02
dense_3/MatMul/ReadVariableOp?
dense_3/MatMulMatMuldense_2/Elu:activations:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_3/MatMul?
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02 
dense_3/BiasAdd/ReadVariableOp?
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
dense_3/BiasAddm
dense_3/EluEludense_3/BiasAdd:output:0*
T0*'
_output_shapes
:?????????22
dense_3/Elu?
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes

:2
*
dtype02
dense_4/MatMul/ReadVariableOp?
dense_4/MatMulMatMuldense_3/Elu:activations:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_4/MatMul?
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02 
dense_4/BiasAdd/ReadVariableOp?
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_4/BiasAddm
dense_4/EluEludense_4/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
dense_4/Elu?
"throttle_out/MatMul/ReadVariableOpReadVariableOp+throttle_out_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02$
"throttle_out/MatMul/ReadVariableOp?
throttle_out/MatMulMatMuldense_4/Elu:activations:0*throttle_out/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
throttle_out/MatMul?
#throttle_out/BiasAdd/ReadVariableOpReadVariableOp,throttle_out_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02%
#throttle_out/BiasAdd/ReadVariableOp?
throttle_out/BiasAddBiasAddthrottle_out/MatMul:product:0+throttle_out/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
throttle_out/BiasAdd?
"steering_out/MatMul/ReadVariableOpReadVariableOp+steering_out_matmul_readvariableop_resource*
_output_shapes

:
*
dtype02$
"steering_out/MatMul/ReadVariableOp?
steering_out/MatMulMatMuldense_4/Elu:activations:0*steering_out/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
steering_out/MatMul?
#steering_out/BiasAdd/ReadVariableOpReadVariableOp,steering_out_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02%
#steering_out/BiasAdd/ReadVariableOp?
steering_out/BiasAddBiasAddsteering_out/MatMul:product:0+steering_out/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
steering_out/BiasAdd?

IdentityIdentitysteering_out/BiasAdd:output:0%^Lane_Conv2D_1/BiasAdd/ReadVariableOp$^Lane_Conv2D_1/Conv2D/ReadVariableOp%^Lane_Conv2D_2/BiasAdd/ReadVariableOp$^Lane_Conv2D_2/Conv2D/ReadVariableOp%^Lane_Conv2D_3/BiasAdd/ReadVariableOp$^Lane_Conv2D_3/Conv2D/ReadVariableOp%^Lane_Conv2D_4/BiasAdd/ReadVariableOp$^Lane_Conv2D_4/Conv2D/ReadVariableOp%^Lane_Conv2D_5/BiasAdd/ReadVariableOp$^Lane_Conv2D_5/Conv2D/ReadVariableOp(^Natural_Conv2D_1/BiasAdd/ReadVariableOp'^Natural_Conv2D_1/Conv2D/ReadVariableOp(^Natural_Conv2D_2/BiasAdd/ReadVariableOp'^Natural_Conv2D_2/Conv2D/ReadVariableOp(^Natural_Conv2D_3/BiasAdd/ReadVariableOp'^Natural_Conv2D_3/Conv2D/ReadVariableOp(^Natural_Conv2D_4/BiasAdd/ReadVariableOp'^Natural_Conv2D_4/Conv2D/ReadVariableOp(^Natural_Conv2D_5/BiasAdd/ReadVariableOp'^Natural_Conv2D_5/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp$^steering_out/BiasAdd/ReadVariableOp#^steering_out/MatMul/ReadVariableOp$^throttle_out/BiasAdd/ReadVariableOp#^throttle_out/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity?


Identity_1Identitythrottle_out/BiasAdd:output:0%^Lane_Conv2D_1/BiasAdd/ReadVariableOp$^Lane_Conv2D_1/Conv2D/ReadVariableOp%^Lane_Conv2D_2/BiasAdd/ReadVariableOp$^Lane_Conv2D_2/Conv2D/ReadVariableOp%^Lane_Conv2D_3/BiasAdd/ReadVariableOp$^Lane_Conv2D_3/Conv2D/ReadVariableOp%^Lane_Conv2D_4/BiasAdd/ReadVariableOp$^Lane_Conv2D_4/Conv2D/ReadVariableOp%^Lane_Conv2D_5/BiasAdd/ReadVariableOp$^Lane_Conv2D_5/Conv2D/ReadVariableOp(^Natural_Conv2D_1/BiasAdd/ReadVariableOp'^Natural_Conv2D_1/Conv2D/ReadVariableOp(^Natural_Conv2D_2/BiasAdd/ReadVariableOp'^Natural_Conv2D_2/Conv2D/ReadVariableOp(^Natural_Conv2D_3/BiasAdd/ReadVariableOp'^Natural_Conv2D_3/Conv2D/ReadVariableOp(^Natural_Conv2D_4/BiasAdd/ReadVariableOp'^Natural_Conv2D_4/Conv2D/ReadVariableOp(^Natural_Conv2D_5/BiasAdd/ReadVariableOp'^Natural_Conv2D_5/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp$^steering_out/BiasAdd/ReadVariableOp#^steering_out/MatMul/ReadVariableOp$^throttle_out/BiasAdd/ReadVariableOp#^throttle_out/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
~:???????????:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$Lane_Conv2D_1/BiasAdd/ReadVariableOp$Lane_Conv2D_1/BiasAdd/ReadVariableOp2J
#Lane_Conv2D_1/Conv2D/ReadVariableOp#Lane_Conv2D_1/Conv2D/ReadVariableOp2L
$Lane_Conv2D_2/BiasAdd/ReadVariableOp$Lane_Conv2D_2/BiasAdd/ReadVariableOp2J
#Lane_Conv2D_2/Conv2D/ReadVariableOp#Lane_Conv2D_2/Conv2D/ReadVariableOp2L
$Lane_Conv2D_3/BiasAdd/ReadVariableOp$Lane_Conv2D_3/BiasAdd/ReadVariableOp2J
#Lane_Conv2D_3/Conv2D/ReadVariableOp#Lane_Conv2D_3/Conv2D/ReadVariableOp2L
$Lane_Conv2D_4/BiasAdd/ReadVariableOp$Lane_Conv2D_4/BiasAdd/ReadVariableOp2J
#Lane_Conv2D_4/Conv2D/ReadVariableOp#Lane_Conv2D_4/Conv2D/ReadVariableOp2L
$Lane_Conv2D_5/BiasAdd/ReadVariableOp$Lane_Conv2D_5/BiasAdd/ReadVariableOp2J
#Lane_Conv2D_5/Conv2D/ReadVariableOp#Lane_Conv2D_5/Conv2D/ReadVariableOp2R
'Natural_Conv2D_1/BiasAdd/ReadVariableOp'Natural_Conv2D_1/BiasAdd/ReadVariableOp2P
&Natural_Conv2D_1/Conv2D/ReadVariableOp&Natural_Conv2D_1/Conv2D/ReadVariableOp2R
'Natural_Conv2D_2/BiasAdd/ReadVariableOp'Natural_Conv2D_2/BiasAdd/ReadVariableOp2P
&Natural_Conv2D_2/Conv2D/ReadVariableOp&Natural_Conv2D_2/Conv2D/ReadVariableOp2R
'Natural_Conv2D_3/BiasAdd/ReadVariableOp'Natural_Conv2D_3/BiasAdd/ReadVariableOp2P
&Natural_Conv2D_3/Conv2D/ReadVariableOp&Natural_Conv2D_3/Conv2D/ReadVariableOp2R
'Natural_Conv2D_4/BiasAdd/ReadVariableOp'Natural_Conv2D_4/BiasAdd/ReadVariableOp2P
&Natural_Conv2D_4/Conv2D/ReadVariableOp&Natural_Conv2D_4/Conv2D/ReadVariableOp2R
'Natural_Conv2D_5/BiasAdd/ReadVariableOp'Natural_Conv2D_5/BiasAdd/ReadVariableOp2P
&Natural_Conv2D_5/Conv2D/ReadVariableOp&Natural_Conv2D_5/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2J
#steering_out/BiasAdd/ReadVariableOp#steering_out/BiasAdd/ReadVariableOp2H
"steering_out/MatMul/ReadVariableOp"steering_out/MatMul/ReadVariableOp2J
#throttle_out/BiasAdd/ReadVariableOp#throttle_out/BiasAdd/ReadVariableOp2H
"throttle_out/MatMul/ReadVariableOp"throttle_out/MatMul/ReadVariableOp:[ W
1
_output_shapes
:???????????
"
_user_specified_name
inputs/0:[W
1
_output_shapes
:???????????
"
_user_specified_name
inputs/1
?
?
H__inference_Lane_Conv2D_2_layer_call_and_return_conditional_losses_16431

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????&M *
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????&M 2	
BiasAdd]
EluEluBiasAdd:output:0*
T0*/
_output_shapes
:?????????&M 2
Elu?
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????&M 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????P?: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????P?
 
_user_specified_nameinputs
?
b
F__inference_Flattened_x_layer_call_and_return_conditional_losses_18166

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????@k  2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:???????????2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????!@:W S
/
_output_shapes
:?????????!@
 
_user_specified_nameinputs
?q
?
@__inference_model_layer_call_and_return_conditional_losses_16698

inputs
inputs_1-
lane_conv2d_1_16398:!
lane_conv2d_1_16400:0
natural_conv2d_1_16415:$
natural_conv2d_1_16417:-
lane_conv2d_2_16432: !
lane_conv2d_2_16434: 0
natural_conv2d_2_16449: $
natural_conv2d_2_16451: -
lane_conv2d_3_16466: @!
lane_conv2d_3_16468:@0
natural_conv2d_3_16483: @$
natural_conv2d_3_16485:@-
lane_conv2d_4_16500:@@!
lane_conv2d_4_16502:@0
natural_conv2d_4_16517:@@$
natural_conv2d_4_16519:@-
lane_conv2d_5_16534:@@!
lane_conv2d_5_16536:@0
natural_conv2d_5_16551:@@$
natural_conv2d_5_16553:@
dense_16583:
??d
dense_16585:d!
dense_1_16599:
??d
dense_1_16601:d 
dense_2_16625:	?d
dense_2_16627:d
dense_3_16642:d2
dense_3_16644:2
dense_4_16659:2

dense_4_16661:
$
throttle_out_16675:
 
throttle_out_16677:$
steering_out_16691:
 
steering_out_16693:
identity

identity_1??%Lane_Conv2D_1/StatefulPartitionedCall?%Lane_Conv2D_2/StatefulPartitionedCall?%Lane_Conv2D_3/StatefulPartitionedCall?%Lane_Conv2D_4/StatefulPartitionedCall?%Lane_Conv2D_5/StatefulPartitionedCall?(Natural_Conv2D_1/StatefulPartitionedCall?(Natural_Conv2D_2/StatefulPartitionedCall?(Natural_Conv2D_3/StatefulPartitionedCall?(Natural_Conv2D_4/StatefulPartitionedCall?(Natural_Conv2D_5/StatefulPartitionedCall?dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?dense_3/StatefulPartitionedCall?dense_4/StatefulPartitionedCall?$steering_out/StatefulPartitionedCall?$throttle_out/StatefulPartitionedCall?
%Lane_Conv2D_1/StatefulPartitionedCallStatefulPartitionedCallinputs_1lane_conv2d_1_16398lane_conv2d_1_16400*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????P?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_Lane_Conv2D_1_layer_call_and_return_conditional_losses_163972'
%Lane_Conv2D_1/StatefulPartitionedCall?
(Natural_Conv2D_1/StatefulPartitionedCallStatefulPartitionedCallinputsnatural_conv2d_1_16415natural_conv2d_1_16417*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????P?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_Natural_Conv2D_1_layer_call_and_return_conditional_losses_164142*
(Natural_Conv2D_1/StatefulPartitionedCall?
%Lane_Conv2D_2/StatefulPartitionedCallStatefulPartitionedCall.Lane_Conv2D_1/StatefulPartitionedCall:output:0lane_conv2d_2_16432lane_conv2d_2_16434*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????&M *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_Lane_Conv2D_2_layer_call_and_return_conditional_losses_164312'
%Lane_Conv2D_2/StatefulPartitionedCall?
(Natural_Conv2D_2/StatefulPartitionedCallStatefulPartitionedCall1Natural_Conv2D_1/StatefulPartitionedCall:output:0natural_conv2d_2_16449natural_conv2d_2_16451*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????&M *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_Natural_Conv2D_2_layer_call_and_return_conditional_losses_164482*
(Natural_Conv2D_2/StatefulPartitionedCall?
%Lane_Conv2D_3/StatefulPartitionedCallStatefulPartitionedCall.Lane_Conv2D_2/StatefulPartitionedCall:output:0lane_conv2d_3_16466lane_conv2d_3_16468*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????%@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_Lane_Conv2D_3_layer_call_and_return_conditional_losses_164652'
%Lane_Conv2D_3/StatefulPartitionedCall?
(Natural_Conv2D_3/StatefulPartitionedCallStatefulPartitionedCall1Natural_Conv2D_2/StatefulPartitionedCall:output:0natural_conv2d_3_16483natural_conv2d_3_16485*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????%@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_Natural_Conv2D_3_layer_call_and_return_conditional_losses_164822*
(Natural_Conv2D_3/StatefulPartitionedCall?
%Lane_Conv2D_4/StatefulPartitionedCallStatefulPartitionedCall.Lane_Conv2D_3/StatefulPartitionedCall:output:0lane_conv2d_4_16500lane_conv2d_4_16502*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????#@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_Lane_Conv2D_4_layer_call_and_return_conditional_losses_164992'
%Lane_Conv2D_4/StatefulPartitionedCall?
(Natural_Conv2D_4/StatefulPartitionedCallStatefulPartitionedCall1Natural_Conv2D_3/StatefulPartitionedCall:output:0natural_conv2d_4_16517natural_conv2d_4_16519*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????#@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_Natural_Conv2D_4_layer_call_and_return_conditional_losses_165162*
(Natural_Conv2D_4/StatefulPartitionedCall?
%Lane_Conv2D_5/StatefulPartitionedCallStatefulPartitionedCall.Lane_Conv2D_4/StatefulPartitionedCall:output:0lane_conv2d_5_16534lane_conv2d_5_16536*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????!@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_Lane_Conv2D_5_layer_call_and_return_conditional_losses_165332'
%Lane_Conv2D_5/StatefulPartitionedCall?
(Natural_Conv2D_5/StatefulPartitionedCallStatefulPartitionedCall1Natural_Conv2D_4/StatefulPartitionedCall:output:0natural_conv2d_5_16551natural_conv2d_5_16553*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????!@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_Natural_Conv2D_5_layer_call_and_return_conditional_losses_165502*
(Natural_Conv2D_5/StatefulPartitionedCall?
Flattened_y/PartitionedCallPartitionedCall.Lane_Conv2D_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_Flattened_y_layer_call_and_return_conditional_losses_165622
Flattened_y/PartitionedCall?
Flattened_x/PartitionedCallPartitionedCall1Natural_Conv2D_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_Flattened_x_layer_call_and_return_conditional_losses_165702
Flattened_x/PartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall$Flattened_x/PartitionedCall:output:0dense_16583dense_16585*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_165822
dense/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall$Flattened_y/PartitionedCall:output:0dense_1_16599dense_1_16601*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_165982!
dense_1/StatefulPartitionedCall?
concatenate/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_concatenate_layer_call_and_return_conditional_losses_166112
concatenate/PartitionedCall?
dense_2/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0dense_2_16625dense_2_16627*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_166242!
dense_2/StatefulPartitionedCall?
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_16642dense_3_16644*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_166412!
dense_3/StatefulPartitionedCall?
dense_4/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0dense_4_16659dense_4_16661*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_166582!
dense_4/StatefulPartitionedCall?
$throttle_out/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0throttle_out_16675throttle_out_16677*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_throttle_out_layer_call_and_return_conditional_losses_166742&
$throttle_out/StatefulPartitionedCall?
$steering_out/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0steering_out_16691steering_out_16693*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_steering_out_layer_call_and_return_conditional_losses_166902&
$steering_out/StatefulPartitionedCall?
IdentityIdentity-steering_out/StatefulPartitionedCall:output:0&^Lane_Conv2D_1/StatefulPartitionedCall&^Lane_Conv2D_2/StatefulPartitionedCall&^Lane_Conv2D_3/StatefulPartitionedCall&^Lane_Conv2D_4/StatefulPartitionedCall&^Lane_Conv2D_5/StatefulPartitionedCall)^Natural_Conv2D_1/StatefulPartitionedCall)^Natural_Conv2D_2/StatefulPartitionedCall)^Natural_Conv2D_3/StatefulPartitionedCall)^Natural_Conv2D_4/StatefulPartitionedCall)^Natural_Conv2D_5/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall%^steering_out/StatefulPartitionedCall%^throttle_out/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity-throttle_out/StatefulPartitionedCall:output:0&^Lane_Conv2D_1/StatefulPartitionedCall&^Lane_Conv2D_2/StatefulPartitionedCall&^Lane_Conv2D_3/StatefulPartitionedCall&^Lane_Conv2D_4/StatefulPartitionedCall&^Lane_Conv2D_5/StatefulPartitionedCall)^Natural_Conv2D_1/StatefulPartitionedCall)^Natural_Conv2D_2/StatefulPartitionedCall)^Natural_Conv2D_3/StatefulPartitionedCall)^Natural_Conv2D_4/StatefulPartitionedCall)^Natural_Conv2D_5/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall%^steering_out/StatefulPartitionedCall%^throttle_out/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
~:???????????:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2N
%Lane_Conv2D_1/StatefulPartitionedCall%Lane_Conv2D_1/StatefulPartitionedCall2N
%Lane_Conv2D_2/StatefulPartitionedCall%Lane_Conv2D_2/StatefulPartitionedCall2N
%Lane_Conv2D_3/StatefulPartitionedCall%Lane_Conv2D_3/StatefulPartitionedCall2N
%Lane_Conv2D_4/StatefulPartitionedCall%Lane_Conv2D_4/StatefulPartitionedCall2N
%Lane_Conv2D_5/StatefulPartitionedCall%Lane_Conv2D_5/StatefulPartitionedCall2T
(Natural_Conv2D_1/StatefulPartitionedCall(Natural_Conv2D_1/StatefulPartitionedCall2T
(Natural_Conv2D_2/StatefulPartitionedCall(Natural_Conv2D_2/StatefulPartitionedCall2T
(Natural_Conv2D_3/StatefulPartitionedCall(Natural_Conv2D_3/StatefulPartitionedCall2T
(Natural_Conv2D_4/StatefulPartitionedCall(Natural_Conv2D_4/StatefulPartitionedCall2T
(Natural_Conv2D_5/StatefulPartitionedCall(Natural_Conv2D_5/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2L
$steering_out/StatefulPartitionedCall$steering_out/StatefulPartitionedCall2L
$throttle_out/StatefulPartitionedCall$throttle_out/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs:YU
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
0__inference_Natural_Conv2D_5_layer_call_fn_18140

inputs!
unknown:@@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????!@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_Natural_Conv2D_5_layer_call_and_return_conditional_losses_165502
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????!@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????#@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????#@
 
_user_specified_nameinputs
?
?
K__inference_Natural_Conv2D_2_layer_call_and_return_conditional_losses_18011

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????&M *
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????&M 2	
BiasAdd]
EluEluBiasAdd:output:0*
T0*/
_output_shapes
:?????????&M 2
Elu?
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????&M 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????P?: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????P?
 
_user_specified_nameinputs
?
G
+__inference_Flattened_x_layer_call_fn_18171

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_Flattened_x_layer_call_and_return_conditional_losses_165702
PartitionedCalln
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????!@:W S
/
_output_shapes
:?????????!@
 
_user_specified_nameinputs
?
?
%__inference_dense_layer_call_fn_18201

inputs
unknown:
??d
	unknown_0:d
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_165822
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?	
?
@__inference_dense_layer_call_and_return_conditional_losses_18192

inputs2
matmul_readvariableop_resource:
??d-
biasadd_readvariableop_resource:d
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??d*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?
W
+__inference_concatenate_layer_call_fn_18233
inputs_0
inputs_1
identity?
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_concatenate_layer_call_and_return_conditional_losses_166112
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:?????????d:?????????d:Q M
'
_output_shapes
:?????????d
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????d
"
_user_specified_name
inputs/1
?
?
-__inference_Lane_Conv2D_1_layer_call_fn_18000

inputs!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:?????????P?*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_Lane_Conv2D_1_layer_call_and_return_conditional_losses_163972
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*0
_output_shapes
:?????????P?2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?

?
B__inference_dense_4_layer_call_and_return_conditional_losses_18284

inputs0
matmul_readvariableop_resource:2
-
biasadd_readvariableop_resource:

identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2	
BiasAddU
EluEluBiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
Elu?
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
'__inference_dense_3_layer_call_fn_18273

inputs
unknown:d2
	unknown_0:2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_166412
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????d
 
_user_specified_nameinputs
?

?
B__inference_dense_2_layer_call_and_return_conditional_losses_16624

inputs1
matmul_readvariableop_resource:	?d-
biasadd_readvariableop_resource:d
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?d*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d2	
BiasAddU
EluEluBiasAdd:output:0*
T0*'
_output_shapes
:?????????d2
Elu?
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????d2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?I
!__inference__traced_restore_19044
file_prefixB
(assignvariableop_natural_conv2d_1_kernel:6
(assignvariableop_1_natural_conv2d_1_bias:A
'assignvariableop_2_lane_conv2d_1_kernel:3
%assignvariableop_3_lane_conv2d_1_bias:D
*assignvariableop_4_natural_conv2d_2_kernel: 6
(assignvariableop_5_natural_conv2d_2_bias: A
'assignvariableop_6_lane_conv2d_2_kernel: 3
%assignvariableop_7_lane_conv2d_2_bias: D
*assignvariableop_8_natural_conv2d_3_kernel: @6
(assignvariableop_9_natural_conv2d_3_bias:@B
(assignvariableop_10_lane_conv2d_3_kernel: @4
&assignvariableop_11_lane_conv2d_3_bias:@E
+assignvariableop_12_natural_conv2d_4_kernel:@@7
)assignvariableop_13_natural_conv2d_4_bias:@B
(assignvariableop_14_lane_conv2d_4_kernel:@@4
&assignvariableop_15_lane_conv2d_4_bias:@E
+assignvariableop_16_natural_conv2d_5_kernel:@@7
)assignvariableop_17_natural_conv2d_5_bias:@B
(assignvariableop_18_lane_conv2d_5_kernel:@@4
&assignvariableop_19_lane_conv2d_5_bias:@4
 assignvariableop_20_dense_kernel:
??d,
assignvariableop_21_dense_bias:d6
"assignvariableop_22_dense_1_kernel:
??d.
 assignvariableop_23_dense_1_bias:d5
"assignvariableop_24_dense_2_kernel:	?d.
 assignvariableop_25_dense_2_bias:d4
"assignvariableop_26_dense_3_kernel:d2.
 assignvariableop_27_dense_3_bias:24
"assignvariableop_28_dense_4_kernel:2
.
 assignvariableop_29_dense_4_bias:
9
'assignvariableop_30_steering_out_kernel:
3
%assignvariableop_31_steering_out_bias:9
'assignvariableop_32_throttle_out_kernel:
3
%assignvariableop_33_throttle_out_bias:'
assignvariableop_34_adam_iter:	 )
assignvariableop_35_adam_beta_1: )
assignvariableop_36_adam_beta_2: (
assignvariableop_37_adam_decay: 0
&assignvariableop_38_adam_learning_rate: #
assignvariableop_39_total: #
assignvariableop_40_count: %
assignvariableop_41_total_1: %
assignvariableop_42_count_1: %
assignvariableop_43_total_2: %
assignvariableop_44_count_2: L
2assignvariableop_45_adam_natural_conv2d_1_kernel_m:>
0assignvariableop_46_adam_natural_conv2d_1_bias_m:I
/assignvariableop_47_adam_lane_conv2d_1_kernel_m:;
-assignvariableop_48_adam_lane_conv2d_1_bias_m:L
2assignvariableop_49_adam_natural_conv2d_2_kernel_m: >
0assignvariableop_50_adam_natural_conv2d_2_bias_m: I
/assignvariableop_51_adam_lane_conv2d_2_kernel_m: ;
-assignvariableop_52_adam_lane_conv2d_2_bias_m: L
2assignvariableop_53_adam_natural_conv2d_3_kernel_m: @>
0assignvariableop_54_adam_natural_conv2d_3_bias_m:@I
/assignvariableop_55_adam_lane_conv2d_3_kernel_m: @;
-assignvariableop_56_adam_lane_conv2d_3_bias_m:@L
2assignvariableop_57_adam_natural_conv2d_4_kernel_m:@@>
0assignvariableop_58_adam_natural_conv2d_4_bias_m:@I
/assignvariableop_59_adam_lane_conv2d_4_kernel_m:@@;
-assignvariableop_60_adam_lane_conv2d_4_bias_m:@L
2assignvariableop_61_adam_natural_conv2d_5_kernel_m:@@>
0assignvariableop_62_adam_natural_conv2d_5_bias_m:@I
/assignvariableop_63_adam_lane_conv2d_5_kernel_m:@@;
-assignvariableop_64_adam_lane_conv2d_5_bias_m:@;
'assignvariableop_65_adam_dense_kernel_m:
??d3
%assignvariableop_66_adam_dense_bias_m:d=
)assignvariableop_67_adam_dense_1_kernel_m:
??d5
'assignvariableop_68_adam_dense_1_bias_m:d<
)assignvariableop_69_adam_dense_2_kernel_m:	?d5
'assignvariableop_70_adam_dense_2_bias_m:d;
)assignvariableop_71_adam_dense_3_kernel_m:d25
'assignvariableop_72_adam_dense_3_bias_m:2;
)assignvariableop_73_adam_dense_4_kernel_m:2
5
'assignvariableop_74_adam_dense_4_bias_m:
@
.assignvariableop_75_adam_steering_out_kernel_m:
:
,assignvariableop_76_adam_steering_out_bias_m:@
.assignvariableop_77_adam_throttle_out_kernel_m:
:
,assignvariableop_78_adam_throttle_out_bias_m:L
2assignvariableop_79_adam_natural_conv2d_1_kernel_v:>
0assignvariableop_80_adam_natural_conv2d_1_bias_v:I
/assignvariableop_81_adam_lane_conv2d_1_kernel_v:;
-assignvariableop_82_adam_lane_conv2d_1_bias_v:L
2assignvariableop_83_adam_natural_conv2d_2_kernel_v: >
0assignvariableop_84_adam_natural_conv2d_2_bias_v: I
/assignvariableop_85_adam_lane_conv2d_2_kernel_v: ;
-assignvariableop_86_adam_lane_conv2d_2_bias_v: L
2assignvariableop_87_adam_natural_conv2d_3_kernel_v: @>
0assignvariableop_88_adam_natural_conv2d_3_bias_v:@I
/assignvariableop_89_adam_lane_conv2d_3_kernel_v: @;
-assignvariableop_90_adam_lane_conv2d_3_bias_v:@L
2assignvariableop_91_adam_natural_conv2d_4_kernel_v:@@>
0assignvariableop_92_adam_natural_conv2d_4_bias_v:@I
/assignvariableop_93_adam_lane_conv2d_4_kernel_v:@@;
-assignvariableop_94_adam_lane_conv2d_4_bias_v:@L
2assignvariableop_95_adam_natural_conv2d_5_kernel_v:@@>
0assignvariableop_96_adam_natural_conv2d_5_bias_v:@I
/assignvariableop_97_adam_lane_conv2d_5_kernel_v:@@;
-assignvariableop_98_adam_lane_conv2d_5_bias_v:@;
'assignvariableop_99_adam_dense_kernel_v:
??d4
&assignvariableop_100_adam_dense_bias_v:d>
*assignvariableop_101_adam_dense_1_kernel_v:
??d6
(assignvariableop_102_adam_dense_1_bias_v:d=
*assignvariableop_103_adam_dense_2_kernel_v:	?d6
(assignvariableop_104_adam_dense_2_bias_v:d<
*assignvariableop_105_adam_dense_3_kernel_v:d26
(assignvariableop_106_adam_dense_3_bias_v:2<
*assignvariableop_107_adam_dense_4_kernel_v:2
6
(assignvariableop_108_adam_dense_4_bias_v:
A
/assignvariableop_109_adam_steering_out_kernel_v:
;
-assignvariableop_110_adam_steering_out_bias_v:A
/assignvariableop_111_adam_throttle_out_kernel_v:
;
-assignvariableop_112_adam_throttle_out_bias_v:
identity_114??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_100?AssignVariableOp_101?AssignVariableOp_102?AssignVariableOp_103?AssignVariableOp_104?AssignVariableOp_105?AssignVariableOp_106?AssignVariableOp_107?AssignVariableOp_108?AssignVariableOp_109?AssignVariableOp_11?AssignVariableOp_110?AssignVariableOp_111?AssignVariableOp_112?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_53?AssignVariableOp_54?AssignVariableOp_55?AssignVariableOp_56?AssignVariableOp_57?AssignVariableOp_58?AssignVariableOp_59?AssignVariableOp_6?AssignVariableOp_60?AssignVariableOp_61?AssignVariableOp_62?AssignVariableOp_63?AssignVariableOp_64?AssignVariableOp_65?AssignVariableOp_66?AssignVariableOp_67?AssignVariableOp_68?AssignVariableOp_69?AssignVariableOp_7?AssignVariableOp_70?AssignVariableOp_71?AssignVariableOp_72?AssignVariableOp_73?AssignVariableOp_74?AssignVariableOp_75?AssignVariableOp_76?AssignVariableOp_77?AssignVariableOp_78?AssignVariableOp_79?AssignVariableOp_8?AssignVariableOp_80?AssignVariableOp_81?AssignVariableOp_82?AssignVariableOp_83?AssignVariableOp_84?AssignVariableOp_85?AssignVariableOp_86?AssignVariableOp_87?AssignVariableOp_88?AssignVariableOp_89?AssignVariableOp_9?AssignVariableOp_90?AssignVariableOp_91?AssignVariableOp_92?AssignVariableOp_93?AssignVariableOp_94?AssignVariableOp_95?AssignVariableOp_96?AssignVariableOp_97?AssignVariableOp_98?AssignVariableOp_99?@
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:r*
dtype0*??
value??B??rB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-15/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-15/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-16/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-16/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-16/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-16/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:r*
dtype0*?
value?B?rB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*?
dtypesv
t2r	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp(assignvariableop_natural_conv2d_1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp(assignvariableop_1_natural_conv2d_1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp'assignvariableop_2_lane_conv2d_1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp%assignvariableop_3_lane_conv2d_1_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp*assignvariableop_4_natural_conv2d_2_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp(assignvariableop_5_natural_conv2d_2_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp'assignvariableop_6_lane_conv2d_2_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp%assignvariableop_7_lane_conv2d_2_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp*assignvariableop_8_natural_conv2d_3_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp(assignvariableop_9_natural_conv2d_3_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp(assignvariableop_10_lane_conv2d_3_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp&assignvariableop_11_lane_conv2d_3_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp+assignvariableop_12_natural_conv2d_4_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp)assignvariableop_13_natural_conv2d_4_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp(assignvariableop_14_lane_conv2d_4_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp&assignvariableop_15_lane_conv2d_4_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp+assignvariableop_16_natural_conv2d_5_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp)assignvariableop_17_natural_conv2d_5_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp(assignvariableop_18_lane_conv2d_5_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp&assignvariableop_19_lane_conv2d_5_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp assignvariableop_20_dense_kernelIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOpassignvariableop_21_dense_biasIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp"assignvariableop_22_dense_1_kernelIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp assignvariableop_23_dense_1_biasIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp"assignvariableop_24_dense_2_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp assignvariableop_25_dense_2_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp"assignvariableop_26_dense_3_kernelIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp assignvariableop_27_dense_3_biasIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp"assignvariableop_28_dense_4_kernelIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp assignvariableop_29_dense_4_biasIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp'assignvariableop_30_steering_out_kernelIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp%assignvariableop_31_steering_out_biasIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp'assignvariableop_32_throttle_out_kernelIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp%assignvariableop_33_throttle_out_biasIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOpassignvariableop_34_adam_iterIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOpassignvariableop_35_adam_beta_1Identity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOpassignvariableop_36_adam_beta_2Identity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOpassignvariableop_37_adam_decayIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp&assignvariableop_38_adam_learning_rateIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOpassignvariableop_39_totalIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOpassignvariableop_40_countIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOpassignvariableop_41_total_1Identity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOpassignvariableop_42_count_1Identity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOpassignvariableop_43_total_2Identity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOpassignvariableop_44_count_2Identity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45?
AssignVariableOp_45AssignVariableOp2assignvariableop_45_adam_natural_conv2d_1_kernel_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46?
AssignVariableOp_46AssignVariableOp0assignvariableop_46_adam_natural_conv2d_1_bias_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47?
AssignVariableOp_47AssignVariableOp/assignvariableop_47_adam_lane_conv2d_1_kernel_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48?
AssignVariableOp_48AssignVariableOp-assignvariableop_48_adam_lane_conv2d_1_bias_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49?
AssignVariableOp_49AssignVariableOp2assignvariableop_49_adam_natural_conv2d_2_kernel_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50?
AssignVariableOp_50AssignVariableOp0assignvariableop_50_adam_natural_conv2d_2_bias_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51?
AssignVariableOp_51AssignVariableOp/assignvariableop_51_adam_lane_conv2d_2_kernel_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52?
AssignVariableOp_52AssignVariableOp-assignvariableop_52_adam_lane_conv2d_2_bias_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53?
AssignVariableOp_53AssignVariableOp2assignvariableop_53_adam_natural_conv2d_3_kernel_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54?
AssignVariableOp_54AssignVariableOp0assignvariableop_54_adam_natural_conv2d_3_bias_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55?
AssignVariableOp_55AssignVariableOp/assignvariableop_55_adam_lane_conv2d_3_kernel_mIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56?
AssignVariableOp_56AssignVariableOp-assignvariableop_56_adam_lane_conv2d_3_bias_mIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57?
AssignVariableOp_57AssignVariableOp2assignvariableop_57_adam_natural_conv2d_4_kernel_mIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58?
AssignVariableOp_58AssignVariableOp0assignvariableop_58_adam_natural_conv2d_4_bias_mIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59?
AssignVariableOp_59AssignVariableOp/assignvariableop_59_adam_lane_conv2d_4_kernel_mIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60?
AssignVariableOp_60AssignVariableOp-assignvariableop_60_adam_lane_conv2d_4_bias_mIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_60n
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:2
Identity_61?
AssignVariableOp_61AssignVariableOp2assignvariableop_61_adam_natural_conv2d_5_kernel_mIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_61n
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:2
Identity_62?
AssignVariableOp_62AssignVariableOp0assignvariableop_62_adam_natural_conv2d_5_bias_mIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_62n
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:2
Identity_63?
AssignVariableOp_63AssignVariableOp/assignvariableop_63_adam_lane_conv2d_5_kernel_mIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_63n
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:2
Identity_64?
AssignVariableOp_64AssignVariableOp-assignvariableop_64_adam_lane_conv2d_5_bias_mIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_64n
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:2
Identity_65?
AssignVariableOp_65AssignVariableOp'assignvariableop_65_adam_dense_kernel_mIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_65n
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:2
Identity_66?
AssignVariableOp_66AssignVariableOp%assignvariableop_66_adam_dense_bias_mIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_66n
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:2
Identity_67?
AssignVariableOp_67AssignVariableOp)assignvariableop_67_adam_dense_1_kernel_mIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_67n
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:2
Identity_68?
AssignVariableOp_68AssignVariableOp'assignvariableop_68_adam_dense_1_bias_mIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_68n
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:2
Identity_69?
AssignVariableOp_69AssignVariableOp)assignvariableop_69_adam_dense_2_kernel_mIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_69n
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:2
Identity_70?
AssignVariableOp_70AssignVariableOp'assignvariableop_70_adam_dense_2_bias_mIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_70n
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:2
Identity_71?
AssignVariableOp_71AssignVariableOp)assignvariableop_71_adam_dense_3_kernel_mIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_71n
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:2
Identity_72?
AssignVariableOp_72AssignVariableOp'assignvariableop_72_adam_dense_3_bias_mIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_72n
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:2
Identity_73?
AssignVariableOp_73AssignVariableOp)assignvariableop_73_adam_dense_4_kernel_mIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_73n
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:2
Identity_74?
AssignVariableOp_74AssignVariableOp'assignvariableop_74_adam_dense_4_bias_mIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_74n
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:2
Identity_75?
AssignVariableOp_75AssignVariableOp.assignvariableop_75_adam_steering_out_kernel_mIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_75n
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:2
Identity_76?
AssignVariableOp_76AssignVariableOp,assignvariableop_76_adam_steering_out_bias_mIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_76n
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:2
Identity_77?
AssignVariableOp_77AssignVariableOp.assignvariableop_77_adam_throttle_out_kernel_mIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_77n
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:2
Identity_78?
AssignVariableOp_78AssignVariableOp,assignvariableop_78_adam_throttle_out_bias_mIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_78n
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:2
Identity_79?
AssignVariableOp_79AssignVariableOp2assignvariableop_79_adam_natural_conv2d_1_kernel_vIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_79n
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:2
Identity_80?
AssignVariableOp_80AssignVariableOp0assignvariableop_80_adam_natural_conv2d_1_bias_vIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_80n
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:2
Identity_81?
AssignVariableOp_81AssignVariableOp/assignvariableop_81_adam_lane_conv2d_1_kernel_vIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_81n
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:2
Identity_82?
AssignVariableOp_82AssignVariableOp-assignvariableop_82_adam_lane_conv2d_1_bias_vIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_82n
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:2
Identity_83?
AssignVariableOp_83AssignVariableOp2assignvariableop_83_adam_natural_conv2d_2_kernel_vIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_83n
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:2
Identity_84?
AssignVariableOp_84AssignVariableOp0assignvariableop_84_adam_natural_conv2d_2_bias_vIdentity_84:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_84n
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:2
Identity_85?
AssignVariableOp_85AssignVariableOp/assignvariableop_85_adam_lane_conv2d_2_kernel_vIdentity_85:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_85n
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:2
Identity_86?
AssignVariableOp_86AssignVariableOp-assignvariableop_86_adam_lane_conv2d_2_bias_vIdentity_86:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_86n
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:2
Identity_87?
AssignVariableOp_87AssignVariableOp2assignvariableop_87_adam_natural_conv2d_3_kernel_vIdentity_87:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_87n
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:2
Identity_88?
AssignVariableOp_88AssignVariableOp0assignvariableop_88_adam_natural_conv2d_3_bias_vIdentity_88:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_88n
Identity_89IdentityRestoreV2:tensors:89"/device:CPU:0*
T0*
_output_shapes
:2
Identity_89?
AssignVariableOp_89AssignVariableOp/assignvariableop_89_adam_lane_conv2d_3_kernel_vIdentity_89:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_89n
Identity_90IdentityRestoreV2:tensors:90"/device:CPU:0*
T0*
_output_shapes
:2
Identity_90?
AssignVariableOp_90AssignVariableOp-assignvariableop_90_adam_lane_conv2d_3_bias_vIdentity_90:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_90n
Identity_91IdentityRestoreV2:tensors:91"/device:CPU:0*
T0*
_output_shapes
:2
Identity_91?
AssignVariableOp_91AssignVariableOp2assignvariableop_91_adam_natural_conv2d_4_kernel_vIdentity_91:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_91n
Identity_92IdentityRestoreV2:tensors:92"/device:CPU:0*
T0*
_output_shapes
:2
Identity_92?
AssignVariableOp_92AssignVariableOp0assignvariableop_92_adam_natural_conv2d_4_bias_vIdentity_92:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_92n
Identity_93IdentityRestoreV2:tensors:93"/device:CPU:0*
T0*
_output_shapes
:2
Identity_93?
AssignVariableOp_93AssignVariableOp/assignvariableop_93_adam_lane_conv2d_4_kernel_vIdentity_93:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_93n
Identity_94IdentityRestoreV2:tensors:94"/device:CPU:0*
T0*
_output_shapes
:2
Identity_94?
AssignVariableOp_94AssignVariableOp-assignvariableop_94_adam_lane_conv2d_4_bias_vIdentity_94:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_94n
Identity_95IdentityRestoreV2:tensors:95"/device:CPU:0*
T0*
_output_shapes
:2
Identity_95?
AssignVariableOp_95AssignVariableOp2assignvariableop_95_adam_natural_conv2d_5_kernel_vIdentity_95:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_95n
Identity_96IdentityRestoreV2:tensors:96"/device:CPU:0*
T0*
_output_shapes
:2
Identity_96?
AssignVariableOp_96AssignVariableOp0assignvariableop_96_adam_natural_conv2d_5_bias_vIdentity_96:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_96n
Identity_97IdentityRestoreV2:tensors:97"/device:CPU:0*
T0*
_output_shapes
:2
Identity_97?
AssignVariableOp_97AssignVariableOp/assignvariableop_97_adam_lane_conv2d_5_kernel_vIdentity_97:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_97n
Identity_98IdentityRestoreV2:tensors:98"/device:CPU:0*
T0*
_output_shapes
:2
Identity_98?
AssignVariableOp_98AssignVariableOp-assignvariableop_98_adam_lane_conv2d_5_bias_vIdentity_98:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_98n
Identity_99IdentityRestoreV2:tensors:99"/device:CPU:0*
T0*
_output_shapes
:2
Identity_99?
AssignVariableOp_99AssignVariableOp'assignvariableop_99_adam_dense_kernel_vIdentity_99:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_99q
Identity_100IdentityRestoreV2:tensors:100"/device:CPU:0*
T0*
_output_shapes
:2
Identity_100?
AssignVariableOp_100AssignVariableOp&assignvariableop_100_adam_dense_bias_vIdentity_100:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_100q
Identity_101IdentityRestoreV2:tensors:101"/device:CPU:0*
T0*
_output_shapes
:2
Identity_101?
AssignVariableOp_101AssignVariableOp*assignvariableop_101_adam_dense_1_kernel_vIdentity_101:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_101q
Identity_102IdentityRestoreV2:tensors:102"/device:CPU:0*
T0*
_output_shapes
:2
Identity_102?
AssignVariableOp_102AssignVariableOp(assignvariableop_102_adam_dense_1_bias_vIdentity_102:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_102q
Identity_103IdentityRestoreV2:tensors:103"/device:CPU:0*
T0*
_output_shapes
:2
Identity_103?
AssignVariableOp_103AssignVariableOp*assignvariableop_103_adam_dense_2_kernel_vIdentity_103:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_103q
Identity_104IdentityRestoreV2:tensors:104"/device:CPU:0*
T0*
_output_shapes
:2
Identity_104?
AssignVariableOp_104AssignVariableOp(assignvariableop_104_adam_dense_2_bias_vIdentity_104:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_104q
Identity_105IdentityRestoreV2:tensors:105"/device:CPU:0*
T0*
_output_shapes
:2
Identity_105?
AssignVariableOp_105AssignVariableOp*assignvariableop_105_adam_dense_3_kernel_vIdentity_105:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_105q
Identity_106IdentityRestoreV2:tensors:106"/device:CPU:0*
T0*
_output_shapes
:2
Identity_106?
AssignVariableOp_106AssignVariableOp(assignvariableop_106_adam_dense_3_bias_vIdentity_106:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_106q
Identity_107IdentityRestoreV2:tensors:107"/device:CPU:0*
T0*
_output_shapes
:2
Identity_107?
AssignVariableOp_107AssignVariableOp*assignvariableop_107_adam_dense_4_kernel_vIdentity_107:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_107q
Identity_108IdentityRestoreV2:tensors:108"/device:CPU:0*
T0*
_output_shapes
:2
Identity_108?
AssignVariableOp_108AssignVariableOp(assignvariableop_108_adam_dense_4_bias_vIdentity_108:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_108q
Identity_109IdentityRestoreV2:tensors:109"/device:CPU:0*
T0*
_output_shapes
:2
Identity_109?
AssignVariableOp_109AssignVariableOp/assignvariableop_109_adam_steering_out_kernel_vIdentity_109:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_109q
Identity_110IdentityRestoreV2:tensors:110"/device:CPU:0*
T0*
_output_shapes
:2
Identity_110?
AssignVariableOp_110AssignVariableOp-assignvariableop_110_adam_steering_out_bias_vIdentity_110:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_110q
Identity_111IdentityRestoreV2:tensors:111"/device:CPU:0*
T0*
_output_shapes
:2
Identity_111?
AssignVariableOp_111AssignVariableOp/assignvariableop_111_adam_throttle_out_kernel_vIdentity_111:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_111q
Identity_112IdentityRestoreV2:tensors:112"/device:CPU:0*
T0*
_output_shapes
:2
Identity_112?
AssignVariableOp_112AssignVariableOp-assignvariableop_112_adam_throttle_out_bias_vIdentity_112:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1129
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_113Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_113?
Identity_114IdentityIdentity_113:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99*
T0*
_output_shapes
: 2
Identity_114"%
identity_114Identity_114:output:0*?
_input_shapes?
?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102,
AssignVariableOp_100AssignVariableOp_1002,
AssignVariableOp_101AssignVariableOp_1012,
AssignVariableOp_102AssignVariableOp_1022,
AssignVariableOp_103AssignVariableOp_1032,
AssignVariableOp_104AssignVariableOp_1042,
AssignVariableOp_105AssignVariableOp_1052,
AssignVariableOp_106AssignVariableOp_1062,
AssignVariableOp_107AssignVariableOp_1072,
AssignVariableOp_108AssignVariableOp_1082,
AssignVariableOp_109AssignVariableOp_1092*
AssignVariableOp_11AssignVariableOp_112,
AssignVariableOp_110AssignVariableOp_1102,
AssignVariableOp_111AssignVariableOp_1112,
AssignVariableOp_112AssignVariableOp_1122*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842*
AssignVariableOp_85AssignVariableOp_852*
AssignVariableOp_86AssignVariableOp_862*
AssignVariableOp_87AssignVariableOp_872*
AssignVariableOp_88AssignVariableOp_882*
AssignVariableOp_89AssignVariableOp_892(
AssignVariableOp_9AssignVariableOp_92*
AssignVariableOp_90AssignVariableOp_902*
AssignVariableOp_91AssignVariableOp_912*
AssignVariableOp_92AssignVariableOp_922*
AssignVariableOp_93AssignVariableOp_932*
AssignVariableOp_94AssignVariableOp_942*
AssignVariableOp_95AssignVariableOp_952*
AssignVariableOp_96AssignVariableOp_962*
AssignVariableOp_97AssignVariableOp_972*
AssignVariableOp_98AssignVariableOp_982*
AssignVariableOp_99AssignVariableOp_99:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
K__inference_Natural_Conv2D_5_layer_call_and_return_conditional_losses_18131

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????!@*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????!@2	
BiasAdd]
EluEluBiasAdd:output:0*
T0*/
_output_shapes
:?????????!@2
Elu?
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????!@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????#@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????#@
 
_user_specified_nameinputs
?
?
#__inference_signature_wrapper_17554
input_1
input_2!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3: 
	unknown_4: #
	unknown_5: 
	unknown_6: #
	unknown_7: @
	unknown_8:@#
	unknown_9: @

unknown_10:@$

unknown_11:@@

unknown_12:@$

unknown_13:@@

unknown_14:@$

unknown_15:@@

unknown_16:@$

unknown_17:@@

unknown_18:@

unknown_19:
??d

unknown_20:d

unknown_21:
??d

unknown_22:d

unknown_23:	?d

unknown_24:d

unknown_25:d2

unknown_26:2

unknown_27:2


unknown_28:


unknown_29:


unknown_30:

unknown_31:


unknown_32:
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32*/
Tin(
&2$*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????:?????????*D
_read_only_resource_inputs&
$"	
 !"#*0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference__wrapped_model_163772
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
~:???????????:???????????: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_1:ZV
1
_output_shapes
:???????????
!
_user_specified_name	input_2
?
?
0__inference_Natural_Conv2D_3_layer_call_fn_18060

inputs!
unknown: @
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????%@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_Natural_Conv2D_3_layer_call_and_return_conditional_losses_164822
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????%@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????&M : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????&M 
 
_user_specified_nameinputs
?
?
K__inference_Natural_Conv2D_2_layer_call_and_return_conditional_losses_16448

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????&M *
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????&M 2	
BiasAdd]
EluEluBiasAdd:output:0*
T0*/
_output_shapes
:?????????&M 2
Elu?
IdentityIdentityElu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????&M 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :?????????P?: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:?????????P?
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
E
input_1:
serving_default_input_1:0???????????
E
input_2:
serving_default_input_2:0???????????@
steering_out0
StatefulPartitionedCall:0?????????@
throttle_out0
StatefulPartitionedCall:1?????????tensorflow/serving/predict:??
??
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
	layer_with_weights-6
	layer-8

layer_with_weights-7

layer-9
layer_with_weights-8
layer-10
layer_with_weights-9
layer-11
layer-12
layer-13
layer_with_weights-10
layer-14
layer_with_weights-11
layer-15
layer-16
layer_with_weights-12
layer-17
layer_with_weights-13
layer-18
layer_with_weights-14
layer-19
layer_with_weights-15
layer-20
layer_with_weights-16
layer-21
	optimizer
loss
regularization_losses
	variables
trainable_variables
	keras_api

signatures
+?&call_and_return_all_conditional_losses
?_default_save_signature
?__call__"??
_tf_keras_network??{"name": "model", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Functional", "config": {"name": "model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 164, 320, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 164, 320, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_2"}, "name": "input_2", "inbound_nodes": []}, {"class_name": "Conv2D", "config": {"name": "Natural_Conv2D_1", "trainable": true, "dtype": "float32", "filters": 24, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "Natural_Conv2D_1", "inbound_nodes": [[["input_1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "Lane_Conv2D_1", "trainable": true, "dtype": "float32", "filters": 24, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "Lane_Conv2D_1", "inbound_nodes": [[["input_2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "Natural_Conv2D_2", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "Natural_Conv2D_2", "inbound_nodes": [[["Natural_Conv2D_1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "Lane_Conv2D_2", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "Lane_Conv2D_2", "inbound_nodes": [[["Lane_Conv2D_1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "Natural_Conv2D_3", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "Natural_Conv2D_3", "inbound_nodes": [[["Natural_Conv2D_2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "Lane_Conv2D_3", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "Lane_Conv2D_3", "inbound_nodes": [[["Lane_Conv2D_2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "Natural_Conv2D_4", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "Natural_Conv2D_4", "inbound_nodes": [[["Natural_Conv2D_3", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "Lane_Conv2D_4", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "Lane_Conv2D_4", "inbound_nodes": [[["Lane_Conv2D_3", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "Natural_Conv2D_5", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "Natural_Conv2D_5", "inbound_nodes": [[["Natural_Conv2D_4", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "Lane_Conv2D_5", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "Lane_Conv2D_5", "inbound_nodes": [[["Lane_Conv2D_4", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "Flattened_x", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "Flattened_x", "inbound_nodes": [[["Natural_Conv2D_5", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "Flattened_y", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "Flattened_y", "inbound_nodes": [[["Lane_Conv2D_5", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 100, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense", "inbound_nodes": [[["Flattened_x", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 100, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1", "inbound_nodes": [[["Flattened_y", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concatenate", "trainable": true, "dtype": "float32", "axis": 1}, "name": "concatenate", "inbound_nodes": [[["dense", 0, 0, {}], ["dense_1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 100, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_2", "inbound_nodes": [[["concatenate", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 50, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_3", "inbound_nodes": [[["dense_2", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_4", "trainable": true, "dtype": "float32", "units": 10, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_4", "inbound_nodes": [[["dense_3", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "steering_out", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "steering_out", "inbound_nodes": [[["dense_4", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "throttle_out", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "throttle_out", "inbound_nodes": [[["dense_4", 0, 0, {}]]]}], "input_layers": [["input_1", 0, 0], ["input_2", 0, 0]], "output_layers": [["steering_out", 0, 0], ["throttle_out", 0, 0]]}, "shared_object_id": 56, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 164, 320, 3]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 164, 320, 3]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": [{"class_name": "TensorShape", "items": [null, 164, 320, 3]}, {"class_name": "TensorShape", "items": [null, 164, 320, 3]}], "is_graph_network": true, "save_spec": [{"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 164, 320, 3]}, "float32", "input_1"]}, {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 164, 320, 3]}, "float32", "input_2"]}], "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 164, 320, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": [], "shared_object_id": 0}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 164, 320, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_2"}, "name": "input_2", "inbound_nodes": [], "shared_object_id": 1}, {"class_name": "Conv2D", "config": {"name": "Natural_Conv2D_1", "trainable": true, "dtype": "float32", "filters": 24, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "Natural_Conv2D_1", "inbound_nodes": [[["input_1", 0, 0, {}]]], "shared_object_id": 4}, {"class_name": "Conv2D", "config": {"name": "Lane_Conv2D_1", "trainable": true, "dtype": "float32", "filters": 24, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "Lane_Conv2D_1", "inbound_nodes": [[["input_2", 0, 0, {}]]], "shared_object_id": 7}, {"class_name": "Conv2D", "config": {"name": "Natural_Conv2D_2", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 8}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 9}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "Natural_Conv2D_2", "inbound_nodes": [[["Natural_Conv2D_1", 0, 0, {}]]], "shared_object_id": 10}, {"class_name": "Conv2D", "config": {"name": "Lane_Conv2D_2", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "Lane_Conv2D_2", "inbound_nodes": [[["Lane_Conv2D_1", 0, 0, {}]]], "shared_object_id": 13}, {"class_name": "Conv2D", "config": {"name": "Natural_Conv2D_3", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 14}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 15}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "Natural_Conv2D_3", "inbound_nodes": [[["Natural_Conv2D_2", 0, 0, {}]]], "shared_object_id": 16}, {"class_name": "Conv2D", "config": {"name": "Lane_Conv2D_3", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 17}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 18}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "Lane_Conv2D_3", "inbound_nodes": [[["Lane_Conv2D_2", 0, 0, {}]]], "shared_object_id": 19}, {"class_name": "Conv2D", "config": {"name": "Natural_Conv2D_4", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 20}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 21}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "Natural_Conv2D_4", "inbound_nodes": [[["Natural_Conv2D_3", 0, 0, {}]]], "shared_object_id": 22}, {"class_name": "Conv2D", "config": {"name": "Lane_Conv2D_4", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 23}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 24}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "Lane_Conv2D_4", "inbound_nodes": [[["Lane_Conv2D_3", 0, 0, {}]]], "shared_object_id": 25}, {"class_name": "Conv2D", "config": {"name": "Natural_Conv2D_5", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 26}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 27}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "Natural_Conv2D_5", "inbound_nodes": [[["Natural_Conv2D_4", 0, 0, {}]]], "shared_object_id": 28}, {"class_name": "Conv2D", "config": {"name": "Lane_Conv2D_5", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 29}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 30}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "Lane_Conv2D_5", "inbound_nodes": [[["Lane_Conv2D_4", 0, 0, {}]]], "shared_object_id": 31}, {"class_name": "Flatten", "config": {"name": "Flattened_x", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "Flattened_x", "inbound_nodes": [[["Natural_Conv2D_5", 0, 0, {}]]], "shared_object_id": 32}, {"class_name": "Flatten", "config": {"name": "Flattened_y", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "Flattened_y", "inbound_nodes": [[["Lane_Conv2D_5", 0, 0, {}]]], "shared_object_id": 33}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 100, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 34}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 35}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense", "inbound_nodes": [[["Flattened_x", 0, 0, {}]]], "shared_object_id": 36}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 100, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 37}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 38}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1", "inbound_nodes": [[["Flattened_y", 0, 0, {}]]], "shared_object_id": 39}, {"class_name": "Concatenate", "config": {"name": "concatenate", "trainable": true, "dtype": "float32", "axis": 1}, "name": "concatenate", "inbound_nodes": [[["dense", 0, 0, {}], ["dense_1", 0, 0, {}]]], "shared_object_id": 40}, {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 100, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 41}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 42}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_2", "inbound_nodes": [[["concatenate", 0, 0, {}]]], "shared_object_id": 43}, {"class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 50, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 44}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 45}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_3", "inbound_nodes": [[["dense_2", 0, 0, {}]]], "shared_object_id": 46}, {"class_name": "Dense", "config": {"name": "dense_4", "trainable": true, "dtype": "float32", "units": 10, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 47}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 48}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_4", "inbound_nodes": [[["dense_3", 0, 0, {}]]], "shared_object_id": 49}, {"class_name": "Dense", "config": {"name": "steering_out", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 50}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 51}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "steering_out", "inbound_nodes": [[["dense_4", 0, 0, {}]]], "shared_object_id": 52}, {"class_name": "Dense", "config": {"name": "throttle_out", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 53}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 54}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "throttle_out", "inbound_nodes": [[["dense_4", 0, 0, {}]]], "shared_object_id": 55}], "input_layers": [["input_1", 0, 0], ["input_2", 0, 0]], "output_layers": [["steering_out", 0, 0], ["throttle_out", 0, 0]]}}, "training_config": {"loss": {"steering_out": "mean_squared_error", "throttle_out": "mean_squared_error"}, "metrics": [[], []], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 9.999999747378752e-05, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "input_1", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 164, 320, 3]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 164, 320, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "input_2", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 164, 320, 3]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 164, 320, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_2"}}
?

kernel
bias
 regularization_losses
!	variables
"trainable_variables
#	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "Natural_Conv2D_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "Natural_Conv2D_1", "trainable": true, "dtype": "float32", "filters": 24, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["input_1", 0, 0, {}]]], "shared_object_id": 4, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}, "shared_object_id": 59}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 164, 320, 3]}}
?

$kernel
%bias
&regularization_losses
'	variables
(trainable_variables
)	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "Lane_Conv2D_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "Lane_Conv2D_1", "trainable": true, "dtype": "float32", "filters": 24, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["input_2", 0, 0, {}]]], "shared_object_id": 7, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}, "shared_object_id": 60}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 164, 320, 3]}}
?

*kernel
+bias
,regularization_losses
-	variables
.trainable_variables
/	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "Natural_Conv2D_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "Natural_Conv2D_2", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 8}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 9}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["Natural_Conv2D_1", 0, 0, {}]]], "shared_object_id": 10, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 24}}, "shared_object_id": 61}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 80, 158, 24]}}
?

0kernel
1bias
2regularization_losses
3	variables
4trainable_variables
5	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "Lane_Conv2D_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "Lane_Conv2D_2", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["Lane_Conv2D_1", 0, 0, {}]]], "shared_object_id": 13, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 24}}, "shared_object_id": 62}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 80, 158, 24]}}
?

6kernel
7bias
8regularization_losses
9	variables
:trainable_variables
;	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "Natural_Conv2D_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "Natural_Conv2D_3", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 14}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 15}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["Natural_Conv2D_2", 0, 0, {}]]], "shared_object_id": 16, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}, "shared_object_id": 63}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 38, 77, 32]}}
?

<kernel
=bias
>regularization_losses
?	variables
@trainable_variables
A	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "Lane_Conv2D_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "Lane_Conv2D_3", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [5, 5]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 17}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 18}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["Lane_Conv2D_2", 0, 0, {}]]], "shared_object_id": 19, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}, "shared_object_id": 64}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 38, 77, 32]}}
?

Bkernel
Cbias
Dregularization_losses
E	variables
Ftrainable_variables
G	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "Natural_Conv2D_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "Natural_Conv2D_4", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 20}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 21}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["Natural_Conv2D_3", 0, 0, {}]]], "shared_object_id": 22, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 65}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 17, 37, 64]}}
?

Hkernel
Ibias
Jregularization_losses
K	variables
Ltrainable_variables
M	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "Lane_Conv2D_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "Lane_Conv2D_4", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 23}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 24}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["Lane_Conv2D_3", 0, 0, {}]]], "shared_object_id": 25, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 66}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 17, 37, 64]}}
?

Nkernel
Obias
Pregularization_losses
Q	variables
Rtrainable_variables
S	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "Natural_Conv2D_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "Natural_Conv2D_5", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 26}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 27}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["Natural_Conv2D_4", 0, 0, {}]]], "shared_object_id": 28, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 67}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 15, 35, 64]}}
?

Tkernel
Ubias
Vregularization_losses
W	variables
Xtrainable_variables
Y	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "Lane_Conv2D_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "Lane_Conv2D_5", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 29}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 30}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["Lane_Conv2D_4", 0, 0, {}]]], "shared_object_id": 31, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}, "shared_object_id": 68}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 15, 35, 64]}}
?
Zregularization_losses
[	variables
\trainable_variables
]	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "Flattened_x", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "Flattened_x", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "inbound_nodes": [[["Natural_Conv2D_5", 0, 0, {}]]], "shared_object_id": 32, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 69}}
?
^regularization_losses
_	variables
`trainable_variables
a	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "Flattened_y", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "Flattened_y", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "inbound_nodes": [[["Lane_Conv2D_5", 0, 0, {}]]], "shared_object_id": 33, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 70}}
?	

bkernel
cbias
dregularization_losses
e	variables
ftrainable_variables
g	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 100, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 34}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 35}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["Flattened_x", 0, 0, {}]]], "shared_object_id": 36, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 27456}}, "shared_object_id": 71}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 27456]}}
?	

hkernel
ibias
jregularization_losses
k	variables
ltrainable_variables
m	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 100, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 37}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 38}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["Flattened_y", 0, 0, {}]]], "shared_object_id": 39, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 27456}}, "shared_object_id": 72}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 27456]}}
?
nregularization_losses
o	variables
ptrainable_variables
q	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "concatenate", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Concatenate", "config": {"name": "concatenate", "trainable": true, "dtype": "float32", "axis": 1}, "inbound_nodes": [[["dense", 0, 0, {}], ["dense_1", 0, 0, {}]]], "shared_object_id": 40, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 100]}, {"class_name": "TensorShape", "items": [null, 100]}]}
?	

rkernel
sbias
tregularization_losses
u	variables
vtrainable_variables
w	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dense_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 100, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 41}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 42}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["concatenate", 0, 0, {}]]], "shared_object_id": 43, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 200}}, "shared_object_id": 73}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 200]}}
?

xkernel
ybias
zregularization_losses
{	variables
|trainable_variables
}	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dense_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 50, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 44}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 45}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["dense_2", 0, 0, {}]]], "shared_object_id": 46, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 100}}, "shared_object_id": 74}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 100]}}
?	

~kernel
bias
?regularization_losses
?	variables
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dense_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_4", "trainable": true, "dtype": "float32", "units": 10, "activation": "elu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 47}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 48}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["dense_3", 0, 0, {}]]], "shared_object_id": 49, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 50}}, "shared_object_id": 75}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 50]}}
?	
?kernel
	?bias
?regularization_losses
?	variables
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "steering_out", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "steering_out", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 50}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 51}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["dense_4", 0, 0, {}]]], "shared_object_id": 52, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 10}}, "shared_object_id": 76}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 10]}}
?	
?kernel
	?bias
?regularization_losses
?	variables
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "throttle_out", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "throttle_out", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 53}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 54}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["dense_4", 0, 0, {}]]], "shared_object_id": 55, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 10}}, "shared_object_id": 77}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 10]}}
?
	?iter
?beta_1
?beta_2

?decay
?learning_ratem?m?$m?%m?*m?+m?0m?1m?6m?7m?<m?=m?Bm?Cm?Hm?Im?Nm?Om?Tm?Um?bm?cm?hm?im?rm?sm?xm?ym?~m?m?	?m?	?m?	?m?	?m?v?v?$v?%v?*v?+v?0v?1v?6v?7v?<v?=v?Bv?Cv?Hv?Iv?Nv?Ov?Tv?Uv?bv?cv?hv?iv?rv?sv?xv?yv?~v?v?	?v?	?v?	?v?	?v?"
	optimizer
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
?
0
1
$2
%3
*4
+5
06
17
68
79
<10
=11
B12
C13
H14
I15
N16
O17
T18
U19
b20
c21
h22
i23
r24
s25
x26
y27
~28
29
?30
?31
?32
?33"
trackable_list_wrapper
?
0
1
$2
%3
*4
+5
06
17
68
79
<10
=11
B12
C13
H14
I15
N16
O17
T18
U19
b20
c21
h22
i23
r24
s25
x26
y27
~28
29
?30
?31
?32
?33"
trackable_list_wrapper
?
?layers
?layer_metrics
?metrics
 ?layer_regularization_losses
regularization_losses
	variables
trainable_variables
?non_trainable_variables
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
1:/2Natural_Conv2D_1/kernel
#:!2Natural_Conv2D_1/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
?layers
?layer_metrics
?metrics
 ?layer_regularization_losses
 regularization_losses
!	variables
"trainable_variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.:,2Lane_Conv2D_1/kernel
 :2Lane_Conv2D_1/bias
 "
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
?
?layers
?layer_metrics
?metrics
 ?layer_regularization_losses
&regularization_losses
'	variables
(trainable_variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
1:/ 2Natural_Conv2D_2/kernel
#:! 2Natural_Conv2D_2/bias
 "
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
?
?layers
?layer_metrics
?metrics
 ?layer_regularization_losses
,regularization_losses
-	variables
.trainable_variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.:, 2Lane_Conv2D_2/kernel
 : 2Lane_Conv2D_2/bias
 "
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
?
?layers
?layer_metrics
?metrics
 ?layer_regularization_losses
2regularization_losses
3	variables
4trainable_variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
1:/ @2Natural_Conv2D_3/kernel
#:!@2Natural_Conv2D_3/bias
 "
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
?
?layers
?layer_metrics
?metrics
 ?layer_regularization_losses
8regularization_losses
9	variables
:trainable_variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.:, @2Lane_Conv2D_3/kernel
 :@2Lane_Conv2D_3/bias
 "
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
?
?layers
?layer_metrics
?metrics
 ?layer_regularization_losses
>regularization_losses
?	variables
@trainable_variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
1:/@@2Natural_Conv2D_4/kernel
#:!@2Natural_Conv2D_4/bias
 "
trackable_list_wrapper
.
B0
C1"
trackable_list_wrapper
.
B0
C1"
trackable_list_wrapper
?
?layers
?layer_metrics
?metrics
 ?layer_regularization_losses
Dregularization_losses
E	variables
Ftrainable_variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.:,@@2Lane_Conv2D_4/kernel
 :@2Lane_Conv2D_4/bias
 "
trackable_list_wrapper
.
H0
I1"
trackable_list_wrapper
.
H0
I1"
trackable_list_wrapper
?
?layers
?layer_metrics
?metrics
 ?layer_regularization_losses
Jregularization_losses
K	variables
Ltrainable_variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
1:/@@2Natural_Conv2D_5/kernel
#:!@2Natural_Conv2D_5/bias
 "
trackable_list_wrapper
.
N0
O1"
trackable_list_wrapper
.
N0
O1"
trackable_list_wrapper
?
?layers
?layer_metrics
?metrics
 ?layer_regularization_losses
Pregularization_losses
Q	variables
Rtrainable_variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.:,@@2Lane_Conv2D_5/kernel
 :@2Lane_Conv2D_5/bias
 "
trackable_list_wrapper
.
T0
U1"
trackable_list_wrapper
.
T0
U1"
trackable_list_wrapper
?
?layers
?layer_metrics
?metrics
 ?layer_regularization_losses
Vregularization_losses
W	variables
Xtrainable_variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?layer_metrics
?metrics
 ?layer_regularization_losses
Zregularization_losses
[	variables
\trainable_variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?layer_metrics
?metrics
 ?layer_regularization_losses
^regularization_losses
_	variables
`trainable_variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 :
??d2dense/kernel
:d2
dense/bias
 "
trackable_list_wrapper
.
b0
c1"
trackable_list_wrapper
.
b0
c1"
trackable_list_wrapper
?
?layers
?layer_metrics
?metrics
 ?layer_regularization_losses
dregularization_losses
e	variables
ftrainable_variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
": 
??d2dense_1/kernel
:d2dense_1/bias
 "
trackable_list_wrapper
.
h0
i1"
trackable_list_wrapper
.
h0
i1"
trackable_list_wrapper
?
?layers
?layer_metrics
?metrics
 ?layer_regularization_losses
jregularization_losses
k	variables
ltrainable_variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?layers
?layer_metrics
?metrics
 ?layer_regularization_losses
nregularization_losses
o	variables
ptrainable_variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:	?d2dense_2/kernel
:d2dense_2/bias
 "
trackable_list_wrapper
.
r0
s1"
trackable_list_wrapper
.
r0
s1"
trackable_list_wrapper
?
?layers
?layer_metrics
?metrics
 ?layer_regularization_losses
tregularization_losses
u	variables
vtrainable_variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 :d22dense_3/kernel
:22dense_3/bias
 "
trackable_list_wrapper
.
x0
y1"
trackable_list_wrapper
.
x0
y1"
trackable_list_wrapper
?
?layers
?layer_metrics
?metrics
 ?layer_regularization_losses
zregularization_losses
{	variables
|trainable_variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 :2
2dense_4/kernel
:
2dense_4/bias
 "
trackable_list_wrapper
.
~0
1"
trackable_list_wrapper
.
~0
1"
trackable_list_wrapper
?
?layers
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?	variables
?trainable_variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
%:#
2steering_out/kernel
:2steering_out/bias
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?layers
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?	variables
?trainable_variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
%:#
2throttle_out/kernel
:2throttle_out/bias
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?layers
?layer_metrics
?metrics
 ?layer_regularization_losses
?regularization_losses
?	variables
?trainable_variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
?
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21"
trackable_list_wrapper
 "
trackable_dict_wrapper
8
?0
?1
?2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?

?total

?count
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 78}
?

?total

?count
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "steering_out_loss", "dtype": "float32", "config": {"name": "steering_out_loss", "dtype": "float32"}, "shared_object_id": 79}
?

?total

?count
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "throttle_out_loss", "dtype": "float32", "config": {"name": "throttle_out_loss", "dtype": "float32"}, "shared_object_id": 80}
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
6:42Adam/Natural_Conv2D_1/kernel/m
(:&2Adam/Natural_Conv2D_1/bias/m
3:12Adam/Lane_Conv2D_1/kernel/m
%:#2Adam/Lane_Conv2D_1/bias/m
6:4 2Adam/Natural_Conv2D_2/kernel/m
(:& 2Adam/Natural_Conv2D_2/bias/m
3:1 2Adam/Lane_Conv2D_2/kernel/m
%:# 2Adam/Lane_Conv2D_2/bias/m
6:4 @2Adam/Natural_Conv2D_3/kernel/m
(:&@2Adam/Natural_Conv2D_3/bias/m
3:1 @2Adam/Lane_Conv2D_3/kernel/m
%:#@2Adam/Lane_Conv2D_3/bias/m
6:4@@2Adam/Natural_Conv2D_4/kernel/m
(:&@2Adam/Natural_Conv2D_4/bias/m
3:1@@2Adam/Lane_Conv2D_4/kernel/m
%:#@2Adam/Lane_Conv2D_4/bias/m
6:4@@2Adam/Natural_Conv2D_5/kernel/m
(:&@2Adam/Natural_Conv2D_5/bias/m
3:1@@2Adam/Lane_Conv2D_5/kernel/m
%:#@2Adam/Lane_Conv2D_5/bias/m
%:#
??d2Adam/dense/kernel/m
:d2Adam/dense/bias/m
':%
??d2Adam/dense_1/kernel/m
:d2Adam/dense_1/bias/m
&:$	?d2Adam/dense_2/kernel/m
:d2Adam/dense_2/bias/m
%:#d22Adam/dense_3/kernel/m
:22Adam/dense_3/bias/m
%:#2
2Adam/dense_4/kernel/m
:
2Adam/dense_4/bias/m
*:(
2Adam/steering_out/kernel/m
$:"2Adam/steering_out/bias/m
*:(
2Adam/throttle_out/kernel/m
$:"2Adam/throttle_out/bias/m
6:42Adam/Natural_Conv2D_1/kernel/v
(:&2Adam/Natural_Conv2D_1/bias/v
3:12Adam/Lane_Conv2D_1/kernel/v
%:#2Adam/Lane_Conv2D_1/bias/v
6:4 2Adam/Natural_Conv2D_2/kernel/v
(:& 2Adam/Natural_Conv2D_2/bias/v
3:1 2Adam/Lane_Conv2D_2/kernel/v
%:# 2Adam/Lane_Conv2D_2/bias/v
6:4 @2Adam/Natural_Conv2D_3/kernel/v
(:&@2Adam/Natural_Conv2D_3/bias/v
3:1 @2Adam/Lane_Conv2D_3/kernel/v
%:#@2Adam/Lane_Conv2D_3/bias/v
6:4@@2Adam/Natural_Conv2D_4/kernel/v
(:&@2Adam/Natural_Conv2D_4/bias/v
3:1@@2Adam/Lane_Conv2D_4/kernel/v
%:#@2Adam/Lane_Conv2D_4/bias/v
6:4@@2Adam/Natural_Conv2D_5/kernel/v
(:&@2Adam/Natural_Conv2D_5/bias/v
3:1@@2Adam/Lane_Conv2D_5/kernel/v
%:#@2Adam/Lane_Conv2D_5/bias/v
%:#
??d2Adam/dense/kernel/v
:d2Adam/dense/bias/v
':%
??d2Adam/dense_1/kernel/v
:d2Adam/dense_1/bias/v
&:$	?d2Adam/dense_2/kernel/v
:d2Adam/dense_2/bias/v
%:#d22Adam/dense_3/kernel/v
:22Adam/dense_3/bias/v
%:#2
2Adam/dense_4/kernel/v
:
2Adam/dense_4/bias/v
*:(
2Adam/steering_out/kernel/v
$:"2Adam/steering_out/bias/v
*:(
2Adam/throttle_out/kernel/v
$:"2Adam/throttle_out/bias/v
?2?
@__inference_model_layer_call_and_return_conditional_losses_17681
@__inference_model_layer_call_and_return_conditional_losses_17808
@__inference_model_layer_call_and_return_conditional_losses_17376
@__inference_model_layer_call_and_return_conditional_losses_17470?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
 __inference__wrapped_model_16377?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *b?_
]?Z
+?(
input_1???????????
+?(
input_2???????????
?2?
%__inference_model_layer_call_fn_16771
%__inference_model_layer_call_fn_17884
%__inference_model_layer_call_fn_17960
%__inference_model_layer_call_fn_17282?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
K__inference_Natural_Conv2D_1_layer_call_and_return_conditional_losses_17971?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
0__inference_Natural_Conv2D_1_layer_call_fn_17980?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
H__inference_Lane_Conv2D_1_layer_call_and_return_conditional_losses_17991?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
-__inference_Lane_Conv2D_1_layer_call_fn_18000?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
K__inference_Natural_Conv2D_2_layer_call_and_return_conditional_losses_18011?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
0__inference_Natural_Conv2D_2_layer_call_fn_18020?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
H__inference_Lane_Conv2D_2_layer_call_and_return_conditional_losses_18031?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
-__inference_Lane_Conv2D_2_layer_call_fn_18040?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
K__inference_Natural_Conv2D_3_layer_call_and_return_conditional_losses_18051?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
0__inference_Natural_Conv2D_3_layer_call_fn_18060?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
H__inference_Lane_Conv2D_3_layer_call_and_return_conditional_losses_18071?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
-__inference_Lane_Conv2D_3_layer_call_fn_18080?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
K__inference_Natural_Conv2D_4_layer_call_and_return_conditional_losses_18091?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
0__inference_Natural_Conv2D_4_layer_call_fn_18100?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
H__inference_Lane_Conv2D_4_layer_call_and_return_conditional_losses_18111?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
-__inference_Lane_Conv2D_4_layer_call_fn_18120?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
K__inference_Natural_Conv2D_5_layer_call_and_return_conditional_losses_18131?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
0__inference_Natural_Conv2D_5_layer_call_fn_18140?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
H__inference_Lane_Conv2D_5_layer_call_and_return_conditional_losses_18151?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
-__inference_Lane_Conv2D_5_layer_call_fn_18160?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_Flattened_x_layer_call_and_return_conditional_losses_18166?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_Flattened_x_layer_call_fn_18171?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_Flattened_y_layer_call_and_return_conditional_losses_18177?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_Flattened_y_layer_call_fn_18182?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
@__inference_dense_layer_call_and_return_conditional_losses_18192?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
%__inference_dense_layer_call_fn_18201?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_dense_1_layer_call_and_return_conditional_losses_18211?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
'__inference_dense_1_layer_call_fn_18220?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_concatenate_layer_call_and_return_conditional_losses_18227?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_concatenate_layer_call_fn_18233?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_dense_2_layer_call_and_return_conditional_losses_18244?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
'__inference_dense_2_layer_call_fn_18253?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_dense_3_layer_call_and_return_conditional_losses_18264?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
'__inference_dense_3_layer_call_fn_18273?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_dense_4_layer_call_and_return_conditional_losses_18284?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
'__inference_dense_4_layer_call_fn_18293?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
G__inference_steering_out_layer_call_and_return_conditional_losses_18303?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
,__inference_steering_out_layer_call_fn_18312?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
G__inference_throttle_out_layer_call_and_return_conditional_losses_18322?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
,__inference_throttle_out_layer_call_fn_18331?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
#__inference_signature_wrapper_17554input_1input_2"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
F__inference_Flattened_x_layer_call_and_return_conditional_losses_18166b7?4
-?*
(?%
inputs?????????!@
? "'?$
?
0???????????
? ?
+__inference_Flattened_x_layer_call_fn_18171U7?4
-?*
(?%
inputs?????????!@
? "?????????????
F__inference_Flattened_y_layer_call_and_return_conditional_losses_18177b7?4
-?*
(?%
inputs?????????!@
? "'?$
?
0???????????
? ?
+__inference_Flattened_y_layer_call_fn_18182U7?4
-?*
(?%
inputs?????????!@
? "?????????????
H__inference_Lane_Conv2D_1_layer_call_and_return_conditional_losses_17991o$%9?6
/?,
*?'
inputs???????????
? ".?+
$?!
0?????????P?
? ?
-__inference_Lane_Conv2D_1_layer_call_fn_18000b$%9?6
/?,
*?'
inputs???????????
? "!??????????P??
H__inference_Lane_Conv2D_2_layer_call_and_return_conditional_losses_18031m018?5
.?+
)?&
inputs?????????P?
? "-?*
#? 
0?????????&M 
? ?
-__inference_Lane_Conv2D_2_layer_call_fn_18040`018?5
.?+
)?&
inputs?????????P?
? " ??????????&M ?
H__inference_Lane_Conv2D_3_layer_call_and_return_conditional_losses_18071l<=7?4
-?*
(?%
inputs?????????&M 
? "-?*
#? 
0?????????%@
? ?
-__inference_Lane_Conv2D_3_layer_call_fn_18080_<=7?4
-?*
(?%
inputs?????????&M 
? " ??????????%@?
H__inference_Lane_Conv2D_4_layer_call_and_return_conditional_losses_18111lHI7?4
-?*
(?%
inputs?????????%@
? "-?*
#? 
0?????????#@
? ?
-__inference_Lane_Conv2D_4_layer_call_fn_18120_HI7?4
-?*
(?%
inputs?????????%@
? " ??????????#@?
H__inference_Lane_Conv2D_5_layer_call_and_return_conditional_losses_18151lTU7?4
-?*
(?%
inputs?????????#@
? "-?*
#? 
0?????????!@
? ?
-__inference_Lane_Conv2D_5_layer_call_fn_18160_TU7?4
-?*
(?%
inputs?????????#@
? " ??????????!@?
K__inference_Natural_Conv2D_1_layer_call_and_return_conditional_losses_17971o9?6
/?,
*?'
inputs???????????
? ".?+
$?!
0?????????P?
? ?
0__inference_Natural_Conv2D_1_layer_call_fn_17980b9?6
/?,
*?'
inputs???????????
? "!??????????P??
K__inference_Natural_Conv2D_2_layer_call_and_return_conditional_losses_18011m*+8?5
.?+
)?&
inputs?????????P?
? "-?*
#? 
0?????????&M 
? ?
0__inference_Natural_Conv2D_2_layer_call_fn_18020`*+8?5
.?+
)?&
inputs?????????P?
? " ??????????&M ?
K__inference_Natural_Conv2D_3_layer_call_and_return_conditional_losses_18051l677?4
-?*
(?%
inputs?????????&M 
? "-?*
#? 
0?????????%@
? ?
0__inference_Natural_Conv2D_3_layer_call_fn_18060_677?4
-?*
(?%
inputs?????????&M 
? " ??????????%@?
K__inference_Natural_Conv2D_4_layer_call_and_return_conditional_losses_18091lBC7?4
-?*
(?%
inputs?????????%@
? "-?*
#? 
0?????????#@
? ?
0__inference_Natural_Conv2D_4_layer_call_fn_18100_BC7?4
-?*
(?%
inputs?????????%@
? " ??????????#@?
K__inference_Natural_Conv2D_5_layer_call_and_return_conditional_losses_18131lNO7?4
-?*
(?%
inputs?????????#@
? "-?*
#? 
0?????????!@
? ?
0__inference_Natural_Conv2D_5_layer_call_fn_18140_NO7?4
-?*
(?%
inputs?????????#@
? " ??????????!@?
 __inference__wrapped_model_16377?&$%01*+<=67HIBCTUNObchirsxy~????l?i
b?_
]?Z
+?(
input_1???????????
+?(
input_2???????????
? "s?p
6
steering_out&?#
steering_out?????????
6
throttle_out&?#
throttle_out??????????
F__inference_concatenate_layer_call_and_return_conditional_losses_18227?Z?W
P?M
K?H
"?
inputs/0?????????d
"?
inputs/1?????????d
? "&?#
?
0??????????
? ?
+__inference_concatenate_layer_call_fn_18233wZ?W
P?M
K?H
"?
inputs/0?????????d
"?
inputs/1?????????d
? "????????????
B__inference_dense_1_layer_call_and_return_conditional_losses_18211^hi1?.
'?$
"?
inputs???????????
? "%?"
?
0?????????d
? |
'__inference_dense_1_layer_call_fn_18220Qhi1?.
'?$
"?
inputs???????????
? "??????????d?
B__inference_dense_2_layer_call_and_return_conditional_losses_18244]rs0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????d
? {
'__inference_dense_2_layer_call_fn_18253Prs0?-
&?#
!?
inputs??????????
? "??????????d?
B__inference_dense_3_layer_call_and_return_conditional_losses_18264\xy/?,
%?"
 ?
inputs?????????d
? "%?"
?
0?????????2
? z
'__inference_dense_3_layer_call_fn_18273Oxy/?,
%?"
 ?
inputs?????????d
? "??????????2?
B__inference_dense_4_layer_call_and_return_conditional_losses_18284\~/?,
%?"
 ?
inputs?????????2
? "%?"
?
0?????????

? z
'__inference_dense_4_layer_call_fn_18293O~/?,
%?"
 ?
inputs?????????2
? "??????????
?
@__inference_dense_layer_call_and_return_conditional_losses_18192^bc1?.
'?$
"?
inputs???????????
? "%?"
?
0?????????d
? z
%__inference_dense_layer_call_fn_18201Qbc1?.
'?$
"?
inputs???????????
? "??????????d?
@__inference_model_layer_call_and_return_conditional_losses_17376?&$%01*+<=67HIBCTUNObchirsxy~????t?q
j?g
]?Z
+?(
input_1???????????
+?(
input_2???????????
p 

 
? "K?H
A?>
?
0/0?????????
?
0/1?????????
? ?
@__inference_model_layer_call_and_return_conditional_losses_17470?&$%01*+<=67HIBCTUNObchirsxy~????t?q
j?g
]?Z
+?(
input_1???????????
+?(
input_2???????????
p

 
? "K?H
A?>
?
0/0?????????
?
0/1?????????
? ?
@__inference_model_layer_call_and_return_conditional_losses_17681?&$%01*+<=67HIBCTUNObchirsxy~????v?s
l?i
_?\
,?)
inputs/0???????????
,?)
inputs/1???????????
p 

 
? "K?H
A?>
?
0/0?????????
?
0/1?????????
? ?
@__inference_model_layer_call_and_return_conditional_losses_17808?&$%01*+<=67HIBCTUNObchirsxy~????v?s
l?i
_?\
,?)
inputs/0???????????
,?)
inputs/1???????????
p

 
? "K?H
A?>
?
0/0?????????
?
0/1?????????
? ?
%__inference_model_layer_call_fn_16771?&$%01*+<=67HIBCTUNObchirsxy~????t?q
j?g
]?Z
+?(
input_1???????????
+?(
input_2???????????
p 

 
? "=?:
?
0?????????
?
1??????????
%__inference_model_layer_call_fn_17282?&$%01*+<=67HIBCTUNObchirsxy~????t?q
j?g
]?Z
+?(
input_1???????????
+?(
input_2???????????
p

 
? "=?:
?
0?????????
?
1??????????
%__inference_model_layer_call_fn_17884?&$%01*+<=67HIBCTUNObchirsxy~????v?s
l?i
_?\
,?)
inputs/0???????????
,?)
inputs/1???????????
p 

 
? "=?:
?
0?????????
?
1??????????
%__inference_model_layer_call_fn_17960?&$%01*+<=67HIBCTUNObchirsxy~????v?s
l?i
_?\
,?)
inputs/0???????????
,?)
inputs/1???????????
p

 
? "=?:
?
0?????????
?
1??????????
#__inference_signature_wrapper_17554?&$%01*+<=67HIBCTUNObchirsxy~????}?z
? 
s?p
6
input_1+?(
input_1???????????
6
input_2+?(
input_2???????????"s?p
6
steering_out&?#
steering_out?????????
6
throttle_out&?#
throttle_out??????????
G__inference_steering_out_layer_call_and_return_conditional_losses_18303^??/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ?
,__inference_steering_out_layer_call_fn_18312Q??/?,
%?"
 ?
inputs?????????

? "???????????
G__inference_throttle_out_layer_call_and_return_conditional_losses_18322^??/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? ?
,__inference_throttle_out_layer_call_fn_18331Q??/?,
%?"
 ?
inputs?????????

? "??????????