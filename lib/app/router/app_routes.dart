part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const SPLASH_PAGE = _Paths.SPLASH_PAGE;
  static const HOME_PAGE = _Paths.HOME_PAGE;
  static const LOGIN_PAGE = _Paths.LOGIN_PAGE;
  static const REGISTER_PAGE = _Paths.REGISTER_PAGE;
  static const OTP_VERIFICATION_PAGE = _Paths.OTP_VERIFICATION_PAGE;
  static const VERIFICATION_INITIAL_PAGE = _Paths.VERIFICATION_INITIAL_PAGE;
  static const VERIFICATION_IMAGE_PAGE = _Paths.VERIFICATION_IMAGE_PAGE;
  static const VERIFICATION_SUCCESS_PAGE = _Paths.VERIFICATION_SUCCESS_PAGE;
  static const VERIFICATION_PAGE = _Paths.VERIFICATION_PAGE;
  static const TAMBAH_JAJAN_PAGE = _Paths.TAMBAH_JAJAN_PAGE;
}

abstract class _Paths {
  _Paths._();
  static const SPLASH_PAGE = '/';
  static const HOME_PAGE = '/home-page';
  static const LOGIN_PAGE = '/login-page';
  static const REGISTER_PAGE = '/register-page';
  static const OTP_VERIFICATION_PAGE = '/otp-page';
  static const VERIFICATION_INITIAL_PAGE = '/verification-initial-page';
  static const VERIFICATION_IMAGE_PAGE = '/verification-image-page';
  static const VERIFICATION_SUCCESS_PAGE = '/verification-success-page';
  static const VERIFICATION_PAGE = '/verification-page';
  static const TAMBAH_JAJAN_PAGE = '/tambah-jajan-page';

}