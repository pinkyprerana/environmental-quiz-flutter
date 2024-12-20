// ignore_for_file: parameter_assignments, empty_catches

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/infrastructure/api_url.dart';
import '../../../core/infrastructure/hive_database.dart';
import '../../../core/infrastructure/network_api_services.dart';
import '../../../core/utils/app_log.dart';
import '../../../core/utils/toast.dart';
import '../../../core/utils/validator.dart';
import '../domain/totalEarnedPoints_model.dart';
import 'auth_state.dart';

class AuthNotifier extends StateNotifier<AuthState> {
  AuthNotifier(this._networkApiService, this._hiveDatabase)
      : super(const AuthState()) {
    //fetchCountry();
  }

  final NetworkApiService _networkApiService;
  final HiveDatabase _hiveDatabase;

  // LOGIN START
  final TextEditingController loginEmailTextController =
      TextEditingController();
  final TextEditingController loginPasswordTextController =
      TextEditingController();
  // LOGIN END

  // SIGNUP START
  final TextEditingController signupFirstNameTextController =
      TextEditingController();
  final TextEditingController signupLastNameTextController =
      TextEditingController();
  final TextEditingController signupEmailTextController =
      TextEditingController();
  final TextEditingController signupMobileTextController =
      TextEditingController();
  final TextEditingController signupCityTextController =
      TextEditingController();
  final TextEditingController signupZipCodeTextController =
      TextEditingController();
  final TextEditingController signupPasswordTextController =
      TextEditingController();
  final TextEditingController signupConfirmPasswordTextController =
      TextEditingController();
  // SIGNUP END

  // FORGOT PASSWORD START
  final TextEditingController forgotEmailTextController =
      TextEditingController();

  final TextEditingController otpTextController = TextEditingController();

  final TextEditingController newPasswordTextController =
      TextEditingController();
  final TextEditingController confirmPasswordTextController =
      TextEditingController();
  // FORGOT PASSWORD END

  void resetValues() {
    loginEmailTextController.clear();
    loginPasswordTextController.clear();
    signupEmailTextController.clear();
    signupFirstNameTextController.clear();
    signupLastNameTextController.clear();
    signupMobileTextController.clear();
    signupPasswordTextController.clear();
    otpTextController.clear();
    forgotEmailTextController.clear();
    newPasswordTextController.clear();
    confirmPasswordTextController.clear();
    signupCityTextController.clear();
    signupZipCodeTextController.clear();
    signupConfirmPasswordTextController.clear();
    // var pass = _hiveDatabase.box.get(AppPreferenceKeys.password);
    // if (pass != null) {
    // }
    // state = state.copyWith(
    //   checked: false,
    //   selectedCity: null,
    //   selectedCode: null,
    // );
  }

  bool validateLoginFields() {
    if (loginEmailTextController.text.isEmpty) {
      showToastMessage('Please enter email');
      return false;
    } else if (!Validator.validateEmail(loginEmailTextController.text)) {
      showToastMessage('Please enter valid email');
      return false;
    } else if (loginPasswordTextController.text.isEmpty) {
      showToastMessage('Please enter password');
      return false;
    } else {
      return true;
    }
  }

  bool validateForgotPassowrdFields() {
    if (forgotEmailTextController.text.isEmpty) {
      showToastMessage('Please enter mobile number');
      return false;
    } else if (forgotEmailTextController.text.length < 10) {
      showToastMessage('Please enter valid mobile number');
      return false;
    } else {
      return true;
    }
  }

  bool validateCompleteProfileFields() {
    if (signupFirstNameTextController.text.isEmpty) {
      showToastMessage('Please enter first name');
      return false;
    }
    if (signupLastNameTextController.text.isEmpty) {
      showToastMessage('Please enter last name');
      return false;
      // } else if (state.selectedCountry == null) {
      //   showToastMessage('Please select country');
      //   return false;
      // } else if (state.selectedCity == null) {
      //   showToastMessage('Please select city');
      //   return false;
    } else if (signupMobileTextController.text.isEmpty ||
        signupMobileTextController.text.length < 12) {
      showToastMessage('Please enter mobile');
      return false;
    } else if (state.checked == false) {
      showToastMessage('Please accept terms and condition');
      return false;
    } else {
      return true;
    }
  }

  bool validateSigninFields() {
    if (loginEmailTextController.text.isEmpty) {
      showToastMessage('Please enter email');
      return false;
    } else if (!Validator.validateEmail(loginEmailTextController.text)) {
      showToastMessage('Please enter valid email');
      return false;
    } else if (loginPasswordTextController.text.isEmpty) {
      showToastMessage('Please enter password');
      return false;
    } else {
      return true;
    }
    /* else if (state.checked == false) {
      showToastMessage('Please accept terms and condition');
      return false;
    }  */
  }

  populateProfileForm() async {
    String? email = await _hiveDatabase.box.get(AppPreferenceKeys.email);
    String? fullName = await _hiveDatabase.box.get(AppPreferenceKeys.fullName);
    if (email != null && email.isNotEmpty) {
      signupEmailTextController.text = email;
    }
    if (fullName != null && fullName.isNotEmpty) {
      signupFirstNameTextController.text = fullName;
    }
  }

  Future<void> signUp(VoidCallback? voidCallback) async {
    state = state.copyWith(isLoading: true);

    final firstName = signupFirstNameTextController.text;
    final lastName = signupLastNameTextController.text;
    final email = signupEmailTextController.text;
    final phone = signupMobileTextController.text;
    final city = signupCityTextController.text;
    final zipcode = signupZipCodeTextController.text;
    final password = signupPasswordTextController.text;
    final confirmPassword = signupConfirmPasswordTextController.text;

    // input validations
    final isInputValid = validateSignupFields();

    if (!isInputValid) {
      state = state.copyWith(isLoading: false);
      return;
    }

    if (!state.checked) {
      state = state.copyWith(isLoading: false);
      showToastMessage('Please accept Terms & Conditions');
      return;
    }

    // api call
    try {
      Map<String, dynamic> requestBody = {
        "first_name": firstName,
        "last_name": lastName,
        "email": email.toLowerCase(),
        "phone": phone,
        "city": city,
        "zipcode": zipcode,
        "password": password,
        "confirm_password": confirmPassword,
      };

      var (response, dioException) = await _networkApiService.postApiRequest(
        url: '${AppUrl.BASE_URL}${AppUrl.signUp}',
        body: requestBody,
      );
      state = state.copyWith(isLoading: false);

      if (response == null && dioException == null) {
        showconnectionWasInterruptedToastMesage();
      } else if (dioException != null) {
        showDioError(dioException);
      } else {
        Map<String, dynamic> jsonData = response.data;
        if (jsonData['status'] == 200) {
          AppLog.log(jsonData.toString());
          showToastMessage(jsonData['message']);
          signupFirstNameTextController.clear();
          signupLastNameTextController.clear();
          signupEmailTextController.clear();
          signupMobileTextController.clear();
          signupCityTextController.clear();
          signupZipCodeTextController.clear();
          signupPasswordTextController.clear();
          signupConfirmPasswordTextController.clear();

          voidCallback?.call();
        } else {
          showToastMessage(jsonData['message']);
        }
      }
    } catch (error) {
      state = state.copyWith(isLoading: false);
      showconnectionWasInterruptedToastMesage();
    }
  }

  bool validateSignupFields() {
    if (signupFirstNameTextController.text.isEmpty) {
      showToastMessage('Please enter first name');
      return false;
    } else if (signupLastNameTextController.text.isEmpty) {
      showToastMessage('Please enter last name');
      return false;
    } else if (signupEmailTextController.text.isEmpty) {
      showToastMessage('Please enter email');
      return false;
    } else if (!Validator.validateEmail(signupEmailTextController.text)) {
      showToastMessage('Please enter valid email');
      return false;
    } else if (signupMobileTextController.text.isEmpty) {
      showToastMessage('Please enter mobile');
      return false;
    } else if (signupMobileTextController.text.length < 8) {
      showToastMessage('Please enter a valid mobile number');
      return false;
    } else if (signupCityTextController.text.isEmpty) {
      showToastMessage('Please enter your city\'s name');
      return false;
    } else if (signupZipCodeTextController.text.isEmpty) {
      showToastMessage('Please enter your zipcode');
      return false;
    } else if (signupZipCodeTextController.text.length < 5 ||
        signupZipCodeTextController.text.length > 10) {
      showToastMessage('Please enter a valid zipcode');
      return false;
    } else if (signupPasswordTextController.text.isEmpty) {
      showToastMessage('Please enter password');
      return false;
    } else if (signupConfirmPasswordTextController.text.isEmpty) {
      showToastMessage('Please enter your confirm password');
      return false;
    } else if (signupPasswordTextController.text.length < 6) {
      showToastMessage('Please enter atlease 6 digit password');
      return false;
    } else if (signupPasswordTextController.text !=
        signupConfirmPasswordTextController.text) {
      showToastMessage('Password and confirm password can\'t be different');
      return false;
    }
    // else if (state.checked == false) {
    //   showToastMessage('Please accept terms and condition');
    //   return false;
    // }
    else {
      return true;
    }
  }

  void acceptTAC() {
    state = state.copyWith(checked: !state.checked);
  }

  Future<void> signIn(VoidCallback voidCallback) async {
    state = state.copyWith(isLoading: true);

    final isInputValid = validateLoginFields();

    if (!isInputValid) {
      state = state.copyWith(isLoading: false);
      return;
    }

    try {
      var (response, dioException) = await _networkApiService
          .postApiRequest(url: '${AppUrl.BASE_URL}${AppUrl.signin}', body: {
        "email": loginEmailTextController.text.toLowerCase(),
        "password": loginPasswordTextController.text,
      });
      state = state.copyWith(isLoading: false);

      if (response == null && dioException == null) {
        showconnectionWasInterruptedToastMesage();
      } else if (dioException != null) {
        showDioError(dioException);
      } else {
        Map<String, dynamic> jsonData = response.data;
        if (response.statusCode == 200) {
          // AppLog.log(jsonEncode(jsonData));

          if (state.rememberMe) {
            await _hiveDatabase.box.put(AppPreferenceKeys.rememberMeEmail,
                loginEmailTextController.text);
            await _hiveDatabase.box.put(AppPreferenceKeys.rememberMePassword,
                loginPasswordTextController.text);
          } else {
            await _hiveDatabase.box.delete(AppPreferenceKeys.rememberMeEmail);
            await _hiveDatabase.box
                .delete(AppPreferenceKeys.rememberMePassword);
          }

          _hiveDatabase.box
              .put(AppPreferenceKeys.token, jsonData['token'] ?? '');
          _hiveDatabase.box
              .put(AppPreferenceKeys.id, jsonData['data']['_id'] ?? '');
          _hiveDatabase.box.put(AppPreferenceKeys.firstName,
              jsonData['data']['first_name'] ?? '');
          _hiveDatabase.box.put(
              AppPreferenceKeys.lastName, jsonData['data']['last_name'] ?? '');
          _hiveDatabase.box.put(
              AppPreferenceKeys.fullName, jsonData['data']['fullName'] ?? '');
          _hiveDatabase.box
              .put(AppPreferenceKeys.phone, jsonData['data']['phone'] ?? '');
          _hiveDatabase.box
              .put(AppPreferenceKeys.email, jsonData['data']['email'] ?? '');
          _hiveDatabase.box.put(AppPreferenceKeys.profileImage,
              jsonData['data']['profile_image'] ?? '');
          _hiveDatabase.box
              .put(AppPreferenceKeys.city, jsonData['data']['city'] ?? '');
          _hiveDatabase.box.put(
              AppPreferenceKeys.zipcode, jsonData['data']['zipcode'] ?? '');
          showToastMessage(jsonData["message"]);
          loginEmailTextController.clear();
          loginPasswordTextController.clear();
          state = state.copyWith(rememberMe: false);
          voidCallback.call();
        } else if (jsonData['message'] ==
            "Sorry user is deleted by admin. Please contact with admin.") {
          showToastMessage('Account has been deleted by Admin');
        } else {
          showToastMessage(jsonData['message']);
        }
      }
    } catch (error) {
      state = state.copyWith(isLoading: false);
      showconnectionWasInterruptedToastMesage();
    }
  }

  Future<void> sendOTP(VoidCallback voidCallback) async {
    if (forgotEmailTextController.text.isEmpty) {
      showToastMessage('Email Id is required');
      return;
    }
    state = state.copyWith(isLoading: true);
    try {
      var (response, dioException) = await _networkApiService.postApiRequest(
          url: '${AppUrl.BASE_URL}${AppUrl.forgotPassword}',
          body: {
            "email": forgotEmailTextController.text,
          });
      state = state.copyWith(isLoading: false);

      if (response == null && dioException == null) {
        showconnectionWasInterruptedToastMesage();
      } else if (dioException != null) {
        showDioError(dioException);
      } else {
        Map<String, dynamic> jsonData = response.data;
        AppLog.log(jsonEncode(jsonData));
        if (response.statusCode == 200) {
          // forgotEmailTextController.clear();
          showToastMessage(jsonData['message']);
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

  Future<void> verifyOTP(VoidCallback voidCallback) async {
    state = state.copyWith(isLoading: true);
    try {
      var (response, dioException) = await _networkApiService
          .postApiRequest(url: '${AppUrl.BASE_URL}${AppUrl.verifyOtp}', body: {
        "email": forgotEmailTextController.text,
        "otp": otpTextController.text,
      });
      state = state.copyWith(isLoading: false);

      if (response == null && dioException == null) {
        showconnectionWasInterruptedToastMesage();
      } else if (dioException != null) {
        showDioError(dioException);
      } else {
        Map<String, dynamic> jsonData = response.data;

        if (response.statusCode == 200) {
          AppLog.log(jsonEncode(jsonData));
          showToastMessage(jsonData['message']);
          // forgotEmailTextController.clear();
          otpTextController.clear();
          // state = state.copyWith(selectedCode: null, token: jsonData['token']);
          voidCallback.call();
        } else {
          showToastMessage(jsonData['message']);
          otpTextController.text = '';
        }
      }
    } catch (error) {
      state = state.copyWith(isLoading: false);
      showconnectionWasInterruptedToastMesage();
    }
  }

  Future<void> changePassword(VoidCallback voidCallback) async {
    state = state.copyWith(isLoading: true);
    try {
      var (response, dioException) = await _networkApiService
          .postApiRequestWithToken(
              url: '${AppUrl.BASE_URL}${AppUrl.changePassword}',
              body: {
            "new_password": newPasswordTextController.text,
            "confirm_password": confirmPasswordTextController.text,
            "email": forgotEmailTextController.text,
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
          newPasswordTextController.clear();
          confirmPasswordTextController.clear();
          forgotEmailTextController.clear();
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

  Future<void> termsCond(VoidCallback voidCallback) async {
    state = state.copyWith(isLoading: true);
    try {
      var (response, dioException) = await _networkApiService.getApiRequest(
          url: '/cms/terms_and_condition');
      state = state.copyWith(isLoading: false);

      if (response == null && dioException == null) {
        showconnectionWasInterruptedToastMesage();
      } else if (dioException != null) {
        showDioError(dioException);
      } else {
        Map<String, dynamic> jsonData = response.data;
        if (response.statusCode == 200) {
          AppLog.log(jsonEncode(jsonData));
          _hiveDatabase.box
              .put(AppPreferenceKeys.terms, jsonData['data']['content'] ?? '');
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

  void rememberUser() {
    state = state.copyWith(rememberMe: !(state.rememberMe));
  }

  void checksavedUser() {
    String? email = _hiveDatabase.box.get(AppPreferenceKeys.rememberMeEmail);
    String? pass = _hiveDatabase.box.get(AppPreferenceKeys.rememberMePassword);
    if (_hiveDatabase.box.get(AppPreferenceKeys.rememberMePassword) != null &&
        _hiveDatabase.box.get(AppPreferenceKeys.rememberMeEmail) != null) {
      state = state.copyWith(rememberMe: true);
      loginEmailTextController.text = email ?? '';
      loginPasswordTextController.text = pass ?? '';
    }
  }

  Future<void> logout(VoidCallback voidCallback) async {
    await _hiveDatabase.box.delete(AppPreferenceKeys.token);
    await _hiveDatabase.box.delete(AppPreferenceKeys.email);
    await _hiveDatabase.box.delete(AppPreferenceKeys.id);
    await _hiveDatabase.box.delete(AppPreferenceKeys.firstName);
    await _hiveDatabase.box.delete(AppPreferenceKeys.lastName);
    await _hiveDatabase.box.delete(AppPreferenceKeys.fullName);
    await _hiveDatabase.box.delete(AppPreferenceKeys.phone);
    await _hiveDatabase.box.delete(AppPreferenceKeys.profileImage);
    voidCallback.call();
  }

  Future<void> onboardUser() async {
    await _hiveDatabase.box.put(AppPreferenceKeys.hasOnboarded, 'true');
  }

  Future<void> getTotalEarnedPoints({VoidCallback? voidCallback}) async {
    state = state.copyWith(isLoading: true);

    try {
      var (response, dioException) =
          await _networkApiService.getApiRequestWithToken(
              url: "/task/total_earn_points"); //AppUrl.totalEarnedPoints
      state = state.copyWith(isLoading: false);
      if (response == null && dioException == null) {
        showconnectionWasInterruptedToastMesage();
      } else if (dioException != null) {
        showDioError(dioException);
      } else {
        final Map<String, dynamic> totalEarnedPoints = response.data;
        AppLog.log("Points---${totalEarnedPoints.toString()}");
        if (totalEarnedPoints['status'] == 200) {
          AppLog.log(
              "Points retrieved successfully: ${totalEarnedPoints.toString()}");
          state = state.copyWith(
            totalEarnedPoints:
                TotalEarnedPointsModel.fromJson(totalEarnedPoints),
          );
        }

        // showToastMessage(jsonData['message'] ?? '');
        // if (totalEarnedPoints['status'] == 200) {
        //   if (voidCallback != null) {
        //     voidCallback.call();
        //   }
        // }
      }
    } catch (error) {
      state = state.copyWith(isLoading: false);
      showconnectionWasInterruptedToastMesage();
    }
  }

  Future<void> deleteAccount(VoidCallback voidCallback) async {
    state = state.copyWith(isLoading: true);

    try {
      var (response, dioException) =
          await _networkApiService.getApiRequestWithToken(
              url: "${AppUrl.BASE_URL}${AppUrl.deleteAccount}");

      if (response == null && dioException == null) {
        showconnectionWasInterruptedToastMesage();
      } else if (dioException != null) {
        showDioError(dioException);
      } else {
        Map<String, dynamic> jsonData = response.data;
        state = state.copyWith(isLoading: false);
        if (jsonData["status"] == 200) {
          showToastMessage(jsonData["message"]);
          voidCallback.call();
        }
      }
    } catch (error) {
      AppLog.log(error.toString());
      state = state.copyWith(isLoading: false);
      showconnectionWasInterruptedToastMesage();
    }
  }

  // Future<void> resetPassword(VoidCallback voidCallback) async {
  //   state = state.copyWith(isLoading: true);
  //   try {
  //     var (response, dioException) = await _networkApiService
  //         .postApiRequestWithToken(url: '/user/resetpassword', body: {
  //       "password": forgotCPassowrdTextController.text,
  //     });
  //     state = state.copyWith(isLoading: false);

  //     if (response == null && dioException == null) {
  //       showconnectionWasInterruptedToastMesage();
  //     } else if (dioException != null) {
  //       showDioError(dioException);
  //     } else {
  //       Map<String, dynamic> jsonData = response.data;

  //       if (response.statusCode == 200) {
  //         forgotCPassowrdTextController.clear();
  //         forgotPassowrdTextController.clear();
  //         showToastMessage('Password Changed Successfully');
  //         voidCallback.call();
  //       } else {
  //         showToastMessage(jsonData['message']);
  //       }
  //     }
  //   } catch (error) {
  //     state = state.copyWith(isLoading: false);
  //     showconnectionWasInterruptedToastMesage();
  //   }
  // }

  // bool validateChangeFields() {
  //   if (forgotPassowrdTextController.text.isEmpty) {
  //     showToastMessage('Please enter password');
  //     return false;
  //   } else if (forgotPassowrdTextController.text.length < 6) {
  //     showToastMessage('Please enter atlease 6 digit password');
  //     return false;
  //   } else if (forgotCPassowrdTextController.text.isEmpty) {
  //     showToastMessage('Please enter confirm password');
  //     return false;
  //   } else if (forgotCPassowrdTextController.text.length < 6) {
  //     showToastMessage('Please enter atlease 6 digit confirm password');
  //     return false;
  //   } else if (forgotPassowrdTextController.text !=
  //       forgotCPassowrdTextController.text) {
  //     showToastMessage('Password mismatch');
  //     // forgotCPassowrdTextController.text = '';
  //     // forgotPassowrdTextController.text = '';
  //     return false;
  //   } else {
  //     return true;
  //   }
  // }

  // bool validateChangePasswordFields() {
  //   if (changeOPassowrdTextController.text.isEmpty) {
  //     showToastMessage('Please enter old password');
  //     return false;
  //   } else if (changeOPassowrdTextController.text.length < 6) {
  //     showToastMessage('Please enter atlease 6 digit old password');
  //     return false;
  //   } else if (newPasswordTextController.text.isEmpty) {
  //     showToastMessage('Please enter password');
  //     return false;
  //   } else if (newPasswordTextController.text.length < 6) {
  //     showToastMessage('Please enter atlease 6 digit password');
  //     return false;
  //   } else if (confirmPasswordTextController.text.isEmpty) {
  //     showToastMessage('Please enter confirm password');
  //     return false;
  //   } else if (confirmPasswordTextController.text.length < 6) {
  //     showToastMessage('Please enter atlease 6 digit confirm password');
  //     return false;
  //   } else if (newPasswordTextController.text !=
  //       confirmPasswordTextController.text) {
  //     showToastMessage('Password mismatch');
  //     return false;
  //   } else {
  //     return true;
  //   }
  // }
}
