class ApiEndPoint {
  static String baseUrl = 'https://limatrack-api.rplrus.com/api';
  static String baseUrlAuth = '$baseUrl/users';

  //Auth
  static String otpVerification = '$baseUrl/otp';
  static String login = '$baseUrlAuth/login-pedagang';
  static String register = '$baseUrlAuth/register-pedagang';
  static String logout = '$baseUrl/users/logout';

  //Pedagang
  static String pedagangAll = '$baseUrl/pedagang/show-all';
  static String pedagangById = '$baseUrl/pedagang/show';


}