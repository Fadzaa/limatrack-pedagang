part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const SPLASH_PAGE = _Paths.SPLASH_PAGE;
  static const HOME_PAGE = _Paths.HOME_PAGE;
  static const LOGIN_PAGE = _Paths.LOGIN_PAGE;
  static const REGISTER_PAGE = _Paths.REGISTER_PAGE;
  static const OTP_VERIFICATION_PAGE = _Paths.OTP_VERIFICATION_PAGE;
}

abstract class _Paths {
  _Paths._();
  static const SPLASH_PAGE = '/';
  static const HOME_PAGE = '/home-page';
  static const LOGIN_PAGE = '/login-page';
  static const REGISTER_PAGE = '/register-page';
  static const OTP_VERIFICATION_PAGE = '/otp-page';

}