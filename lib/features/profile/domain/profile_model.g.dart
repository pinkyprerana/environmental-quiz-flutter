// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileModelImpl _$$ProfileModelImplFromJson(Map<String, dynamic> json) =>
    _$ProfileModelImpl(
      status: (json['status'] as num?)?.toInt(),
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$ProfileModelImplToJson(_$ProfileModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
      'message': instance.message,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      id: json['_id'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      fullName: json['fullName'] as String?,
      role: json['role'] as Map<String, dynamic>?,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      bio: json['bio'] as String?,
      profileImage: json['profile_image'] as String?,
      zipcode: json['zipcode'] as String?,
      city: json['city'] as String?,
      registerType: json['registerType'] as String?,
      otp: json['otp'] as String?,
      otpExpireTime: json['otpExpireTime'] as String?,
      isOtpVerified: json['isOtpVerified'] as bool?,
      isVerified: json['isVerified'] as bool?,
      stripeCustomerId: json['stripeCustomerId'] as String?,
      socialAccount: json['socialAccount'] as List<dynamic>?,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'fullName': instance.fullName,
      'role': instance.role,
      'phone': instance.phone,
      'email': instance.email,
      'bio': instance.bio,
      'profile_image': instance.profileImage,
      'zipcode': instance.zipcode,
      'city': instance.city,
      'registerType': instance.registerType,
      'otp': instance.otp,
      'otpExpireTime': instance.otpExpireTime,
      'isOtpVerified': instance.isOtpVerified,
      'isVerified': instance.isVerified,
      'stripeCustomerId': instance.stripeCustomerId,
      'socialAccount': instance.socialAccount,
    };

_$RoleImpl _$$RoleImplFromJson(Map<String, dynamic> json) => _$RoleImpl(
      id: json['_id'] as String?,
      role: json['role'] as String?,
      roleDisplayName: json['roleDisplayName'] as String?,
    );

Map<String, dynamic> _$$RoleImplToJson(_$RoleImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'role': instance.role,
      'roleDisplayName': instance.roleDisplayName,
    };
