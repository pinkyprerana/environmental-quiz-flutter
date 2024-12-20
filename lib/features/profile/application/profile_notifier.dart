import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:green_quest_app/core/infrastructure/api_url.dart';
import 'package:green_quest_app/features/profile/application/profile_state.dart';
import 'package:green_quest_app/features/profile/domain/profile_model.dart';

import '../../../core/infrastructure/hive_database.dart';
import '../../../core/infrastructure/network_api_services.dart';
import '../../../core/utils/app_log.dart';
import '../../../core/utils/toast.dart';

class ProfileNotifier extends StateNotifier<ProfileState> {
  ProfileNotifier(this._networkApiService, this._hiveDatabase)
      : super(const ProfileState());

  final NetworkApiService _networkApiService;
  final HiveDatabase _hiveDatabase;

  /// EDIT PROFILE START
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController profileImageController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController mobileController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController zipCodeController = TextEditingController();

  /// EDIT PROFILE END

  /// CHANGE PASSWORD START
  final TextEditingController oldPasswordController = TextEditingController();
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  /// CHANGE PASSWORD END

  void fetchUserDetailsFromHive() async {
    state = state.copyWith(isLoading: true);
    final String firstName = _hiveDatabase.box.get(AppPreferenceKeys.firstName);
    final String lastName = _hiveDatabase.box.get(AppPreferenceKeys.lastName);
    final String fullName = _hiveDatabase.box.get(AppPreferenceKeys.fullName);
    final String profileImage =
        _hiveDatabase.box.get(AppPreferenceKeys.profileImage);
    final String email = _hiveDatabase.box.get(AppPreferenceKeys.email);
    final String mobile = _hiveDatabase.box.get(AppPreferenceKeys.phone);
    final String city = _hiveDatabase.box.get(AppPreferenceKeys.city);
    final String zipcode = _hiveDatabase.box.get(AppPreferenceKeys.zipcode);

    if (firstName.isNotEmpty &&
        lastName.isNotEmpty &&
        fullName.isNotEmpty &&
        email.isNotEmpty &&
        mobile.isNotEmpty &&
        city.isNotEmpty &&
        zipcode.isNotEmpty) {
      firstNameController.text = firstName;
      lastNameController.text = lastName;
      fullNameController.text = fullName;
      emailController.text = email;
      mobileController.text = mobile;
      cityController.text = city;
      zipCodeController.text = zipcode;
    }

    if (profileImage.isNotEmpty) {
      profileImageController.text = profileImage;
    }
    state = state.copyWith(isLoading: false);
  }

  Future<void> getUserProfile({VoidCallback? voidCallback}) async {
    state = state.copyWith(isLoading: true);

    try {
      var (response, dioException) =
          await _networkApiService.getApiRequestWithToken(
              url: "${AppUrl.BASE_URL}${AppUrl.getUserProfile}");
      state = state.copyWith(isLoading: false);
      if (response == null && dioException == null) {
        showconnectionWasInterruptedToastMesage();
      } else if (dioException != null) {
        showDioError(dioException);
      } else {
        Map<String, dynamic> profileData = response.data;
        AppLog.log("user profile data in json---${profileData.toString()}");
        if (profileData['status'] == 200) {
          AppLog.log(
              "Profile data retrieved successfully: ${profileData.toString()}");
          state = state.copyWith(
            profileModel: ProfileModel.fromJson(profileData),
          );
        }

        // showToastMessage(jsonData['message'] ?? '');
        if (profileData['status'] == 200) {
          if (voidCallback != null) {
            voidCallback.call();
          }
        }
      }
    } catch (error) {
      state = state.copyWith(isLoading: false);
      showconnectionWasInterruptedToastMesage();
    }
  }

  bool validateChangePasswordFields() {
    final oldPassword = oldPasswordController.text;
    final newPassword = newPasswordController.text;
    final confirmPassword = confirmPasswordController.text;

    if (oldPassword.isEmpty) {
      showToastMessage('Old password field is empty.');
      return false;
    } else if (newPassword.isEmpty) {
      showToastMessage('New password field is empty.');
      return false;
    } else if (confirmPassword.isEmpty) {
      showToastMessage('Confirm password field is empty.');
      return false;
    } else if (newPassword != confirmPassword) {
      showToastMessage('New password & confirm password did not match.');
      return false;
    } else if (newPassword.length < 6 || confirmPassword.length < 6) {
      showToastMessage('Password must be at least 6 characters.');
      return false;
    }

    return true;
  }

  Future<void> changePassword(VoidCallback voidCallback) async {
    state = state.copyWith(isLoading: true);
    try {
      var (response, dioException) = await _networkApiService
          .postApiRequestWithToken(
              url: '${AppUrl.BASE_URL}${AppUrl.changeProfilePassword}',
              body: {
            "old_password": oldPasswordController.text,
            "new_password": newPasswordController.text,
          });
      state = state.copyWith(isLoading: false);

      if (response == null && dioException == null) {
        showconnectionWasInterruptedToastMesage();
      } else if (dioException != null) {
        showDioError(dioException);
      } else {
        Map<String, dynamic> jsonData = response.data;

        if (response.statusCode == 200) {
          showToastMessage(jsonData['message']);
          oldPasswordController.clear();
          newPasswordController.clear();
          confirmPasswordController.clear();
          voidCallback.call();
        } else {
          showToastMessage(jsonData['message']);
        }
      }
    } catch (error) {
      state = state.copyWith(isLoading: false);
      showconnectionWasInterruptedToastMesage();
    }
  }

  bool isInputValid() {
    if (firstNameController.text.isEmpty) {
      showToastMessage('Please enter your first name');
      return false;
    } else if (lastNameController.text.isEmpty) {
      showToastMessage('Please enter your last name');
      return false;
    } else if (mobileController.text.isEmpty) {
      showToastMessage('Please enter your mobile number');
      return false;
    } else if (mobileController.text.length < 8) {
      showToastMessage('Please enter a valid mobile number');
      return false;
    } else if (cityController.text.isEmpty) {
      showToastMessage('Please enter your city');
      return false;
    } else if (zipCodeController.text.isEmpty) {
      showToastMessage('Please enter your zip code');
      return false;
    } else if (zipCodeController.text.length < 5) {
      showToastMessage('Please enter a valid zip code');
      return false;
    }

    return true;
  }

  updateProfile({required String img, VoidCallback? callback}) async {
    state = state.copyWith(isLoading: true);

    final isValid = isInputValid();

    if (!isValid) {
      return;
    }

    try {
      final userData = state.profileModel?.data;
      final phone = mobileController.text.isNotEmpty
          ? mobileController.text
          : userData?.phone;
      final first = firstNameController.text.isNotEmpty
          ? firstNameController.text
          : userData?.firstName;
      final last = lastNameController.text.isNotEmpty
          ? lastNameController.text
          : userData?.lastName;
      final city =
          cityController.text.isNotEmpty ? cityController.text : userData?.city;
      final zip = zipCodeController.text.isNotEmpty
          ? zipCodeController.text
          : userData?.zipcode;

      FormData formData = FormData.fromMap({
        "phone": phone,
        "first_name": first,
        "last_name": last,
        "city": city,
        "zipcode": zip,
        "email": userData?.email,
        if (img.split('/').last.isNotEmpty)
          "profile_image":
              await MultipartFile.fromFile(img, filename: img.split('/').last),
      });

      var (response, dioException) = await _networkApiService
          .postApiRequestWithToken(url: AppUrl.updateProfile, body: formData);

      state = state.copyWith(
        isLoading: false,
      );

      if (response == null && dioException == null) {
        showconnectionWasInterruptedToastMesage();
      } else if (dioException != null) {
        showDioError(dioException);
      } else {
        Map<String, dynamic> jsonData = response.data;
        AppLog.log(jsonData.toString());
        if (jsonData['status'] == 200) {
          // store in hive
          _hiveDatabase.box.put(AppPreferenceKeys.profileImage,
              jsonData['data']['profile_image'] ?? '');
          _hiveDatabase.box.put(AppPreferenceKeys.firstName,
              jsonData['data']['first_name'] ?? '');
          _hiveDatabase.box.put(
              AppPreferenceKeys.lastName, jsonData['data']['last_name'] ?? '');
          _hiveDatabase.box.put(
              AppPreferenceKeys.fullName, jsonData['data']['fullName'] ?? '');
          _hiveDatabase.box
              .put(AppPreferenceKeys.phone, jsonData['data']['phone'] ?? '');
          _hiveDatabase.box
              .put(AppPreferenceKeys.city, jsonData['data']['city'] ?? '');
          _hiveDatabase.box.put(
              AppPreferenceKeys.zipcode, jsonData['data']['zipcode'] ?? '');
          _hiveDatabase.box
              .put(AppPreferenceKeys.email, jsonData['data']['email'] ?? '');

          state = state.copyWith(
              profileModel: const ProfileModel().copyWith(
                  data: Data(
            fullName: jsonData['data']['fullName'] ?? '',
            phone: jsonData['data']['phone'] ?? '',
            profileImage: jsonData['data']['profile_image'] ?? '',
            firstName: jsonData['data']['first_name'] ?? '',
            lastName: jsonData['data']['last_name'] ?? '',
            city: jsonData['data']['city'] ?? '',
            zipcode: jsonData['data']['zipcode'] ?? '',
          )));
          callback?.call();
          showToastMessage(jsonData['message'] ?? '');
        }
      }
    } catch (error) {
      state = state.copyWith(isLoading: false);
      AppLog.log(error.toString());
      showconnectionWasInterruptedToastMesage();
    }
  }
}
