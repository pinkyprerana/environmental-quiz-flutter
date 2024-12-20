// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProfileModel _$ProfileModelFromJson(Map<String, dynamic> json) {
  return _ProfileModel.fromJson(json);
}

/// @nodoc
mixin _$ProfileModel {
  @JsonKey(name: "status")
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  Data? get data => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileModelCopyWith<ProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileModelCopyWith<$Res> {
  factory $ProfileModelCopyWith(
          ProfileModel value, $Res Function(ProfileModel) then) =
      _$ProfileModelCopyWithImpl<$Res, ProfileModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") int? status,
      @JsonKey(name: "data") Data? data,
      @JsonKey(name: "message") String? message});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ProfileModelCopyWithImpl<$Res, $Val extends ProfileModel>
    implements $ProfileModelCopyWith<$Res> {
  _$ProfileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileModelImplCopyWith<$Res>
    implements $ProfileModelCopyWith<$Res> {
  factory _$$ProfileModelImplCopyWith(
          _$ProfileModelImpl value, $Res Function(_$ProfileModelImpl) then) =
      __$$ProfileModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") int? status,
      @JsonKey(name: "data") Data? data,
      @JsonKey(name: "message") String? message});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ProfileModelImplCopyWithImpl<$Res>
    extends _$ProfileModelCopyWithImpl<$Res, _$ProfileModelImpl>
    implements _$$ProfileModelImplCopyWith<$Res> {
  __$$ProfileModelImplCopyWithImpl(
      _$ProfileModelImpl _value, $Res Function(_$ProfileModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_$ProfileModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileModelImpl implements _ProfileModel {
  const _$ProfileModelImpl(
      {@JsonKey(name: "status") this.status,
      @JsonKey(name: "data") this.data,
      @JsonKey(name: "message") this.message});

  factory _$ProfileModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileModelImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final int? status;
  @override
  @JsonKey(name: "data")
  final Data? data;
  @override
  @JsonKey(name: "message")
  final String? message;

  @override
  String toString() {
    return 'ProfileModel(status: $status, data: $data, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileModelImplCopyWith<_$ProfileModelImpl> get copyWith =>
      __$$ProfileModelImplCopyWithImpl<_$ProfileModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileModelImplToJson(
      this,
    );
  }
}

abstract class _ProfileModel implements ProfileModel {
  const factory _ProfileModel(
      {@JsonKey(name: "status") final int? status,
      @JsonKey(name: "data") final Data? data,
      @JsonKey(name: "message") final String? message}) = _$ProfileModelImpl;

  factory _ProfileModel.fromJson(Map<String, dynamic> json) =
      _$ProfileModelImpl.fromJson;

  @override
  @JsonKey(name: "status")
  int? get status;
  @override
  @JsonKey(name: "data")
  Data? get data;
  @override
  @JsonKey(name: "message")
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$ProfileModelImplCopyWith<_$ProfileModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "first_name")
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: "last_name")
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: "fullName")
  String? get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: "role")
  Map<String, dynamic>? get role => throw _privateConstructorUsedError;
  @JsonKey(name: "phone")
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: "bio")
  String? get bio => throw _privateConstructorUsedError;
  @JsonKey(name: "profile_image")
  String? get profileImage => throw _privateConstructorUsedError;
  @JsonKey(name: "zipcode")
  String? get zipcode => throw _privateConstructorUsedError;
  @JsonKey(name: "city")
  String? get city => throw _privateConstructorUsedError;
  @JsonKey(name: "registerType")
  String? get registerType => throw _privateConstructorUsedError;
  @JsonKey(name: "otp")
  String? get otp => throw _privateConstructorUsedError;
  @JsonKey(name: "otpExpireTime")
  String? get otpExpireTime => throw _privateConstructorUsedError;
  @JsonKey(name: "isOtpVerified")
  bool? get isOtpVerified => throw _privateConstructorUsedError;
  @JsonKey(name: "isVerified")
  bool? get isVerified => throw _privateConstructorUsedError;
  @JsonKey(name: "stripeCustomerId")
  String? get stripeCustomerId => throw _privateConstructorUsedError;
  @JsonKey(name: "socialAccount")
  List<dynamic>? get socialAccount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "first_name") String? firstName,
      @JsonKey(name: "last_name") String? lastName,
      @JsonKey(name: "fullName") String? fullName,
      @JsonKey(name: "role") Map<String, dynamic>? role,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "bio") String? bio,
      @JsonKey(name: "profile_image") String? profileImage,
      @JsonKey(name: "zipcode") String? zipcode,
      @JsonKey(name: "city") String? city,
      @JsonKey(name: "registerType") String? registerType,
      @JsonKey(name: "otp") String? otp,
      @JsonKey(name: "otpExpireTime") String? otpExpireTime,
      @JsonKey(name: "isOtpVerified") bool? isOtpVerified,
      @JsonKey(name: "isVerified") bool? isVerified,
      @JsonKey(name: "stripeCustomerId") String? stripeCustomerId,
      @JsonKey(name: "socialAccount") List<dynamic>? socialAccount});
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? fullName = freezed,
    Object? role = freezed,
    Object? phone = freezed,
    Object? email = freezed,
    Object? bio = freezed,
    Object? profileImage = freezed,
    Object? zipcode = freezed,
    Object? city = freezed,
    Object? registerType = freezed,
    Object? otp = freezed,
    Object? otpExpireTime = freezed,
    Object? isOtpVerified = freezed,
    Object? isVerified = freezed,
    Object? stripeCustomerId = freezed,
    Object? socialAccount = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      zipcode: freezed == zipcode
          ? _value.zipcode
          : zipcode // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      registerType: freezed == registerType
          ? _value.registerType
          : registerType // ignore: cast_nullable_to_non_nullable
              as String?,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String?,
      otpExpireTime: freezed == otpExpireTime
          ? _value.otpExpireTime
          : otpExpireTime // ignore: cast_nullable_to_non_nullable
              as String?,
      isOtpVerified: freezed == isOtpVerified
          ? _value.isOtpVerified
          : isOtpVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      isVerified: freezed == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      stripeCustomerId: freezed == stripeCustomerId
          ? _value.stripeCustomerId
          : stripeCustomerId // ignore: cast_nullable_to_non_nullable
              as String?,
      socialAccount: freezed == socialAccount
          ? _value.socialAccount
          : socialAccount // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "first_name") String? firstName,
      @JsonKey(name: "last_name") String? lastName,
      @JsonKey(name: "fullName") String? fullName,
      @JsonKey(name: "role") Map<String, dynamic>? role,
      @JsonKey(name: "phone") String? phone,
      @JsonKey(name: "email") String? email,
      @JsonKey(name: "bio") String? bio,
      @JsonKey(name: "profile_image") String? profileImage,
      @JsonKey(name: "zipcode") String? zipcode,
      @JsonKey(name: "city") String? city,
      @JsonKey(name: "registerType") String? registerType,
      @JsonKey(name: "otp") String? otp,
      @JsonKey(name: "otpExpireTime") String? otpExpireTime,
      @JsonKey(name: "isOtpVerified") bool? isOtpVerified,
      @JsonKey(name: "isVerified") bool? isVerified,
      @JsonKey(name: "stripeCustomerId") String? stripeCustomerId,
      @JsonKey(name: "socialAccount") List<dynamic>? socialAccount});
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? fullName = freezed,
    Object? role = freezed,
    Object? phone = freezed,
    Object? email = freezed,
    Object? bio = freezed,
    Object? profileImage = freezed,
    Object? zipcode = freezed,
    Object? city = freezed,
    Object? registerType = freezed,
    Object? otp = freezed,
    Object? otpExpireTime = freezed,
    Object? isOtpVerified = freezed,
    Object? isVerified = freezed,
    Object? stripeCustomerId = freezed,
    Object? socialAccount = freezed,
  }) {
    return _then(_$DataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value._role
          : role // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      zipcode: freezed == zipcode
          ? _value.zipcode
          : zipcode // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      registerType: freezed == registerType
          ? _value.registerType
          : registerType // ignore: cast_nullable_to_non_nullable
              as String?,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String?,
      otpExpireTime: freezed == otpExpireTime
          ? _value.otpExpireTime
          : otpExpireTime // ignore: cast_nullable_to_non_nullable
              as String?,
      isOtpVerified: freezed == isOtpVerified
          ? _value.isOtpVerified
          : isOtpVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      isVerified: freezed == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      stripeCustomerId: freezed == stripeCustomerId
          ? _value.stripeCustomerId
          : stripeCustomerId // ignore: cast_nullable_to_non_nullable
              as String?,
      socialAccount: freezed == socialAccount
          ? _value._socialAccount
          : socialAccount // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {@JsonKey(name: "_id") this.id,
      @JsonKey(name: "first_name") this.firstName,
      @JsonKey(name: "last_name") this.lastName,
      @JsonKey(name: "fullName") this.fullName,
      @JsonKey(name: "role") final Map<String, dynamic>? role,
      @JsonKey(name: "phone") this.phone,
      @JsonKey(name: "email") this.email,
      @JsonKey(name: "bio") this.bio,
      @JsonKey(name: "profile_image") this.profileImage,
      @JsonKey(name: "zipcode") this.zipcode,
      @JsonKey(name: "city") this.city,
      @JsonKey(name: "registerType") this.registerType,
      @JsonKey(name: "otp") this.otp,
      @JsonKey(name: "otpExpireTime") this.otpExpireTime,
      @JsonKey(name: "isOtpVerified") this.isOtpVerified,
      @JsonKey(name: "isVerified") this.isVerified,
      @JsonKey(name: "stripeCustomerId") this.stripeCustomerId,
      @JsonKey(name: "socialAccount") final List<dynamic>? socialAccount})
      : _role = role,
        _socialAccount = socialAccount;

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  @JsonKey(name: "first_name")
  final String? firstName;
  @override
  @JsonKey(name: "last_name")
  final String? lastName;
  @override
  @JsonKey(name: "fullName")
  final String? fullName;
  final Map<String, dynamic>? _role;
  @override
  @JsonKey(name: "role")
  Map<String, dynamic>? get role {
    final value = _role;
    if (value == null) return null;
    if (_role is EqualUnmodifiableMapView) return _role;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey(name: "phone")
  final String? phone;
  @override
  @JsonKey(name: "email")
  final String? email;
  @override
  @JsonKey(name: "bio")
  final String? bio;
  @override
  @JsonKey(name: "profile_image")
  final String? profileImage;
  @override
  @JsonKey(name: "zipcode")
  final String? zipcode;
  @override
  @JsonKey(name: "city")
  final String? city;
  @override
  @JsonKey(name: "registerType")
  final String? registerType;
  @override
  @JsonKey(name: "otp")
  final String? otp;
  @override
  @JsonKey(name: "otpExpireTime")
  final String? otpExpireTime;
  @override
  @JsonKey(name: "isOtpVerified")
  final bool? isOtpVerified;
  @override
  @JsonKey(name: "isVerified")
  final bool? isVerified;
  @override
  @JsonKey(name: "stripeCustomerId")
  final String? stripeCustomerId;
  final List<dynamic>? _socialAccount;
  @override
  @JsonKey(name: "socialAccount")
  List<dynamic>? get socialAccount {
    final value = _socialAccount;
    if (value == null) return null;
    if (_socialAccount is EqualUnmodifiableListView) return _socialAccount;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Data(id: $id, firstName: $firstName, lastName: $lastName, fullName: $fullName, role: $role, phone: $phone, email: $email, bio: $bio, profileImage: $profileImage, zipcode: $zipcode, city: $city, registerType: $registerType, otp: $otp, otpExpireTime: $otpExpireTime, isOtpVerified: $isOtpVerified, isVerified: $isVerified, stripeCustomerId: $stripeCustomerId, socialAccount: $socialAccount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            const DeepCollectionEquality().equals(other._role, _role) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage) &&
            (identical(other.zipcode, zipcode) || other.zipcode == zipcode) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.registerType, registerType) ||
                other.registerType == registerType) &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.otpExpireTime, otpExpireTime) ||
                other.otpExpireTime == otpExpireTime) &&
            (identical(other.isOtpVerified, isOtpVerified) ||
                other.isOtpVerified == isOtpVerified) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified) &&
            (identical(other.stripeCustomerId, stripeCustomerId) ||
                other.stripeCustomerId == stripeCustomerId) &&
            const DeepCollectionEquality()
                .equals(other._socialAccount, _socialAccount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      firstName,
      lastName,
      fullName,
      const DeepCollectionEquality().hash(_role),
      phone,
      email,
      bio,
      profileImage,
      zipcode,
      city,
      registerType,
      otp,
      otpExpireTime,
      isOtpVerified,
      isVerified,
      stripeCustomerId,
      const DeepCollectionEquality().hash(_socialAccount));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data(
          {@JsonKey(name: "_id") final String? id,
          @JsonKey(name: "first_name") final String? firstName,
          @JsonKey(name: "last_name") final String? lastName,
          @JsonKey(name: "fullName") final String? fullName,
          @JsonKey(name: "role") final Map<String, dynamic>? role,
          @JsonKey(name: "phone") final String? phone,
          @JsonKey(name: "email") final String? email,
          @JsonKey(name: "bio") final String? bio,
          @JsonKey(name: "profile_image") final String? profileImage,
          @JsonKey(name: "zipcode") final String? zipcode,
          @JsonKey(name: "city") final String? city,
          @JsonKey(name: "registerType") final String? registerType,
          @JsonKey(name: "otp") final String? otp,
          @JsonKey(name: "otpExpireTime") final String? otpExpireTime,
          @JsonKey(name: "isOtpVerified") final bool? isOtpVerified,
          @JsonKey(name: "isVerified") final bool? isVerified,
          @JsonKey(name: "stripeCustomerId") final String? stripeCustomerId,
          @JsonKey(name: "socialAccount") final List<dynamic>? socialAccount}) =
      _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  @JsonKey(name: "first_name")
  String? get firstName;
  @override
  @JsonKey(name: "last_name")
  String? get lastName;
  @override
  @JsonKey(name: "fullName")
  String? get fullName;
  @override
  @JsonKey(name: "role")
  Map<String, dynamic>? get role;
  @override
  @JsonKey(name: "phone")
  String? get phone;
  @override
  @JsonKey(name: "email")
  String? get email;
  @override
  @JsonKey(name: "bio")
  String? get bio;
  @override
  @JsonKey(name: "profile_image")
  String? get profileImage;
  @override
  @JsonKey(name: "zipcode")
  String? get zipcode;
  @override
  @JsonKey(name: "city")
  String? get city;
  @override
  @JsonKey(name: "registerType")
  String? get registerType;
  @override
  @JsonKey(name: "otp")
  String? get otp;
  @override
  @JsonKey(name: "otpExpireTime")
  String? get otpExpireTime;
  @override
  @JsonKey(name: "isOtpVerified")
  bool? get isOtpVerified;
  @override
  @JsonKey(name: "isVerified")
  bool? get isVerified;
  @override
  @JsonKey(name: "stripeCustomerId")
  String? get stripeCustomerId;
  @override
  @JsonKey(name: "socialAccount")
  List<dynamic>? get socialAccount;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Role _$RoleFromJson(Map<String, dynamic> json) {
  return _Role.fromJson(json);
}

/// @nodoc
mixin _$Role {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "role")
  String? get role => throw _privateConstructorUsedError;
  @JsonKey(name: "roleDisplayName")
  String? get roleDisplayName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoleCopyWith<Role> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoleCopyWith<$Res> {
  factory $RoleCopyWith(Role value, $Res Function(Role) then) =
      _$RoleCopyWithImpl<$Res, Role>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "role") String? role,
      @JsonKey(name: "roleDisplayName") String? roleDisplayName});
}

/// @nodoc
class _$RoleCopyWithImpl<$Res, $Val extends Role>
    implements $RoleCopyWith<$Res> {
  _$RoleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? role = freezed,
    Object? roleDisplayName = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      roleDisplayName: freezed == roleDisplayName
          ? _value.roleDisplayName
          : roleDisplayName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoleImplCopyWith<$Res> implements $RoleCopyWith<$Res> {
  factory _$$RoleImplCopyWith(
          _$RoleImpl value, $Res Function(_$RoleImpl) then) =
      __$$RoleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "role") String? role,
      @JsonKey(name: "roleDisplayName") String? roleDisplayName});
}

/// @nodoc
class __$$RoleImplCopyWithImpl<$Res>
    extends _$RoleCopyWithImpl<$Res, _$RoleImpl>
    implements _$$RoleImplCopyWith<$Res> {
  __$$RoleImplCopyWithImpl(_$RoleImpl _value, $Res Function(_$RoleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? role = freezed,
    Object? roleDisplayName = freezed,
  }) {
    return _then(_$RoleImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      roleDisplayName: freezed == roleDisplayName
          ? _value.roleDisplayName
          : roleDisplayName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoleImpl implements _Role {
  const _$RoleImpl(
      {@JsonKey(name: "_id") this.id,
      @JsonKey(name: "role") this.role,
      @JsonKey(name: "roleDisplayName") this.roleDisplayName});

  factory _$RoleImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoleImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  @JsonKey(name: "role")
  final String? role;
  @override
  @JsonKey(name: "roleDisplayName")
  final String? roleDisplayName;

  @override
  String toString() {
    return 'Role(id: $id, role: $role, roleDisplayName: $roleDisplayName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoleImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.roleDisplayName, roleDisplayName) ||
                other.roleDisplayName == roleDisplayName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, role, roleDisplayName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoleImplCopyWith<_$RoleImpl> get copyWith =>
      __$$RoleImplCopyWithImpl<_$RoleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoleImplToJson(
      this,
    );
  }
}

abstract class _Role implements Role {
  const factory _Role(
          {@JsonKey(name: "_id") final String? id,
          @JsonKey(name: "role") final String? role,
          @JsonKey(name: "roleDisplayName") final String? roleDisplayName}) =
      _$RoleImpl;

  factory _Role.fromJson(Map<String, dynamic> json) = _$RoleImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  @JsonKey(name: "role")
  String? get role;
  @override
  @JsonKey(name: "roleDisplayName")
  String? get roleDisplayName;
  @override
  @JsonKey(ignore: true)
  _$$RoleImplCopyWith<_$RoleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
