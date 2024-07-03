class ApiConstants {
  // static const String baseUrl =
  //     "https://cg8gkks.srv-01.purezzatechnologies.com/api";
  static const String baseUrl = "http://localhost:8800/api";
  static const String signUp = "/signup";
  static const String signUpOtpVerify = "/signup/verify-otp";
  static const String login = "/login";
  static const String sendOtpForgetPassword = "/forgotpassword";
  static const String verifyForgetPassword = "/verify-forgotpassword";
  static const String resendOtp = "/otp/resend-otp";
  static const String getUser = "/user";
  static const String getUserWallet = "/getUserWallet";
  static const String getGrounds = "/ground/getall";
  static const String getBySport = "/ground/getBySport";
  static const String bookingHistory = "/booking/slot-details";
  static const String coachBookingHistory = "/booking/coach-slot-details";
  static const String cancellation = "/booking/cancellation-requests/";
  static const String updateUser = "/update";
  static const String subscription = "/subscription/getPlan";
  static const String addWishlist = "/wishlist/add";
  static const String getWishlist = "/wishlist/mywishlist";
  static const String myPurchases = "/history/mypurchases";
  static const String deleteWishlist = "/wishlist/remove";

  static const String purchaseSubscription = "/purchase-subscription";
  static const String changepassword = "/changepassword";
  static const String faq = "/faq/";
  static const String help = "/complaintQuery";
  static const String getAllCoach = "/admin/getAllCouch";
  static const String getCoachDetail = "/admin/coach/";
  static const String getInstitutionIds = "/school/getInstitutionIds";
  static const String checkOut = "/booking/book-slot";
  static const String getSummary = "/booking/getBookingDetails";
  static const String getSlot = "/booking/slots/";
  static const String coachBookSlot = "/booking/book-coach-slot/";
}
