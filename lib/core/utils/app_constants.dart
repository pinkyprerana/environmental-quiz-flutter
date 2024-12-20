import 'package:flutter/cupertino.dart';

class AppConstants {
  static const String APP_NAME = 'Green Quest';
  static const double VERSION = 0.1;

  //Authentication
  static const String SIGNIN = 'Sign In';
  static const String SIGNUP = 'Sign Up';
  static const String PhoneNumber_message = 'Enter Phone Number';
  static const String UserName_message = 'Enter User Name';
  static const String UserJobDesignation_message = 'Enter Job Designation';
  static const String UserID_message = 'Enter User ID';
  static const String Password_message = 'Enter Password';
  static const String EmailID_message = 'Enter Email ID';
  static const String OTP_message = 'Enter OTP';
  static const String ENTER_VERIFICATION_CODE = 'Enter Verification Code';
  static const String SUCCESS = 'Success';
  static const String FORGOT_PASSWORD = 'Forgot Password?';
  static const String SEND = 'Send';
  static const String INTRO = 'Protecting Our Planet One Task At a Time.';
  static const String GET_STARTED = 'Get Started';
  static const String CREATE_NEW_ACCOUNT = 'Create New Account';
  static const String ALREADY_HAVE_AN_ACCOUNT = 'Already have an account?';
  static const String SIGNUP_WITH_GOOGLE = 'Sign Up with Google';
  static const String LOGOUT = 'Logout';
  static const String LOGOUT_message = 'Are you sure you want to log out?';
  static const String DONT_HAVE_AN_ACCOUNT = 'Don’t have an account?';
  static const String DONT_HAVE_AN_ACCOUNT_SIGN_UP =
      'Don’t have an account? Sign Up';
  static const String LOGIN = 'Login';
  static const String SUBMIT = 'Submit';

  //Profile
  static const String CANCEL = 'Cancel';
  static const String SAVE = 'Save';
  static const String DELETE = 'Delete';
  static const String Address_message = 'Enter valid address';
  static const String DOB_message = 'Enter valid Date of Birth';
  static const String SEARCH = 'Search';
  static const String SEARCH_TASK = 'Search Task';
  static const String EDIT_PROFILE = 'Edit profile';

  // User's related
  static const String USER_ID = 'User Id';
  static const String PASSWORD = 'Password';
  static const String NEW_PASSWORD = 'New Password';
  static const String CONFIRM_PASSWORD = 'Confirm Password';
  static const String DESIRED_PASSWORD = 'Desired Password';
  static const String REMEMBER_ME = 'Remember Me';
  static const String USER_LICENSE_TOKEN = "User License Token";
  static const String FULL_USER_NAME = 'Username';
  static const String EMAIL_ADDRESS = 'Email Address';
  static const String USER_GENDER = "Gender";
  static const String USER_DOB = "Date Of Birth";
  static const String USER_PROFILE_IMAGE = "Image";
  static const String FIRST_NAME = 'First Name';
  static const String LAST_NAME = 'Last Name';
  static const String FULL_NAME = 'Full Name';
  static const String MOBILE_NUMBER = "Mobile Number";
  static const String ADDRESS = "Address";
  static const String USER_TYPE = "User Type";
  static const String COUNTRY = "Country";
  static const String ZIP_CODE = "Zip Code";
  static const String SELECT_COUNTY_message = 'Select Country First !';
  static const String CITY = "City";
  static const String ACCEPT = "Accept";
  static const String TAC = "Terms and Conditions";
  static const String OF_THE_APPLICATION = "of the application.";

  // Token
  static const String TOKEN = 'token';
  static const String ACCESS_TOKEN = 'access_token';
  static const String countryCode = '+91';
  static const int OTP_TIMER_TIME = 30;
  // static const String ON_BOARDING_SKIP = 'on_boarding_skip';

  // validation string.
  static const String Password_limit_error_message =
      'Password must not be less than 8 digits';
  static const String PhoneNumber_limit_error_message =
      'Contact number must not be less than 10 digits';

  //Bottom Navigation Bar
  static const String TASKS = 'Tasks';
  static const String WALLET = 'Wallet';
  static const String HOME = 'Home';
  static const String MYTASKS = 'MyTasks';
  static const String PROFILE = 'Profile';

  static const String PERCENTAGE = "50%";
  static const String UPLOAD = "Upload";
  static const String IT_IS_A_LONG_ESTABLISHED_FACT =
      "It is a long established fact that a reader will be distracted by";
  static const String IT_IS_A_LONG_ESTABLISHED_FACT_2 =
      "It is a long established fact that a reader will";
  static const String IT_IS_A_LONG_ESTABLISHED_FACT_3 =
      "It is a long established fact that a reader will be distracted by the readable";
  static const String IT_IS_A_LONG_ESTABLISHED_FACT_4 =
      "We have successfully send the gift voucher to the demomail@gmail.com";
  static const String MY_TASK_DESCRIPTION =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry printer took.";
  static const String TASK_DESCRIPTION =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.";
  static const String LOREM_IPSUM = "Lorem Ipsum";
  static const String UPLOAD_YOUR_TASK = "Upload Your Task";
  static const String REWARDS = "Rewards";
  static const String LOREM_IPSUM_DUMMY = "Lorem Ipsum Dummy";
  static const String SOMETHING_WENT_WRONG = "Something Went Wrong!";
  static const String NETWORK_ERROR = "Network Error";
  static const String ONBOARDING_THREE = "Onboarding Three";
  static const String ONBOARDING_TWO = "Onboarding Two";
  static const String ONBOARDING_ONE = "Onboarding One";
  static const String IT_IS_A_LONG_FACT = "It is a long established fact";
  static const String GREEN = "Green";
  static const String PLANTING_A_TREE = "Planting a Tree";
  static const String HIKING_WITH_GROUP = "Hiking with group";
  static const String CLEANING_LOCALITY = "Cleaning locality";
  static const String Q = "Q";
  static const String UEST = "uest";
  static const String SKIP = "Skip";
  static const String LOREM_IPSUM_IS_SIMPLY =
      "Lorem Ipsum is simply dummy text sum";
  static const String APP_NAVIGATION = "App Navigation";
  static const String SPLASH_SCREEN = "Splash Screen";
  static const String CHECK_SCREEN =
      "Check your app's UI from the below demo screens of your app.";
}

//ScreenSize
bool isDesktop(BuildContext context) =>
    MediaQuery.of(context).size.width >= 800;
