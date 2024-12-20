// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';
part 'profile_model.freezed.dart';
part 'profile_model.g.dart';

ProfileModel profileModelFromJson(String str) =>
    ProfileModel.fromJson(json.decode(str));

String profileModelToJson(ProfileModel data) => json.encode(data.toJson());

@freezed
class ProfileModel with _$ProfileModel {
  const factory ProfileModel({
    @JsonKey(name: "status") int? status,
    @JsonKey(name: "data") Data? data,
    @JsonKey(name: "message") String? message,
  }) = _ProfileModel;

  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: "_id") String? id,
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
    @JsonKey(name: "socialAccount") List<dynamic>? socialAccount,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Role with _$Role {
  const factory Role({
    @JsonKey(name: "_id") String? id,
    @JsonKey(name: "role") String? role,
    @JsonKey(name: "roleDisplayName") String? roleDisplayName,
  }) = _Role;

  factory Role.fromJson(Map<String, dynamic> json) => _$RoleFromJson(json);
}
