�
��
:
Add
x"T
y"T
z"T"
Ttype:
2	
B
AddV2
x"T
y"T
z"T"
Ttype:
2	��
�
BoostedTreesBucketize
float_values*num_features#
bucket_boundaries*num_features
buckets*num_features"
num_featuresint(
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
=
Greater
x"T
y"T
z
"
Ttype:
2	
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
	delimiterstring	�
+
IsNan
x"T
y
"
Ttype:
2
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype�
2
LookupTableSizeV2
table_handle
size	�
�
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	�
0
Neg
x"T
y"T"
Ttype:
2
	
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
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
l
	ReverseV2
tensor"T
axis"Tidx
output"T"
Tidxtype0:
2	"
Ttype:
2	

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
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
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
-
Sqrt
x"T
y"T"
Ttype:

2
3
Square
x"T
y"T"
Ttype:
2
	
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
G
StringToHashBucketFast	
input

output	"
num_bucketsint(0
;
Sub
x"T
y"T
z"T"
Ttype:
2	
�
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
P
Unpack

value"T
output"T*num"
numint("	
Ttype"
axisint 
&
	ZerosLike
x"T
y"T"	
Ttype"	transform*2.4.12v2.4.0-49-g85c8b2a817f��
z
ConstConst*
_output_shapes

:	*
dtype0*=
value4B2	"$`�«S�¦N��	I��AD���C�@��s>���<��
I
Const_1Const*
_output_shapes
: *
dtype0	*
value	B	 R
�
Const_2Const*
_output_shapes
: *
dtype0*�
value�B� B�/root/tfx/pipelines/chicago_taxi_simple/Transform/transform_graph/5/.temp_path/tftransform_tmp/vocab_compute_and_apply_vocabulary_vocabulary
I
Const_3Const*
_output_shapes
: *
dtype0	*
value	B	 R.
�
Const_4Const*
_output_shapes
: *
dtype0*�
value�B� B�/root/tfx/pipelines/chicago_taxi_simple/Transform/transform_graph/5/.temp_path/tftransform_tmp/vocab_compute_and_apply_vocabulary_1_vocabulary
L
Const_5Const*
_output_shapes
: *
dtype0*
valueB
 *3d9@
L
Const_6Const*
_output_shapes
: *
dtype0*
valueB
 *�;�C
L
Const_7Const*
_output_shapes
: *
dtype0*
valueB
 *o9;A
L
Const_8Const*
_output_shapes
: *
dtype0*
valueB
 *�AC
L
Const_9Const*
_output_shapes
: *
dtype0*
valueB
 *�zBD
M
Const_10Const*
_output_shapes
: *
dtype0*
valueB
 *�ǑI
}
Const_11Const*
_output_shapes

:	*
dtype0*=
value4B2	"$w�'B#�'B:�'Bs�'B�'B1�'B��'B�'B��'B
}
Const_12Const*
_output_shapes

:	*
dtype0*=
value4B2	"$�e�P��XM��	I��AD���C���A��@���=��
}
Const_13Const*
_output_shapes

:	*
dtype0*=
value4B2	"$�x'B[�'B:�'BN�'B�'B.�'BF�'B��'Bx�'B
�
.transform/inputs/F_payment_type/F_payment_typePlaceholder*'
_output_shapes
:���������*
dtype0	*
shape:���������
�
0transform/inputs/F_payment_type/F_payment_type_1Placeholder*#
_output_shapes
:���������*
dtype0*
shape:���������
y
0transform/inputs/F_payment_type/F_payment_type_2Placeholder*
_output_shapes
:*
dtype0	*
shape:
�
 transform/inputs/company/companyPlaceholder*'
_output_shapes
:���������*
dtype0	*
shape:���������
}
"transform/inputs/company/company_1Placeholder*#
_output_shapes
:���������*
dtype0*
shape:���������
k
"transform/inputs/company/company_2Placeholder*
_output_shapes
:*
dtype0	*
shape:
�
>transform/inputs/F_dropoff_census_tract/F_dropoff_census_tractPlaceholder*'
_output_shapes
:���������*
dtype0	*
shape:���������
�
@transform/inputs/F_dropoff_census_tract/F_dropoff_census_tract_1Placeholder*#
_output_shapes
:���������*
dtype0	*
shape:���������
�
@transform/inputs/F_dropoff_census_tract/F_dropoff_census_tract_2Placeholder*
_output_shapes
:*
dtype0	*
shape:
�
Btransform/inputs/F_dropoff_community_area/F_dropoff_community_areaPlaceholder*'
_output_shapes
:���������*
dtype0	*
shape:���������
�
Dtransform/inputs/F_dropoff_community_area/F_dropoff_community_area_1Placeholder*#
_output_shapes
:���������*
dtype0	*
shape:���������
�
Dtransform/inputs/F_dropoff_community_area/F_dropoff_community_area_2Placeholder*
_output_shapes
:*
dtype0	*
shape:
�
6transform/inputs/F_dropoff_latitude/F_dropoff_latitudePlaceholder*'
_output_shapes
:���������*
dtype0	*
shape:���������
�
8transform/inputs/F_dropoff_latitude/F_dropoff_latitude_1Placeholder*#
_output_shapes
:���������*
dtype0*
shape:���������
�
8transform/inputs/F_dropoff_latitude/F_dropoff_latitude_2Placeholder*
_output_shapes
:*
dtype0	*
shape:
�
8transform/inputs/F_dropoff_longitude/F_dropoff_longitudePlaceholder*'
_output_shapes
:���������*
dtype0	*
shape:���������
�
:transform/inputs/F_dropoff_longitude/F_dropoff_longitude_1Placeholder*#
_output_shapes
:���������*
dtype0*
shape:���������
�
:transform/inputs/F_dropoff_longitude/F_dropoff_longitude_2Placeholder*
_output_shapes
:*
dtype0	*
shape:
}
transform/inputs/fare/farePlaceholder*'
_output_shapes
:���������*
dtype0	*
shape:���������
w
transform/inputs/fare/fare_1Placeholder*#
_output_shapes
:���������*
dtype0*
shape:���������
e
transform/inputs/fare/fare_2Placeholder*
_output_shapes
:*
dtype0	*
shape:
�
<transform/inputs/F_pickup_census_tract/F_pickup_census_tractPlaceholder*'
_output_shapes
:���������*
dtype0	*
shape:���������
�
>transform/inputs/F_pickup_census_tract/F_pickup_census_tract_1Placeholder*#
_output_shapes
:���������*
dtype0	*
shape:���������
�
>transform/inputs/F_pickup_census_tract/F_pickup_census_tract_2Placeholder*
_output_shapes
:*
dtype0	*
shape:
�
@transform/inputs/F_pickup_community_area/F_pickup_community_areaPlaceholder*'
_output_shapes
:���������*
dtype0	*
shape:���������
�
Btransform/inputs/F_pickup_community_area/F_pickup_community_area_1Placeholder*#
_output_shapes
:���������*
dtype0	*
shape:���������
�
Btransform/inputs/F_pickup_community_area/F_pickup_community_area_2Placeholder*
_output_shapes
:*
dtype0	*
shape:
�
4transform/inputs/F_pickup_latitude/F_pickup_latitudePlaceholder*'
_output_shapes
:���������*
dtype0	*
shape:���������
�
6transform/inputs/F_pickup_latitude/F_pickup_latitude_1Placeholder*#
_output_shapes
:���������*
dtype0*
shape:���������

6transform/inputs/F_pickup_latitude/F_pickup_latitude_2Placeholder*
_output_shapes
:*
dtype0	*
shape:
�
6transform/inputs/F_pickup_longitude/F_pickup_longitudePlaceholder*'
_output_shapes
:���������*
dtype0	*
shape:���������
�
8transform/inputs/F_pickup_longitude/F_pickup_longitude_1Placeholder*#
_output_shapes
:���������*
dtype0*
shape:���������
�
8transform/inputs/F_pickup_longitude/F_pickup_longitude_2Placeholder*
_output_shapes
:*
dtype0	*
shape:
}
transform/inputs/tips/tipsPlaceholder*'
_output_shapes
:���������*
dtype0	*
shape:���������
w
transform/inputs/tips/tips_1Placeholder*#
_output_shapes
:���������*
dtype0*
shape:���������
e
transform/inputs/tips/tips_2Placeholder*
_output_shapes
:*
dtype0	*
shape:
�
*transform/inputs/F_trip_miles/F_trip_milesPlaceholder*'
_output_shapes
:���������*
dtype0	*
shape:���������
�
,transform/inputs/F_trip_miles/F_trip_miles_1Placeholder*#
_output_shapes
:���������*
dtype0*
shape:���������
u
,transform/inputs/F_trip_miles/F_trip_miles_2Placeholder*
_output_shapes
:*
dtype0	*
shape:
�
.transform/inputs/F_trip_seconds/F_trip_secondsPlaceholder*'
_output_shapes
:���������*
dtype0	*
shape:���������
�
0transform/inputs/F_trip_seconds/F_trip_seconds_1Placeholder*#
_output_shapes
:���������*
dtype0	*
shape:���������
y
0transform/inputs/F_trip_seconds/F_trip_seconds_2Placeholder*
_output_shapes
:*
dtype0	*
shape:
�
2transform/inputs/F_trip_start_day/F_trip_start_dayPlaceholder*'
_output_shapes
:���������*
dtype0	*
shape:���������
�
4transform/inputs/F_trip_start_day/F_trip_start_day_1Placeholder*#
_output_shapes
:���������*
dtype0	*
shape:���������
}
4transform/inputs/F_trip_start_day/F_trip_start_day_2Placeholder*
_output_shapes
:*
dtype0	*
shape:
�
4transform/inputs/F_trip_start_hour/F_trip_start_hourPlaceholder*'
_output_shapes
:���������*
dtype0	*
shape:���������
�
6transform/inputs/F_trip_start_hour/F_trip_start_hour_1Placeholder*#
_output_shapes
:���������*
dtype0	*
shape:���������

6transform/inputs/F_trip_start_hour/F_trip_start_hour_2Placeholder*
_output_shapes
:*
dtype0	*
shape:
�
6transform/inputs/F_trip_start_month/F_trip_start_monthPlaceholder*'
_output_shapes
:���������*
dtype0	*
shape:���������
�
8transform/inputs/F_trip_start_month/F_trip_start_month_1Placeholder*#
_output_shapes
:���������*
dtype0	*
shape:���������
�
8transform/inputs/F_trip_start_month/F_trip_start_month_2Placeholder*
_output_shapes
:*
dtype0	*
shape:
�
>transform/inputs/F_trip_start_timestamp/F_trip_start_timestampPlaceholder*'
_output_shapes
:���������*
dtype0	*
shape:���������
�
@transform/inputs/F_trip_start_timestamp/F_trip_start_timestamp_1Placeholder*#
_output_shapes
:���������*
dtype0	*
shape:���������
�
@transform/inputs/F_trip_start_timestamp/F_trip_start_timestamp_2Placeholder*
_output_shapes
:*
dtype0	*
shape:
�
:transform/inputs/inputs/F_payment_type/F_payment_type_copyIdentity.transform/inputs/F_payment_type/F_payment_type*
T0	*'
_output_shapes
:���������
�
<transform/inputs/inputs/F_payment_type/F_payment_type_1_copyIdentity0transform/inputs/F_payment_type/F_payment_type_1*
T0*#
_output_shapes
:���������
�
<transform/inputs/inputs/F_payment_type/F_payment_type_2_copyIdentity0transform/inputs/F_payment_type/F_payment_type_2*
T0	*
_output_shapes
:
�
,transform/inputs/inputs/company/company_copyIdentity transform/inputs/company/company*
T0	*'
_output_shapes
:���������
�
.transform/inputs/inputs/company/company_1_copyIdentity"transform/inputs/company/company_1*
T0*#
_output_shapes
:���������
�
.transform/inputs/inputs/company/company_2_copyIdentity"transform/inputs/company/company_2*
T0	*
_output_shapes
:
�
Jtransform/inputs/inputs/F_dropoff_census_tract/F_dropoff_census_tract_copyIdentity>transform/inputs/F_dropoff_census_tract/F_dropoff_census_tract*
T0	*'
_output_shapes
:���������
�
Ltransform/inputs/inputs/F_dropoff_census_tract/F_dropoff_census_tract_1_copyIdentity@transform/inputs/F_dropoff_census_tract/F_dropoff_census_tract_1*
T0	*#
_output_shapes
:���������
�
Ltransform/inputs/inputs/F_dropoff_census_tract/F_dropoff_census_tract_2_copyIdentity@transform/inputs/F_dropoff_census_tract/F_dropoff_census_tract_2*
T0	*
_output_shapes
:
�
Ntransform/inputs/inputs/F_dropoff_community_area/F_dropoff_community_area_copyIdentityBtransform/inputs/F_dropoff_community_area/F_dropoff_community_area*
T0	*'
_output_shapes
:���������
�
Ptransform/inputs/inputs/F_dropoff_community_area/F_dropoff_community_area_1_copyIdentityDtransform/inputs/F_dropoff_community_area/F_dropoff_community_area_1*
T0	*#
_output_shapes
:���������
�
Ptransform/inputs/inputs/F_dropoff_community_area/F_dropoff_community_area_2_copyIdentityDtransform/inputs/F_dropoff_community_area/F_dropoff_community_area_2*
T0	*
_output_shapes
:
�
Btransform/inputs/inputs/F_dropoff_latitude/F_dropoff_latitude_copyIdentity6transform/inputs/F_dropoff_latitude/F_dropoff_latitude*
T0	*'
_output_shapes
:���������
�
Dtransform/inputs/inputs/F_dropoff_latitude/F_dropoff_latitude_1_copyIdentity8transform/inputs/F_dropoff_latitude/F_dropoff_latitude_1*
T0*#
_output_shapes
:���������
�
Dtransform/inputs/inputs/F_dropoff_latitude/F_dropoff_latitude_2_copyIdentity8transform/inputs/F_dropoff_latitude/F_dropoff_latitude_2*
T0	*
_output_shapes
:
�
Dtransform/inputs/inputs/F_dropoff_longitude/F_dropoff_longitude_copyIdentity8transform/inputs/F_dropoff_longitude/F_dropoff_longitude*
T0	*'
_output_shapes
:���������
�
Ftransform/inputs/inputs/F_dropoff_longitude/F_dropoff_longitude_1_copyIdentity:transform/inputs/F_dropoff_longitude/F_dropoff_longitude_1*
T0*#
_output_shapes
:���������
�
Ftransform/inputs/inputs/F_dropoff_longitude/F_dropoff_longitude_2_copyIdentity:transform/inputs/F_dropoff_longitude/F_dropoff_longitude_2*
T0	*
_output_shapes
:
�
&transform/inputs/inputs/fare/fare_copyIdentitytransform/inputs/fare/fare*
T0	*'
_output_shapes
:���������
�
(transform/inputs/inputs/fare/fare_1_copyIdentitytransform/inputs/fare/fare_1*
T0*#
_output_shapes
:���������
w
(transform/inputs/inputs/fare/fare_2_copyIdentitytransform/inputs/fare/fare_2*
T0	*
_output_shapes
:
�
Htransform/inputs/inputs/F_pickup_census_tract/F_pickup_census_tract_copyIdentity<transform/inputs/F_pickup_census_tract/F_pickup_census_tract*
T0	*'
_output_shapes
:���������
�
Jtransform/inputs/inputs/F_pickup_census_tract/F_pickup_census_tract_1_copyIdentity>transform/inputs/F_pickup_census_tract/F_pickup_census_tract_1*
T0	*#
_output_shapes
:���������
�
Jtransform/inputs/inputs/F_pickup_census_tract/F_pickup_census_tract_2_copyIdentity>transform/inputs/F_pickup_census_tract/F_pickup_census_tract_2*
T0	*
_output_shapes
:
�
Ltransform/inputs/inputs/F_pickup_community_area/F_pickup_community_area_copyIdentity@transform/inputs/F_pickup_community_area/F_pickup_community_area*
T0	*'
_output_shapes
:���������
�
Ntransform/inputs/inputs/F_pickup_community_area/F_pickup_community_area_1_copyIdentityBtransform/inputs/F_pickup_community_area/F_pickup_community_area_1*
T0	*#
_output_shapes
:���������
�
Ntransform/inputs/inputs/F_pickup_community_area/F_pickup_community_area_2_copyIdentityBtransform/inputs/F_pickup_community_area/F_pickup_community_area_2*
T0	*
_output_shapes
:
�
@transform/inputs/inputs/F_pickup_latitude/F_pickup_latitude_copyIdentity4transform/inputs/F_pickup_latitude/F_pickup_latitude*
T0	*'
_output_shapes
:���������
�
Btransform/inputs/inputs/F_pickup_latitude/F_pickup_latitude_1_copyIdentity6transform/inputs/F_pickup_latitude/F_pickup_latitude_1*
T0*#
_output_shapes
:���������
�
Btransform/inputs/inputs/F_pickup_latitude/F_pickup_latitude_2_copyIdentity6transform/inputs/F_pickup_latitude/F_pickup_latitude_2*
T0	*
_output_shapes
:
�
Btransform/inputs/inputs/F_pickup_longitude/F_pickup_longitude_copyIdentity6transform/inputs/F_pickup_longitude/F_pickup_longitude*
T0	*'
_output_shapes
:���������
�
Dtransform/inputs/inputs/F_pickup_longitude/F_pickup_longitude_1_copyIdentity8transform/inputs/F_pickup_longitude/F_pickup_longitude_1*
T0*#
_output_shapes
:���������
�
Dtransform/inputs/inputs/F_pickup_longitude/F_pickup_longitude_2_copyIdentity8transform/inputs/F_pickup_longitude/F_pickup_longitude_2*
T0	*
_output_shapes
:
�
&transform/inputs/inputs/tips/tips_copyIdentitytransform/inputs/tips/tips*
T0	*'
_output_shapes
:���������
�
(transform/inputs/inputs/tips/tips_1_copyIdentitytransform/inputs/tips/tips_1*
T0*#
_output_shapes
:���������
w
(transform/inputs/inputs/tips/tips_2_copyIdentitytransform/inputs/tips/tips_2*
T0	*
_output_shapes
:
�
6transform/inputs/inputs/F_trip_miles/F_trip_miles_copyIdentity*transform/inputs/F_trip_miles/F_trip_miles*
T0	*'
_output_shapes
:���������
�
8transform/inputs/inputs/F_trip_miles/F_trip_miles_1_copyIdentity,transform/inputs/F_trip_miles/F_trip_miles_1*
T0*#
_output_shapes
:���������
�
8transform/inputs/inputs/F_trip_miles/F_trip_miles_2_copyIdentity,transform/inputs/F_trip_miles/F_trip_miles_2*
T0	*
_output_shapes
:
�
:transform/inputs/inputs/F_trip_seconds/F_trip_seconds_copyIdentity.transform/inputs/F_trip_seconds/F_trip_seconds*
T0	*'
_output_shapes
:���������
�
<transform/inputs/inputs/F_trip_seconds/F_trip_seconds_1_copyIdentity0transform/inputs/F_trip_seconds/F_trip_seconds_1*
T0	*#
_output_shapes
:���������
�
<transform/inputs/inputs/F_trip_seconds/F_trip_seconds_2_copyIdentity0transform/inputs/F_trip_seconds/F_trip_seconds_2*
T0	*
_output_shapes
:
�
>transform/inputs/inputs/F_trip_start_day/F_trip_start_day_copyIdentity2transform/inputs/F_trip_start_day/F_trip_start_day*
T0	*'
_output_shapes
:���������
�
@transform/inputs/inputs/F_trip_start_day/F_trip_start_day_1_copyIdentity4transform/inputs/F_trip_start_day/F_trip_start_day_1*
T0	*#
_output_shapes
:���������
�
@transform/inputs/inputs/F_trip_start_day/F_trip_start_day_2_copyIdentity4transform/inputs/F_trip_start_day/F_trip_start_day_2*
T0	*
_output_shapes
:
�
@transform/inputs/inputs/F_trip_start_hour/F_trip_start_hour_copyIdentity4transform/inputs/F_trip_start_hour/F_trip_start_hour*
T0	*'
_output_shapes
:���������
�
Btransform/inputs/inputs/F_trip_start_hour/F_trip_start_hour_1_copyIdentity6transform/inputs/F_trip_start_hour/F_trip_start_hour_1*
T0	*#
_output_shapes
:���������
�
Btransform/inputs/inputs/F_trip_start_hour/F_trip_start_hour_2_copyIdentity6transform/inputs/F_trip_start_hour/F_trip_start_hour_2*
T0	*
_output_shapes
:
�
Btransform/inputs/inputs/F_trip_start_month/F_trip_start_month_copyIdentity6transform/inputs/F_trip_start_month/F_trip_start_month*
T0	*'
_output_shapes
:���������
�
Dtransform/inputs/inputs/F_trip_start_month/F_trip_start_month_1_copyIdentity8transform/inputs/F_trip_start_month/F_trip_start_month_1*
T0	*#
_output_shapes
:���������
�
Dtransform/inputs/inputs/F_trip_start_month/F_trip_start_month_2_copyIdentity8transform/inputs/F_trip_start_month/F_trip_start_month_2*
T0	*
_output_shapes
:
�
Jtransform/inputs/inputs/F_trip_start_timestamp/F_trip_start_timestamp_copyIdentity>transform/inputs/F_trip_start_timestamp/F_trip_start_timestamp*
T0	*'
_output_shapes
:���������
�
Ltransform/inputs/inputs/F_trip_start_timestamp/F_trip_start_timestamp_1_copyIdentity@transform/inputs/F_trip_start_timestamp/F_trip_start_timestamp_1*
T0	*#
_output_shapes
:���������
�
Ltransform/inputs/inputs/F_trip_start_timestamp/F_trip_start_timestamp_2_copyIdentity@transform/inputs/F_trip_start_timestamp/F_trip_start_timestamp_2*
T0	*
_output_shapes
:
g
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
i
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
i
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
transform/strided_sliceStridedSlice8transform/inputs/inputs/F_trip_miles/F_trip_miles_2_copytransform/strided_slice/stacktransform/strided_slice/stack_1transform/strided_slice/stack_2*
Index0*
T0	*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
f
$transform/SparseTensor/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
�
"transform/SparseTensor/dense_shapePacktransform/strided_slice$transform/SparseTensor/dense_shape/1*
N*
T0	*
_output_shapes
:*

axis 
j
%transform/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
�
transform/SparseToDenseSparseToDense6transform/inputs/inputs/F_trip_miles/F_trip_miles_copy"transform/SparseTensor/dense_shape8transform/inputs/inputs/F_trip_miles/F_trip_miles_1_copy%transform/SparseToDense/default_value*
T0*
Tindices0	*'
_output_shapes
:���������*
validate_indices(
z
transform/SqueezeSqueezetransform/SparseToDense*
T0*#
_output_shapes
:���������*
squeeze_dims

x
,transform/scale_to_z_score/mean_and_var/SizeSizetransform/Squeeze*
T0*
_output_shapes
: *
out_type0
�
,transform/scale_to_z_score/mean_and_var/CastCast,transform/scale_to_z_score/mean_and_var/Size*

DstT0*

SrcT0*
Truncate( *
_output_shapes
: 
w
-transform/scale_to_z_score/mean_and_var/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
�
+transform/scale_to_z_score/mean_and_var/SumSumtransform/Squeeze-transform/scale_to_z_score/mean_and_var/Const*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
�
/transform/scale_to_z_score/mean_and_var/truedivRealDiv+transform/scale_to_z_score/mean_and_var/Sum,transform/scale_to_z_score/mean_and_var/Cast*
T0*
_output_shapes
: 
�
+transform/scale_to_z_score/mean_and_var/subSubtransform/Squeeze/transform/scale_to_z_score/mean_and_var/truediv*
T0*#
_output_shapes
:���������
�
.transform/scale_to_z_score/mean_and_var/SquareSquare+transform/scale_to_z_score/mean_and_var/sub*
T0*#
_output_shapes
:���������
y
/transform/scale_to_z_score/mean_and_var/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
�
-transform/scale_to_z_score/mean_and_var/Sum_1Sum.transform/scale_to_z_score/mean_and_var/Square/transform/scale_to_z_score/mean_and_var/Const_1*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
�
1transform/scale_to_z_score/mean_and_var/truediv_1RealDiv-transform/scale_to_z_score/mean_and_var/Sum_1,transform/scale_to_z_score/mean_and_var/Cast*
T0*
_output_shapes
: 
r
-transform/scale_to_z_score/mean_and_var/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    
t
3transform/scale_to_z_score/mean_and_var/PlaceholderPlaceholder*
_output_shapes
: *
dtype0*
shape: 
v
5transform/scale_to_z_score/mean_and_var/Placeholder_1Placeholder*
_output_shapes
: *
dtype0*
shape: 
o
transform/scale_to_z_score/subSubtransform/SqueezeConst_5*
T0*#
_output_shapes
:���������
Q
transform/scale_to_z_score/SqrtSqrtConst_6*
T0*
_output_shapes
: 
j
%transform/scale_to_z_score/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
�
#transform/scale_to_z_score/NotEqualNotEqualtransform/scale_to_z_score/Sqrt%transform/scale_to_z_score/NotEqual/y*
T0*
_output_shapes
: *
incompatible_shape_error(
�
%transform/scale_to_z_score/zeros_like	ZerosLiketransform/scale_to_z_score/sub*
T0*#
_output_shapes
:���������
�
transform/scale_to_z_score/CastCast#transform/scale_to_z_score/NotEqual*

DstT0*

SrcT0
*
Truncate( *
_output_shapes
: 
�
transform/scale_to_z_score/addAddV2%transform/scale_to_z_score/zeros_liketransform/scale_to_z_score/Cast*
T0*#
_output_shapes
:���������
�
!transform/scale_to_z_score/Cast_1Casttransform/scale_to_z_score/add*

DstT0
*

SrcT0*
Truncate( *#
_output_shapes
:���������
�
"transform/scale_to_z_score/truedivRealDivtransform/scale_to_z_score/subtransform/scale_to_z_score/Sqrt*
T0*#
_output_shapes
:���������
�
#transform/scale_to_z_score/SelectV2SelectV2!transform/scale_to_z_score/Cast_1"transform/scale_to_z_score/truedivtransform/scale_to_z_score/sub*
T0*#
_output_shapes
:���������
i
transform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
k
!transform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
k
!transform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
transform/strided_slice_1StridedSlice(transform/inputs/inputs/fare/fare_2_copytransform/strided_slice_1/stack!transform/strided_slice_1/stack_1!transform/strided_slice_1/stack_2*
Index0*
T0	*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
h
&transform/SparseTensor_1/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
�
$transform/SparseTensor_1/dense_shapePacktransform/strided_slice_1&transform/SparseTensor_1/dense_shape/1*
N*
T0	*
_output_shapes
:*

axis 
l
'transform/SparseToDense_1/default_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
�
transform/SparseToDense_1SparseToDense&transform/inputs/inputs/fare/fare_copy$transform/SparseTensor_1/dense_shape(transform/inputs/inputs/fare/fare_1_copy'transform/SparseToDense_1/default_value*
T0*
Tindices0	*'
_output_shapes
:���������*
validate_indices(
~
transform/Squeeze_1Squeezetransform/SparseToDense_1*
T0*#
_output_shapes
:���������*
squeeze_dims

|
.transform/scale_to_z_score_1/mean_and_var/SizeSizetransform/Squeeze_1*
T0*
_output_shapes
: *
out_type0
�
.transform/scale_to_z_score_1/mean_and_var/CastCast.transform/scale_to_z_score_1/mean_and_var/Size*

DstT0*

SrcT0*
Truncate( *
_output_shapes
: 
y
/transform/scale_to_z_score_1/mean_and_var/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
�
-transform/scale_to_z_score_1/mean_and_var/SumSumtransform/Squeeze_1/transform/scale_to_z_score_1/mean_and_var/Const*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
�
1transform/scale_to_z_score_1/mean_and_var/truedivRealDiv-transform/scale_to_z_score_1/mean_and_var/Sum.transform/scale_to_z_score_1/mean_and_var/Cast*
T0*
_output_shapes
: 
�
-transform/scale_to_z_score_1/mean_and_var/subSubtransform/Squeeze_11transform/scale_to_z_score_1/mean_and_var/truediv*
T0*#
_output_shapes
:���������
�
0transform/scale_to_z_score_1/mean_and_var/SquareSquare-transform/scale_to_z_score_1/mean_and_var/sub*
T0*#
_output_shapes
:���������
{
1transform/scale_to_z_score_1/mean_and_var/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
�
/transform/scale_to_z_score_1/mean_and_var/Sum_1Sum0transform/scale_to_z_score_1/mean_and_var/Square1transform/scale_to_z_score_1/mean_and_var/Const_1*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
�
3transform/scale_to_z_score_1/mean_and_var/truediv_1RealDiv/transform/scale_to_z_score_1/mean_and_var/Sum_1.transform/scale_to_z_score_1/mean_and_var/Cast*
T0*
_output_shapes
: 
t
/transform/scale_to_z_score_1/mean_and_var/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    
v
5transform/scale_to_z_score_1/mean_and_var/PlaceholderPlaceholder*
_output_shapes
: *
dtype0*
shape: 
x
7transform/scale_to_z_score_1/mean_and_var/Placeholder_1Placeholder*
_output_shapes
: *
dtype0*
shape: 
s
 transform/scale_to_z_score_1/subSubtransform/Squeeze_1Const_7*
T0*#
_output_shapes
:���������
S
!transform/scale_to_z_score_1/SqrtSqrtConst_8*
T0*
_output_shapes
: 
l
'transform/scale_to_z_score_1/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
�
%transform/scale_to_z_score_1/NotEqualNotEqual!transform/scale_to_z_score_1/Sqrt'transform/scale_to_z_score_1/NotEqual/y*
T0*
_output_shapes
: *
incompatible_shape_error(
�
'transform/scale_to_z_score_1/zeros_like	ZerosLike transform/scale_to_z_score_1/sub*
T0*#
_output_shapes
:���������
�
!transform/scale_to_z_score_1/CastCast%transform/scale_to_z_score_1/NotEqual*

DstT0*

SrcT0
*
Truncate( *
_output_shapes
: 
�
 transform/scale_to_z_score_1/addAddV2'transform/scale_to_z_score_1/zeros_like!transform/scale_to_z_score_1/Cast*
T0*#
_output_shapes
:���������
�
#transform/scale_to_z_score_1/Cast_1Cast transform/scale_to_z_score_1/add*

DstT0
*

SrcT0*
Truncate( *#
_output_shapes
:���������
�
$transform/scale_to_z_score_1/truedivRealDiv transform/scale_to_z_score_1/sub!transform/scale_to_z_score_1/Sqrt*
T0*#
_output_shapes
:���������
�
%transform/scale_to_z_score_1/SelectV2SelectV2#transform/scale_to_z_score_1/Cast_1$transform/scale_to_z_score_1/truediv transform/scale_to_z_score_1/sub*
T0*#
_output_shapes
:���������
i
transform/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 
k
!transform/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
k
!transform/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
transform/strided_slice_2StridedSlice<transform/inputs/inputs/F_trip_seconds/F_trip_seconds_2_copytransform/strided_slice_2/stack!transform/strided_slice_2/stack_1!transform/strided_slice_2/stack_2*
Index0*
T0	*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
h
&transform/SparseTensor_2/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
�
$transform/SparseTensor_2/dense_shapePacktransform/strided_slice_2&transform/SparseTensor_2/dense_shape/1*
N*
T0	*
_output_shapes
:*

axis 
i
'transform/SparseToDense_2/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 
�
transform/SparseToDense_2SparseToDense:transform/inputs/inputs/F_trip_seconds/F_trip_seconds_copy$transform/SparseTensor_2/dense_shape<transform/inputs/inputs/F_trip_seconds/F_trip_seconds_1_copy'transform/SparseToDense_2/default_value*
T0	*
Tindices0	*'
_output_shapes
:���������*
validate_indices(
~
transform/Squeeze_2Squeezetransform/SparseToDense_2*
T0	*#
_output_shapes
:���������*
squeeze_dims

�
.transform/scale_to_z_score_2/mean_and_var/CastCasttransform/Squeeze_2*

DstT0*

SrcT0	*
Truncate( *#
_output_shapes
:���������
�
.transform/scale_to_z_score_2/mean_and_var/SizeSize.transform/scale_to_z_score_2/mean_and_var/Cast*
T0*
_output_shapes
: *
out_type0
�
0transform/scale_to_z_score_2/mean_and_var/Cast_1Cast.transform/scale_to_z_score_2/mean_and_var/Size*

DstT0*

SrcT0*
Truncate( *
_output_shapes
: 
y
/transform/scale_to_z_score_2/mean_and_var/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
�
-transform/scale_to_z_score_2/mean_and_var/SumSum.transform/scale_to_z_score_2/mean_and_var/Cast/transform/scale_to_z_score_2/mean_and_var/Const*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
�
1transform/scale_to_z_score_2/mean_and_var/truedivRealDiv-transform/scale_to_z_score_2/mean_and_var/Sum0transform/scale_to_z_score_2/mean_and_var/Cast_1*
T0*
_output_shapes
: 
�
-transform/scale_to_z_score_2/mean_and_var/subSub.transform/scale_to_z_score_2/mean_and_var/Cast1transform/scale_to_z_score_2/mean_and_var/truediv*
T0*#
_output_shapes
:���������
�
0transform/scale_to_z_score_2/mean_and_var/SquareSquare-transform/scale_to_z_score_2/mean_and_var/sub*
T0*#
_output_shapes
:���������
{
1transform/scale_to_z_score_2/mean_and_var/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
�
/transform/scale_to_z_score_2/mean_and_var/Sum_1Sum0transform/scale_to_z_score_2/mean_and_var/Square1transform/scale_to_z_score_2/mean_and_var/Const_1*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
�
3transform/scale_to_z_score_2/mean_and_var/truediv_1RealDiv/transform/scale_to_z_score_2/mean_and_var/Sum_10transform/scale_to_z_score_2/mean_and_var/Cast_1*
T0*
_output_shapes
: 
t
/transform/scale_to_z_score_2/mean_and_var/zerosConst*
_output_shapes
: *
dtype0*
valueB
 *    
v
5transform/scale_to_z_score_2/mean_and_var/PlaceholderPlaceholder*
_output_shapes
: *
dtype0*
shape: 
x
7transform/scale_to_z_score_2/mean_and_var/Placeholder_1Placeholder*
_output_shapes
: *
dtype0*
shape: 
�
!transform/scale_to_z_score_2/CastCasttransform/Squeeze_2*

DstT0*

SrcT0	*
Truncate( *#
_output_shapes
:���������
�
 transform/scale_to_z_score_2/subSub!transform/scale_to_z_score_2/CastConst_9*
T0*#
_output_shapes
:���������
T
!transform/scale_to_z_score_2/SqrtSqrtConst_10*
T0*
_output_shapes
: 
l
'transform/scale_to_z_score_2/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
�
%transform/scale_to_z_score_2/NotEqualNotEqual!transform/scale_to_z_score_2/Sqrt'transform/scale_to_z_score_2/NotEqual/y*
T0*
_output_shapes
: *
incompatible_shape_error(
�
'transform/scale_to_z_score_2/zeros_like	ZerosLike transform/scale_to_z_score_2/sub*
T0*#
_output_shapes
:���������
�
#transform/scale_to_z_score_2/Cast_1Cast%transform/scale_to_z_score_2/NotEqual*

DstT0*

SrcT0
*
Truncate( *
_output_shapes
: 
�
 transform/scale_to_z_score_2/addAddV2'transform/scale_to_z_score_2/zeros_like#transform/scale_to_z_score_2/Cast_1*
T0*#
_output_shapes
:���������
�
#transform/scale_to_z_score_2/Cast_2Cast transform/scale_to_z_score_2/add*

DstT0
*

SrcT0*
Truncate( *#
_output_shapes
:���������
�
$transform/scale_to_z_score_2/truedivRealDiv transform/scale_to_z_score_2/sub!transform/scale_to_z_score_2/Sqrt*
T0*#
_output_shapes
:���������
�
%transform/scale_to_z_score_2/SelectV2SelectV2#transform/scale_to_z_score_2/Cast_2$transform/scale_to_z_score_2/truediv transform/scale_to_z_score_2/sub*
T0*#
_output_shapes
:���������
i
transform/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 
k
!transform/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
k
!transform/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
transform/strided_slice_3StridedSlice<transform/inputs/inputs/F_payment_type/F_payment_type_2_copytransform/strided_slice_3/stack!transform/strided_slice_3/stack_1!transform/strided_slice_3/stack_2*
Index0*
T0	*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
h
&transform/SparseTensor_3/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
�
$transform/SparseTensor_3/dense_shapePacktransform/strided_slice_3&transform/SparseTensor_3/dense_shape/1*
N*
T0	*
_output_shapes
:*

axis 
h
'transform/SparseToDense_3/default_valueConst*
_output_shapes
: *
dtype0*
valueB B 
�
transform/SparseToDense_3SparseToDense:transform/inputs/inputs/F_payment_type/F_payment_type_copy$transform/SparseTensor_3/dense_shape<transform/inputs/inputs/F_payment_type/F_payment_type_1_copy'transform/SparseToDense_3/default_value*
T0*
Tindices0	*'
_output_shapes
:���������*
validate_indices(
~
transform/Squeeze_3Squeezetransform/SparseToDense_3*
T0*#
_output_shapes
:���������*
squeeze_dims

�
?transform/compute_and_apply_vocabulary/vocabulary/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
���������
�
9transform/compute_and_apply_vocabulary/vocabulary/ReshapeReshapetransform/Squeeze_3?transform/compute_and_apply_vocabulary/vocabulary/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:���������
�
stransform/compute_and_apply_vocabulary/vocabulary/vocab_compute_and_apply_vocabulary_vocabulary_unpruned_vocab_sizePlaceholder*
_output_shapes
: *
dtype0	*
shape: 
~
=transform/compute_and_apply_vocabulary/vocabulary/PlaceholderPlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
8transform/compute_and_apply_vocabulary/apply_vocab/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
���������
�
=transform/compute_and_apply_vocabulary/apply_vocab/hash_tableHashTableV2*
_output_shapes
: *
	container *
	key_dtype0*y
shared_namejhhash_table_Tensor("compute_and_apply_vocabulary/vocabulary/Placeholder:0", shape=(), dtype=string)_-2_-1*
use_node_name_sharing( *
value_dtype0	
�
_transform/compute_and_apply_vocabulary/apply_vocab/text_file_init/InitializeTableFromTextFileV2InitializeTableFromTextFileV2=transform/compute_and_apply_vocabulary/apply_vocab/hash_tableConst_2*
	delimiter	*
	key_index���������*
value_index���������*

vocab_size���������
�
Ptransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/hash_bucketStringToHashBucketFasttransform/Squeeze_3*#
_output_shapes
:���������*
num_buckets

�
htransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/hash_table_Lookup/LookupTableFindV2LookupTableFindV2=transform/compute_and_apply_vocabulary/apply_vocab/hash_tabletransform/Squeeze_38transform/compute_and_apply_vocabulary/apply_vocab/Const*	
Tin0*

Tout0	*#
_output_shapes
:���������
�
ftransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/hash_table_Size/LookupTableSizeV2LookupTableSizeV2=transform/compute_and_apply_vocabulary/apply_vocab/hash_table*
_output_shapes
: 
�
Htransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/AddAddPtransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/hash_bucketftransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/hash_table_Size/LookupTableSizeV2*
T0	*#
_output_shapes
:���������
�
Mtransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/NotEqualNotEqualhtransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/hash_table_Lookup/LookupTableFindV28transform/compute_and_apply_vocabulary/apply_vocab/Const*
T0	*#
_output_shapes
:���������*
incompatible_shape_error(
�
Mtransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/SelectV2SelectV2Mtransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/NotEqualhtransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/hash_table_Lookup/LookupTableFindV2Htransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/Add*
T0	*#
_output_shapes
:���������
�
dtransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Size/hash_table_Size/LookupTableSizeV2LookupTableSizeV2=transform/compute_and_apply_vocabulary/apply_vocab/hash_table*
_output_shapes
: 
�
Htransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Size/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R

�
Ftransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Size/addAddV2dtransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Size/hash_table_Size/LookupTableSizeV2Htransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Size/add/y*
T0	*
_output_shapes
: 
|
:transform/compute_and_apply_vocabulary/apply_vocab/Const_1Const*
_output_shapes
: *
dtype0	*
value	B	 R 
z
8transform/compute_and_apply_vocabulary/apply_vocab/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R
�
6transform/compute_and_apply_vocabulary/apply_vocab/subSubFtransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Size/add8transform/compute_and_apply_vocabulary/apply_vocab/sub/y*
T0	*
_output_shapes
: 
i
transform/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB: 
k
!transform/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
k
!transform/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
transform/strided_slice_4StridedSlice.transform/inputs/inputs/company/company_2_copytransform/strided_slice_4/stack!transform/strided_slice_4/stack_1!transform/strided_slice_4/stack_2*
Index0*
T0	*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
h
&transform/SparseTensor_4/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
�
$transform/SparseTensor_4/dense_shapePacktransform/strided_slice_4&transform/SparseTensor_4/dense_shape/1*
N*
T0	*
_output_shapes
:*

axis 
h
'transform/SparseToDense_4/default_valueConst*
_output_shapes
: *
dtype0*
valueB B 
�
transform/SparseToDense_4SparseToDense,transform/inputs/inputs/company/company_copy$transform/SparseTensor_4/dense_shape.transform/inputs/inputs/company/company_1_copy'transform/SparseToDense_4/default_value*
T0*
Tindices0	*'
_output_shapes
:���������*
validate_indices(
~
transform/Squeeze_4Squeezetransform/SparseToDense_4*
T0*#
_output_shapes
:���������*
squeeze_dims

�
Atransform/compute_and_apply_vocabulary_1/vocabulary/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
���������
�
;transform/compute_and_apply_vocabulary_1/vocabulary/ReshapeReshapetransform/Squeeze_4Atransform/compute_and_apply_vocabulary_1/vocabulary/Reshape/shape*
T0*
Tshape0*#
_output_shapes
:���������
�
wtransform/compute_and_apply_vocabulary_1/vocabulary/vocab_compute_and_apply_vocabulary_1_vocabulary_unpruned_vocab_sizePlaceholder*
_output_shapes
: *
dtype0	*
shape: 
�
?transform/compute_and_apply_vocabulary_1/vocabulary/PlaceholderPlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
:transform/compute_and_apply_vocabulary_1/apply_vocab/ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
���������
�
?transform/compute_and_apply_vocabulary_1/apply_vocab/hash_tableHashTableV2*
_output_shapes
: *
	container *
	key_dtype0*{
shared_nameljhash_table_Tensor("compute_and_apply_vocabulary_1/vocabulary/Placeholder:0", shape=(), dtype=string)_-2_-1*
use_node_name_sharing( *
value_dtype0	
�
atransform/compute_and_apply_vocabulary_1/apply_vocab/text_file_init/InitializeTableFromTextFileV2InitializeTableFromTextFileV2?transform/compute_and_apply_vocabulary_1/apply_vocab/hash_tableConst_4*
	delimiter	*
	key_index���������*
value_index���������*

vocab_size���������
�
Rtransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/hash_bucketStringToHashBucketFasttransform/Squeeze_4*#
_output_shapes
:���������*
num_buckets

�
jtransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/hash_table_Lookup/LookupTableFindV2LookupTableFindV2?transform/compute_and_apply_vocabulary_1/apply_vocab/hash_tabletransform/Squeeze_4:transform/compute_and_apply_vocabulary_1/apply_vocab/Const*	
Tin0*

Tout0	*#
_output_shapes
:���������
�
htransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/hash_table_Size/LookupTableSizeV2LookupTableSizeV2?transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table*
_output_shapes
: 
�
Jtransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/AddAddRtransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/hash_buckethtransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/hash_table_Size/LookupTableSizeV2*
T0	*#
_output_shapes
:���������
�
Otransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/NotEqualNotEqualjtransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/hash_table_Lookup/LookupTableFindV2:transform/compute_and_apply_vocabulary_1/apply_vocab/Const*
T0	*#
_output_shapes
:���������*
incompatible_shape_error(
�
Otransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/SelectV2SelectV2Otransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/NotEqualjtransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/hash_table_Lookup/LookupTableFindV2Jtransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/Add*
T0	*#
_output_shapes
:���������
�
ftransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Size/hash_table_Size/LookupTableSizeV2LookupTableSizeV2?transform/compute_and_apply_vocabulary_1/apply_vocab/hash_table*
_output_shapes
: 
�
Jtransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Size/add/yConst*
_output_shapes
: *
dtype0	*
value	B	 R

�
Htransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Size/addAddV2ftransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Size/hash_table_Size/LookupTableSizeV2Jtransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Size/add/y*
T0	*
_output_shapes
: 
~
<transform/compute_and_apply_vocabulary_1/apply_vocab/Const_1Const*
_output_shapes
: *
dtype0	*
value	B	 R 
|
:transform/compute_and_apply_vocabulary_1/apply_vocab/sub/yConst*
_output_shapes
: *
dtype0	*
value	B	 R
�
8transform/compute_and_apply_vocabulary_1/apply_vocab/subSubHtransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Size/add:transform/compute_and_apply_vocabulary_1/apply_vocab/sub/y*
T0	*
_output_shapes
: 
i
transform/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB: 
k
!transform/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
k
!transform/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
transform/strided_slice_5StridedSliceBtransform/inputs/inputs/F_pickup_latitude/F_pickup_latitude_2_copytransform/strided_slice_5/stack!transform/strided_slice_5/stack_1!transform/strided_slice_5/stack_2*
Index0*
T0	*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
h
&transform/SparseTensor_5/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
�
$transform/SparseTensor_5/dense_shapePacktransform/strided_slice_5&transform/SparseTensor_5/dense_shape/1*
N*
T0	*
_output_shapes
:*

axis 
l
'transform/SparseToDense_5/default_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
�
transform/SparseToDense_5SparseToDense@transform/inputs/inputs/F_pickup_latitude/F_pickup_latitude_copy$transform/SparseTensor_5/dense_shapeBtransform/inputs/inputs/F_pickup_latitude/F_pickup_latitude_1_copy'transform/SparseToDense_5/default_value*
T0*
Tindices0	*'
_output_shapes
:���������*
validate_indices(
~
transform/Squeeze_5Squeezetransform/SparseToDense_5*
T0*#
_output_shapes
:���������*
squeeze_dims

z
)transform/bucketize/quantiles/PlaceholderPlaceholder*
_output_shapes

:	*
dtype0*
shape
:	
f
$transform/bucketize/assert_rank/rankConst*
_output_shapes
: *
dtype0*
value	B :
v
%transform/bucketize/assert_rank/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   	   
V
Ntransform/bucketize/assert_rank/assert_type/statically_determined_correct_typeNoOp
G
?transform/bucketize/assert_rank/static_checks_determined_all_okNoOp
�
Ptransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   	   
�
^transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
�
`transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
�
`transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
Xtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_sliceStridedSlicePtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Shape^transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack`transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_1`transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
�
Otransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/CastCastXtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice*

DstT0	*

SrcT0*
Truncate( *
_output_shapes
: 
�
Ntransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/NegNegConst_11*
T0*
_output_shapes

:	
�
Ytransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:
���������
�
Ttransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2	ReverseV2Ntransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/NegYtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2/axis*
T0*

Tidx0*
_output_shapes

:	
�
Ptransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_1Negtransform/Squeeze_5*
T0*#
_output_shapes
:���������
�
Ptransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
�
Ntransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/MaxMaxPtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_1Ptransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Const*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
�
\transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1/0PackNtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Max*
N*
T0*
_output_shapes
:*

axis 
�
Ztransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1Pack\transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1/0*
N*
T0*
_output_shapes

:*

axis 
�
Vtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
���������
�
Qtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concatConcatV2Ttransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2Ztransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1Vtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/axis*
N*
T0*

Tidx0*
_output_shapes

:

�
Ptransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_2Negtransform/Squeeze_5*
T0*#
_output_shapes
:���������
�
Rtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/unstackUnpackQtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat*
T0*
_output_shapes
:
*

axis *	
num
�
`transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/BoostedTreesBucketizeBoostedTreesBucketizePtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_2Rtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/unstack*#
_output_shapes
:���������*
num_features
�
Qtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast_1Cast`transform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/BoostedTreesBucketize*

DstT0	*

SrcT0*
Truncate( *#
_output_shapes
:���������
�
Ntransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/SubSubOtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/CastQtransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast_1*
T0	*#
_output_shapes
:���������
i
'transform/bucketize/apply_buckets/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 
x
'transform/bucketize/apply_buckets/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   	   

5transform/bucketize/apply_buckets/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
�
7transform/bucketize/apply_buckets/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
�
7transform/bucketize/apply_buckets/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
/transform/bucketize/apply_buckets/strided_sliceStridedSlice'transform/bucketize/apply_buckets/Shape5transform/bucketize/apply_buckets/strided_slice/stack7transform/bucketize/apply_buckets/strided_slice/stack_17transform/bucketize/apply_buckets/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
i
transform/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB: 
k
!transform/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
k
!transform/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
transform/strided_slice_6StridedSliceDtransform/inputs/inputs/F_pickup_longitude/F_pickup_longitude_2_copytransform/strided_slice_6/stack!transform/strided_slice_6/stack_1!transform/strided_slice_6/stack_2*
Index0*
T0	*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
h
&transform/SparseTensor_6/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
�
$transform/SparseTensor_6/dense_shapePacktransform/strided_slice_6&transform/SparseTensor_6/dense_shape/1*
N*
T0	*
_output_shapes
:*

axis 
l
'transform/SparseToDense_6/default_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
�
transform/SparseToDense_6SparseToDenseBtransform/inputs/inputs/F_pickup_longitude/F_pickup_longitude_copy$transform/SparseTensor_6/dense_shapeDtransform/inputs/inputs/F_pickup_longitude/F_pickup_longitude_1_copy'transform/SparseToDense_6/default_value*
T0*
Tindices0	*'
_output_shapes
:���������*
validate_indices(
~
transform/Squeeze_6Squeezetransform/SparseToDense_6*
T0*#
_output_shapes
:���������*
squeeze_dims

|
+transform/bucketize_1/quantiles/PlaceholderPlaceholder*
_output_shapes

:	*
dtype0*
shape
:	
h
&transform/bucketize_1/assert_rank/rankConst*
_output_shapes
: *
dtype0*
value	B :
x
'transform/bucketize_1/assert_rank/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   	   
X
Ptransform/bucketize_1/assert_rank/assert_type/statically_determined_correct_typeNoOp
I
Atransform/bucketize_1/assert_rank/static_checks_determined_all_okNoOp
�
Rtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   	   
�
`transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
�
btransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
�
btransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
Ztransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_sliceStridedSliceRtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Shape`transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stackbtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_1btransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
�
Qtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/CastCastZtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice*

DstT0	*

SrcT0*
Truncate( *
_output_shapes
: 
�
Ptransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/NegNegConst_12*
T0*
_output_shapes

:	
�
[transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:
���������
�
Vtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2	ReverseV2Ptransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg[transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2/axis*
T0*

Tidx0*
_output_shapes

:	
�
Rtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_1Negtransform/Squeeze_6*
T0*#
_output_shapes
:���������
�
Rtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
�
Ptransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/MaxMaxRtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_1Rtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Const*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
�
^transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1/0PackPtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Max*
N*
T0*
_output_shapes
:*

axis 
�
\transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1Pack^transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1/0*
N*
T0*
_output_shapes

:*

axis 
�
Xtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
���������
�
Stransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/concatConcatV2Vtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2\transform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1Xtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/axis*
N*
T0*

Tidx0*
_output_shapes

:

�
Rtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_2Negtransform/Squeeze_6*
T0*#
_output_shapes
:���������
�
Ttransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/unstackUnpackStransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat*
T0*
_output_shapes
:
*

axis *	
num
�
btransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/BoostedTreesBucketizeBoostedTreesBucketizeRtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_2Ttransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/unstack*#
_output_shapes
:���������*
num_features
�
Stransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast_1Castbtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/BoostedTreesBucketize*

DstT0	*

SrcT0*
Truncate( *#
_output_shapes
:���������
�
Ptransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/SubSubQtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/CastStransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast_1*
T0	*#
_output_shapes
:���������
k
)transform/bucketize_1/apply_buckets/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 
z
)transform/bucketize_1/apply_buckets/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   	   
�
7transform/bucketize_1/apply_buckets/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
�
9transform/bucketize_1/apply_buckets/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
�
9transform/bucketize_1/apply_buckets/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
1transform/bucketize_1/apply_buckets/strided_sliceStridedSlice)transform/bucketize_1/apply_buckets/Shape7transform/bucketize_1/apply_buckets/strided_slice/stack9transform/bucketize_1/apply_buckets/strided_slice/stack_19transform/bucketize_1/apply_buckets/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
i
transform/strided_slice_7/stackConst*
_output_shapes
:*
dtype0*
valueB: 
k
!transform/strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
k
!transform/strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
transform/strided_slice_7StridedSliceDtransform/inputs/inputs/F_dropoff_latitude/F_dropoff_latitude_2_copytransform/strided_slice_7/stack!transform/strided_slice_7/stack_1!transform/strided_slice_7/stack_2*
Index0*
T0	*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
h
&transform/SparseTensor_7/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
�
$transform/SparseTensor_7/dense_shapePacktransform/strided_slice_7&transform/SparseTensor_7/dense_shape/1*
N*
T0	*
_output_shapes
:*

axis 
l
'transform/SparseToDense_7/default_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
�
transform/SparseToDense_7SparseToDenseBtransform/inputs/inputs/F_dropoff_latitude/F_dropoff_latitude_copy$transform/SparseTensor_7/dense_shapeDtransform/inputs/inputs/F_dropoff_latitude/F_dropoff_latitude_1_copy'transform/SparseToDense_7/default_value*
T0*
Tindices0	*'
_output_shapes
:���������*
validate_indices(
~
transform/Squeeze_7Squeezetransform/SparseToDense_7*
T0*#
_output_shapes
:���������*
squeeze_dims

|
+transform/bucketize_2/quantiles/PlaceholderPlaceholder*
_output_shapes

:	*
dtype0*
shape
:	
h
&transform/bucketize_2/assert_rank/rankConst*
_output_shapes
: *
dtype0*
value	B :
x
'transform/bucketize_2/assert_rank/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   	   
X
Ptransform/bucketize_2/assert_rank/assert_type/statically_determined_correct_typeNoOp
I
Atransform/bucketize_2/assert_rank/static_checks_determined_all_okNoOp
�
Rtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   	   
�
`transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
�
btransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
�
btransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
Ztransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_sliceStridedSliceRtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Shape`transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stackbtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_1btransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
�
Qtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/CastCastZtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice*

DstT0	*

SrcT0*
Truncate( *
_output_shapes
: 
�
Ptransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/NegNegConst_13*
T0*
_output_shapes

:	
�
[transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:
���������
�
Vtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2	ReverseV2Ptransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg[transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2/axis*
T0*

Tidx0*
_output_shapes

:	
�
Rtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_1Negtransform/Squeeze_7*
T0*#
_output_shapes
:���������
�
Rtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
�
Ptransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/MaxMaxRtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_1Rtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Const*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
�
^transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1/0PackPtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Max*
N*
T0*
_output_shapes
:*

axis 
�
\transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1Pack^transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1/0*
N*
T0*
_output_shapes

:*

axis 
�
Xtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
���������
�
Stransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/concatConcatV2Vtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2\transform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1Xtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/axis*
N*
T0*

Tidx0*
_output_shapes

:

�
Rtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_2Negtransform/Squeeze_7*
T0*#
_output_shapes
:���������
�
Ttransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/unstackUnpackStransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat*
T0*
_output_shapes
:
*

axis *	
num
�
btransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/BoostedTreesBucketizeBoostedTreesBucketizeRtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_2Ttransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/unstack*#
_output_shapes
:���������*
num_features
�
Stransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast_1Castbtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/BoostedTreesBucketize*

DstT0	*

SrcT0*
Truncate( *#
_output_shapes
:���������
�
Ptransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/SubSubQtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/CastStransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast_1*
T0	*#
_output_shapes
:���������
k
)transform/bucketize_2/apply_buckets/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 
z
)transform/bucketize_2/apply_buckets/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   	   
�
7transform/bucketize_2/apply_buckets/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
�
9transform/bucketize_2/apply_buckets/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
�
9transform/bucketize_2/apply_buckets/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
1transform/bucketize_2/apply_buckets/strided_sliceStridedSlice)transform/bucketize_2/apply_buckets/Shape7transform/bucketize_2/apply_buckets/strided_slice/stack9transform/bucketize_2/apply_buckets/strided_slice/stack_19transform/bucketize_2/apply_buckets/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
i
transform/strided_slice_8/stackConst*
_output_shapes
:*
dtype0*
valueB: 
k
!transform/strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
k
!transform/strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
transform/strided_slice_8StridedSliceFtransform/inputs/inputs/F_dropoff_longitude/F_dropoff_longitude_2_copytransform/strided_slice_8/stack!transform/strided_slice_8/stack_1!transform/strided_slice_8/stack_2*
Index0*
T0	*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
h
&transform/SparseTensor_8/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
�
$transform/SparseTensor_8/dense_shapePacktransform/strided_slice_8&transform/SparseTensor_8/dense_shape/1*
N*
T0	*
_output_shapes
:*

axis 
l
'transform/SparseToDense_8/default_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
�
transform/SparseToDense_8SparseToDenseDtransform/inputs/inputs/F_dropoff_longitude/F_dropoff_longitude_copy$transform/SparseTensor_8/dense_shapeFtransform/inputs/inputs/F_dropoff_longitude/F_dropoff_longitude_1_copy'transform/SparseToDense_8/default_value*
T0*
Tindices0	*'
_output_shapes
:���������*
validate_indices(
~
transform/Squeeze_8Squeezetransform/SparseToDense_8*
T0*#
_output_shapes
:���������*
squeeze_dims

|
+transform/bucketize_3/quantiles/PlaceholderPlaceholder*
_output_shapes

:	*
dtype0*
shape
:	
h
&transform/bucketize_3/assert_rank/rankConst*
_output_shapes
: *
dtype0*
value	B :
x
'transform/bucketize_3/assert_rank/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   	   
X
Ptransform/bucketize_3/assert_rank/assert_type/statically_determined_correct_typeNoOp
I
Atransform/bucketize_3/assert_rank/static_checks_determined_all_okNoOp
�
Rtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   	   
�
`transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
�
btransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
�
btransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
Ztransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_sliceStridedSliceRtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Shape`transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stackbtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_1btransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
�
Qtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/CastCastZtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/strided_slice*

DstT0	*

SrcT0*
Truncate( *
_output_shapes
: 
�
Ptransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/NegNegConst*
T0*
_output_shapes

:	
�
[transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:
���������
�
Vtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2	ReverseV2Ptransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg[transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2/axis*
T0*

Tidx0*
_output_shapes

:	
�
Rtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_1Negtransform/Squeeze_8*
T0*#
_output_shapes
:���������
�
Rtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
�
Ptransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/MaxMaxRtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_1Rtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Const*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
�
^transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1/0PackPtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Max*
N*
T0*
_output_shapes
:*

axis 
�
\transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1Pack^transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1/0*
N*
T0*
_output_shapes

:*

axis 
�
Xtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
���������
�
Stransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/concatConcatV2Vtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/ReverseV2\transform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/values_1Xtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat/axis*
N*
T0*

Tidx0*
_output_shapes

:

�
Rtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_2Negtransform/Squeeze_8*
T0*#
_output_shapes
:���������
�
Ttransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/unstackUnpackStransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/concat*
T0*
_output_shapes
:
*

axis *	
num
�
btransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/BoostedTreesBucketizeBoostedTreesBucketizeRtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Neg_2Ttransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/unstack*#
_output_shapes
:���������*
num_features
�
Stransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast_1Castbtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/BoostedTreesBucketize*

DstT0	*

SrcT0*
Truncate( *#
_output_shapes
:���������
�
Ptransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/SubSubQtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/CastStransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Cast_1*
T0	*#
_output_shapes
:���������
k
)transform/bucketize_3/apply_buckets/ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R 
z
)transform/bucketize_3/apply_buckets/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   	   
�
7transform/bucketize_3/apply_buckets/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
�
9transform/bucketize_3/apply_buckets/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
�
9transform/bucketize_3/apply_buckets/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
1transform/bucketize_3/apply_buckets/strided_sliceStridedSlice)transform/bucketize_3/apply_buckets/Shape7transform/bucketize_3/apply_buckets/strided_slice/stack9transform/bucketize_3/apply_buckets/strided_slice/stack_19transform/bucketize_3/apply_buckets/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
i
transform/strided_slice_9/stackConst*
_output_shapes
:*
dtype0*
valueB: 
k
!transform/strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
k
!transform/strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
transform/strided_slice_9StridedSliceBtransform/inputs/inputs/F_trip_start_hour/F_trip_start_hour_2_copytransform/strided_slice_9/stack!transform/strided_slice_9/stack_1!transform/strided_slice_9/stack_2*
Index0*
T0	*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
h
&transform/SparseTensor_9/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
�
$transform/SparseTensor_9/dense_shapePacktransform/strided_slice_9&transform/SparseTensor_9/dense_shape/1*
N*
T0	*
_output_shapes
:*

axis 
i
'transform/SparseToDense_9/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 
�
transform/SparseToDense_9SparseToDense@transform/inputs/inputs/F_trip_start_hour/F_trip_start_hour_copy$transform/SparseTensor_9/dense_shapeBtransform/inputs/inputs/F_trip_start_hour/F_trip_start_hour_1_copy'transform/SparseToDense_9/default_value*
T0	*
Tindices0	*'
_output_shapes
:���������*
validate_indices(
~
transform/Squeeze_9Squeezetransform/SparseToDense_9*
T0	*#
_output_shapes
:���������*
squeeze_dims

j
 transform/strided_slice_10/stackConst*
_output_shapes
:*
dtype0*
valueB: 
l
"transform/strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
l
"transform/strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
transform/strided_slice_10StridedSlice@transform/inputs/inputs/F_trip_start_day/F_trip_start_day_2_copy transform/strided_slice_10/stack"transform/strided_slice_10/stack_1"transform/strided_slice_10/stack_2*
Index0*
T0	*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
i
'transform/SparseTensor_10/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
�
%transform/SparseTensor_10/dense_shapePacktransform/strided_slice_10'transform/SparseTensor_10/dense_shape/1*
N*
T0	*
_output_shapes
:*

axis 
j
(transform/SparseToDense_10/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 
�
transform/SparseToDense_10SparseToDense>transform/inputs/inputs/F_trip_start_day/F_trip_start_day_copy%transform/SparseTensor_10/dense_shape@transform/inputs/inputs/F_trip_start_day/F_trip_start_day_1_copy(transform/SparseToDense_10/default_value*
T0	*
Tindices0	*'
_output_shapes
:���������*
validate_indices(
�
transform/Squeeze_10Squeezetransform/SparseToDense_10*
T0	*#
_output_shapes
:���������*
squeeze_dims

j
 transform/strided_slice_11/stackConst*
_output_shapes
:*
dtype0*
valueB: 
l
"transform/strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
l
"transform/strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
transform/strided_slice_11StridedSliceDtransform/inputs/inputs/F_trip_start_month/F_trip_start_month_2_copy transform/strided_slice_11/stack"transform/strided_slice_11/stack_1"transform/strided_slice_11/stack_2*
Index0*
T0	*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
i
'transform/SparseTensor_11/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
�
%transform/SparseTensor_11/dense_shapePacktransform/strided_slice_11'transform/SparseTensor_11/dense_shape/1*
N*
T0	*
_output_shapes
:*

axis 
j
(transform/SparseToDense_11/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 
�
transform/SparseToDense_11SparseToDenseBtransform/inputs/inputs/F_trip_start_month/F_trip_start_month_copy%transform/SparseTensor_11/dense_shapeDtransform/inputs/inputs/F_trip_start_month/F_trip_start_month_1_copy(transform/SparseToDense_11/default_value*
T0	*
Tindices0	*'
_output_shapes
:���������*
validate_indices(
�
transform/Squeeze_11Squeezetransform/SparseToDense_11*
T0	*#
_output_shapes
:���������*
squeeze_dims

j
 transform/strided_slice_12/stackConst*
_output_shapes
:*
dtype0*
valueB: 
l
"transform/strided_slice_12/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
l
"transform/strided_slice_12/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
transform/strided_slice_12StridedSliceJtransform/inputs/inputs/F_pickup_census_tract/F_pickup_census_tract_2_copy transform/strided_slice_12/stack"transform/strided_slice_12/stack_1"transform/strided_slice_12/stack_2*
Index0*
T0	*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
i
'transform/SparseTensor_12/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
�
%transform/SparseTensor_12/dense_shapePacktransform/strided_slice_12'transform/SparseTensor_12/dense_shape/1*
N*
T0	*
_output_shapes
:*

axis 
j
(transform/SparseToDense_12/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 
�
transform/SparseToDense_12SparseToDenseHtransform/inputs/inputs/F_pickup_census_tract/F_pickup_census_tract_copy%transform/SparseTensor_12/dense_shapeJtransform/inputs/inputs/F_pickup_census_tract/F_pickup_census_tract_1_copy(transform/SparseToDense_12/default_value*
T0	*
Tindices0	*'
_output_shapes
:���������*
validate_indices(
�
transform/Squeeze_12Squeezetransform/SparseToDense_12*
T0	*#
_output_shapes
:���������*
squeeze_dims

j
 transform/strided_slice_13/stackConst*
_output_shapes
:*
dtype0*
valueB: 
l
"transform/strided_slice_13/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
l
"transform/strided_slice_13/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
transform/strided_slice_13StridedSliceLtransform/inputs/inputs/F_dropoff_census_tract/F_dropoff_census_tract_2_copy transform/strided_slice_13/stack"transform/strided_slice_13/stack_1"transform/strided_slice_13/stack_2*
Index0*
T0	*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
i
'transform/SparseTensor_13/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
�
%transform/SparseTensor_13/dense_shapePacktransform/strided_slice_13'transform/SparseTensor_13/dense_shape/1*
N*
T0	*
_output_shapes
:*

axis 
j
(transform/SparseToDense_13/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 
�
transform/SparseToDense_13SparseToDenseJtransform/inputs/inputs/F_dropoff_census_tract/F_dropoff_census_tract_copy%transform/SparseTensor_13/dense_shapeLtransform/inputs/inputs/F_dropoff_census_tract/F_dropoff_census_tract_1_copy(transform/SparseToDense_13/default_value*
T0	*
Tindices0	*'
_output_shapes
:���������*
validate_indices(
�
transform/Squeeze_13Squeezetransform/SparseToDense_13*
T0	*#
_output_shapes
:���������*
squeeze_dims

j
 transform/strided_slice_14/stackConst*
_output_shapes
:*
dtype0*
valueB: 
l
"transform/strided_slice_14/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
l
"transform/strided_slice_14/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
transform/strided_slice_14StridedSliceNtransform/inputs/inputs/F_pickup_community_area/F_pickup_community_area_2_copy transform/strided_slice_14/stack"transform/strided_slice_14/stack_1"transform/strided_slice_14/stack_2*
Index0*
T0	*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
i
'transform/SparseTensor_14/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
�
%transform/SparseTensor_14/dense_shapePacktransform/strided_slice_14'transform/SparseTensor_14/dense_shape/1*
N*
T0	*
_output_shapes
:*

axis 
j
(transform/SparseToDense_14/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 
�
transform/SparseToDense_14SparseToDenseLtransform/inputs/inputs/F_pickup_community_area/F_pickup_community_area_copy%transform/SparseTensor_14/dense_shapeNtransform/inputs/inputs/F_pickup_community_area/F_pickup_community_area_1_copy(transform/SparseToDense_14/default_value*
T0	*
Tindices0	*'
_output_shapes
:���������*
validate_indices(
�
transform/Squeeze_14Squeezetransform/SparseToDense_14*
T0	*#
_output_shapes
:���������*
squeeze_dims

j
 transform/strided_slice_15/stackConst*
_output_shapes
:*
dtype0*
valueB: 
l
"transform/strided_slice_15/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
l
"transform/strided_slice_15/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
transform/strided_slice_15StridedSlicePtransform/inputs/inputs/F_dropoff_community_area/F_dropoff_community_area_2_copy transform/strided_slice_15/stack"transform/strided_slice_15/stack_1"transform/strided_slice_15/stack_2*
Index0*
T0	*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
i
'transform/SparseTensor_15/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
�
%transform/SparseTensor_15/dense_shapePacktransform/strided_slice_15'transform/SparseTensor_15/dense_shape/1*
N*
T0	*
_output_shapes
:*

axis 
j
(transform/SparseToDense_15/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R 
�
transform/SparseToDense_15SparseToDenseNtransform/inputs/inputs/F_dropoff_community_area/F_dropoff_community_area_copy%transform/SparseTensor_15/dense_shapePtransform/inputs/inputs/F_dropoff_community_area/F_dropoff_community_area_1_copy(transform/SparseToDense_15/default_value*
T0	*
Tindices0	*'
_output_shapes
:���������*
validate_indices(
�
transform/Squeeze_15Squeezetransform/SparseToDense_15*
T0	*#
_output_shapes
:���������*
squeeze_dims

j
 transform/strided_slice_16/stackConst*
_output_shapes
:*
dtype0*
valueB: 
l
"transform/strided_slice_16/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
l
"transform/strided_slice_16/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
transform/strided_slice_16StridedSlice(transform/inputs/inputs/fare/fare_2_copy transform/strided_slice_16/stack"transform/strided_slice_16/stack_1"transform/strided_slice_16/stack_2*
Index0*
T0	*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
i
'transform/SparseTensor_16/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
�
%transform/SparseTensor_16/dense_shapePacktransform/strided_slice_16'transform/SparseTensor_16/dense_shape/1*
N*
T0	*
_output_shapes
:*

axis 
m
(transform/SparseToDense_16/default_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
�
transform/SparseToDense_16SparseToDense&transform/inputs/inputs/fare/fare_copy%transform/SparseTensor_16/dense_shape(transform/inputs/inputs/fare/fare_1_copy(transform/SparseToDense_16/default_value*
T0*
Tindices0	*'
_output_shapes
:���������*
validate_indices(
�
transform/Squeeze_16Squeezetransform/SparseToDense_16*
T0*#
_output_shapes
:���������*
squeeze_dims

j
 transform/strided_slice_17/stackConst*
_output_shapes
:*
dtype0*
valueB: 
l
"transform/strided_slice_17/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
l
"transform/strided_slice_17/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
�
transform/strided_slice_17StridedSlice(transform/inputs/inputs/tips/tips_2_copy transform/strided_slice_17/stack"transform/strided_slice_17/stack_1"transform/strided_slice_17/stack_2*
Index0*
T0	*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
i
'transform/SparseTensor_17/dense_shape/1Const*
_output_shapes
: *
dtype0	*
value	B	 R
�
%transform/SparseTensor_17/dense_shapePacktransform/strided_slice_17'transform/SparseTensor_17/dense_shape/1*
N*
T0	*
_output_shapes
:*

axis 
m
(transform/SparseToDense_17/default_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    
�
transform/SparseToDense_17SparseToDense&transform/inputs/inputs/tips/tips_copy%transform/SparseTensor_17/dense_shape(transform/inputs/inputs/tips/tips_1_copy(transform/SparseToDense_17/default_value*
T0*
Tindices0	*'
_output_shapes
:���������*
validate_indices(
�
transform/Squeeze_17Squeezetransform/SparseToDense_17*
T0*#
_output_shapes
:���������*
squeeze_dims

\
transform/IsNanIsNantransform/Squeeze_16*
T0*#
_output_shapes
:���������
e
transform/zeros_like	ZerosLiketransform/Squeeze_16*
T0*#
_output_shapes
:���������
y
transform/CastCasttransform/zeros_like*

DstT0	*

SrcT0*
Truncate( *#
_output_shapes
:���������
T
transform/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *��L>
i
transform/MulMultransform/Squeeze_16transform/Const*
T0*#
_output_shapes
:���������
o
transform/GreaterGreatertransform/Squeeze_17transform/Mul*
T0*#
_output_shapes
:���������
x
transform/Cast_1Casttransform/Greater*

DstT0	*

SrcT0
*
Truncate( *#
_output_shapes
:���������
{
transform/SelectSelecttransform/IsNantransform/Casttransform/Cast_1*
T0	*#
_output_shapes
:���������

transform/initNoOp

transform/init_1NoOp

initNoOp"�"+
asset_filepaths

	Const_2:0
	Const_4:0"�
saved_model_assets�*�
k
+type.googleapis.com/tensorflow.AssetFileDef<

	Const_2:0-vocab_compute_and_apply_vocabulary_vocabulary
m
+type.googleapis.com/tensorflow.AssetFileDef>

	Const_4:0/vocab_compute_and_apply_vocabulary_1_vocabulary"�
table_initializer�
�
_transform/compute_and_apply_vocabulary/apply_vocab/text_file_init/InitializeTableFromTextFileV2
atransform/compute_and_apply_vocabulary_1/apply_vocab/text_file_init/InitializeTableFromTextFileV2"�
tft_schema_override_max�
�
8transform/compute_and_apply_vocabulary/apply_vocab/sub:0
:transform/compute_and_apply_vocabulary_1/apply_vocab/sub:0
1transform/bucketize/apply_buckets/strided_slice:0
3transform/bucketize_1/apply_buckets/strided_slice:0
3transform/bucketize_2/apply_buckets/strided_slice:0
3transform/bucketize_3/apply_buckets/strided_slice:0"�
tft_schema_override_min�
�
<transform/compute_and_apply_vocabulary/apply_vocab/Const_1:0
>transform/compute_and_apply_vocabulary_1/apply_vocab/Const_1:0
)transform/bucketize/apply_buckets/Const:0
+transform/bucketize_1/apply_buckets/Const:0
+transform/bucketize_2/apply_buckets/Const:0
+transform/bucketize_3/apply_buckets/Const:0"�
tft_schema_override_tensor�
�
Otransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/SelectV2:0
Qtransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/SelectV2:0
Ptransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub:0
Rtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub:0
Rtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub:0
Rtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub:0*�+
transform_signature�+
�
company�������������������"p
$transform/inputs/company/company_1:0"transform/inputs/company/company:0$transform/inputs/company/company_2:0
�
dropoff_census_tract�	������������������"�
Btransform/inputs/F_dropoff_census_tract/F_dropoff_census_tract_1:0@transform/inputs/F_dropoff_census_tract/F_dropoff_census_tract:0Btransform/inputs/F_dropoff_census_tract/F_dropoff_census_tract_2:0
�
dropoff_community_area�	������������������"�
Ftransform/inputs/F_dropoff_community_area/F_dropoff_community_area_1:0Dtransform/inputs/F_dropoff_community_area/F_dropoff_community_area:0Ftransform/inputs/F_dropoff_community_area/F_dropoff_community_area_2:0
�
dropoff_latitude�������������������"�
:transform/inputs/F_dropoff_latitude/F_dropoff_latitude_1:08transform/inputs/F_dropoff_latitude/F_dropoff_latitude:0:transform/inputs/F_dropoff_latitude/F_dropoff_latitude_2:0
�
dropoff_longitude�������������������"�
<transform/inputs/F_dropoff_longitude/F_dropoff_longitude_1:0:transform/inputs/F_dropoff_longitude/F_dropoff_longitude:0<transform/inputs/F_dropoff_longitude/F_dropoff_longitude_2:0
�
fare~������������������"^
transform/inputs/fare/fare_1:0transform/inputs/fare/fare:0transform/inputs/fare/fare_2:0
�
payment_type�������������������"�
2transform/inputs/F_payment_type/F_payment_type_1:00transform/inputs/F_payment_type/F_payment_type:02transform/inputs/F_payment_type/F_payment_type_2:0
�
pickup_census_tract�	������������������"�
@transform/inputs/F_pickup_census_tract/F_pickup_census_tract_1:0>transform/inputs/F_pickup_census_tract/F_pickup_census_tract:0@transform/inputs/F_pickup_census_tract/F_pickup_census_tract_2:0
�
pickup_community_area�	������������������"�
Dtransform/inputs/F_pickup_community_area/F_pickup_community_area_1:0Btransform/inputs/F_pickup_community_area/F_pickup_community_area:0Dtransform/inputs/F_pickup_community_area/F_pickup_community_area_2:0
�
pickup_latitude�������������������"�
8transform/inputs/F_pickup_latitude/F_pickup_latitude_1:06transform/inputs/F_pickup_latitude/F_pickup_latitude:08transform/inputs/F_pickup_latitude/F_pickup_latitude_2:0
�
pickup_longitude�������������������"�
:transform/inputs/F_pickup_longitude/F_pickup_longitude_1:08transform/inputs/F_pickup_longitude/F_pickup_longitude:0:transform/inputs/F_pickup_longitude/F_pickup_longitude_2:0
�
tips~������������������"^
transform/inputs/tips/tips_1:0transform/inputs/tips/tips:0transform/inputs/tips/tips_2:0
�

trip_miles�������������������"�
.transform/inputs/F_trip_miles/F_trip_miles_1:0,transform/inputs/F_trip_miles/F_trip_miles:0.transform/inputs/F_trip_miles/F_trip_miles_2:0
�
trip_seconds�	������������������"�
2transform/inputs/F_trip_seconds/F_trip_seconds_1:00transform/inputs/F_trip_seconds/F_trip_seconds:02transform/inputs/F_trip_seconds/F_trip_seconds_2:0
�
trip_start_day�	������������������"�
6transform/inputs/F_trip_start_day/F_trip_start_day_1:04transform/inputs/F_trip_start_day/F_trip_start_day:06transform/inputs/F_trip_start_day/F_trip_start_day_2:0
�
trip_start_hour�	������������������"�
8transform/inputs/F_trip_start_hour/F_trip_start_hour_1:06transform/inputs/F_trip_start_hour/F_trip_start_hour:08transform/inputs/F_trip_start_hour/F_trip_start_hour_2:0
�
trip_start_month�	������������������"�
:transform/inputs/F_trip_start_month/F_trip_start_month_1:08transform/inputs/F_trip_start_month/F_trip_start_month:0:transform/inputs/F_trip_start_month/F_trip_start_month_2:0
�
trip_start_timestamp�	������������������"�
Btransform/inputs/F_trip_start_timestamp/F_trip_start_timestamp_1:0@transform/inputs/F_trip_start_timestamp/F_trip_start_timestamp:0Btransform/inputs/F_trip_start_timestamp/F_trip_start_timestamp_2:0r

company_xfd
Qtransform/compute_and_apply_vocabulary_1/apply_vocab/hash_table_Lookup/SelectV2:0	���������D
dropoff_census_tract_xf)
transform/Squeeze_13:0	���������F
dropoff_community_area_xf)
transform/Squeeze_15:0	���������|
dropoff_latitude_xfe
Rtransform/bucketize_2/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub:0	���������}
dropoff_longitude_xfe
Rtransform/bucketize_3/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub:0	���������E
fare_xf:
'transform/scale_to_z_score_1/SelectV2:0���������u
payment_type_xfb
Otransform/compute_and_apply_vocabulary/apply_vocab/hash_table_Lookup/SelectV2:0	���������C
pickup_census_tract_xf)
transform/Squeeze_12:0	���������E
pickup_community_area_xf)
transform/Squeeze_14:0	���������y
pickup_latitude_xfc
Ptransform/bucketize/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub:0	���������|
pickup_longitude_xfe
Rtransform/bucketize_1/apply_buckets/assign_buckets_all_shapes/assign_buckets/Sub:0	���������0
tips_xf%
transform/Select:0	���������I
trip_miles_xf8
%transform/scale_to_z_score/SelectV2:0���������M
trip_seconds_xf:
'transform/scale_to_z_score_2/SelectV2:0���������>
trip_start_day_xf)
transform/Squeeze_10:0	���������>
trip_start_hour_xf(
transform/Squeeze_9:0	���������@
trip_start_month_xf)
transform/Squeeze_11:0	���������tensorflow/serving/predict