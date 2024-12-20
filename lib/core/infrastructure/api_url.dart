class AppUrl {
  static const String SERVER =
      "https://green-quest-admin.dedicateddevelopers.us/api/";
  static const String BASE_URL = SERVER;

  //WebSocket
  // static const String WS_CHAT_URL = "ws://$SERVER/ws/chat/";
  // static const String WS_NOTIFICATION = "ws://$SERVER/ws/notify/";

  // Authentication
  static String signUp = 'user/signup';
  static String signin = 'user/signin';
  static String forgotPassword = 'user/forgot-password';
  static String verifyOtp = 'user/forget-password-otp-verification';
  static String changePassword = 'user/forget-password-change-password';
  static String deleteAccount = 'user/delete';

  //Country list
  // static String countryList = '/country/list';

  //Task
  // static String taskDetails = '/task/details';
  // static String taskCategoriesList = '/task/categorieslist';
  // static String taskList = '/task/list';
  // static String searchList = '/task/searchlist';

  // Coins
  // static String insertCart = 'cart/insert';
  // static String listCart = 'cart/list';
  // static String removeCart = 'cart/remove';

  //User details
  static String userDetails = 'user/details';
  static String userTasks = 'user/tasks';

  static String updateProfile = '/user/profile-update';
  static String createContact = '/contact/create';
  static String userDelete = 'user/delete';
  static String userEarnedPoints = 'user/earnedpoints';
  static String userRedeemPoints = 'user/redeempoints';
  static String userGiftCard = 'user/giftcards';
  static String userTaskMediaProof = 'user/proofmedia';
  static String userPrize = 'user/prize';
  static String removeCard = 'user/giftcards/remove';
  static String defaultCard = 'user/giftcards/default';

  /// list of all tasks
  static String allTasks = "/task/list";

  /// accept any task
  static String acceptTask = '/task/assigned';

  /// update task with image
  static String updateTask = '/task/image_upload';

  /// assigned tasklist
  static String getAssignedList = "/task/assignedlist";

  /// Tasks
  static String getCompletedTasksList = "task/completedlist";

  /// Wallet
  static String getPointsHistory = "task/credit_history";

  /// Profile
  static const String profileImageBase =
      'https://green-quest-admin.dedicateddevelopers.us/uploads/user/profile_pic/';
  static String getUserProfile = "user/profile";
  static String changeProfilePassword = "user/change-password";

  /// Image Base url
  static String taskBaseImageUrl =
      "https://green-quest-admin.dedicateddevelopers.us/uploads/task/";
  static String userImageUploadedBaseUrl =
      "https://green-quest-admin.dedicateddevelopers.us/uploads/user_task_ref/";
}
