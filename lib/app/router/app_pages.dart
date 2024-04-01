import 'package:get/get.dart';
import 'package:limatrack_pedagang/app/pages/features/manage_page/manage_page_binding.dart';
import 'package:limatrack_pedagang/app/pages/features/manage_page/manage_page_view.dart';
import 'package:limatrack_pedagang/app/pages/features/tambah_jajan_page/tambah_jajan_page_binding.dart';
import 'package:limatrack_pedagang/app/pages/features/tambah_jajan_page/tambah_jajan_page_view.dart';
import 'package:limatrack_pedagang/app/pages/initial_pages/verfication_page/pages/verification_page_image.dart';
import 'package:limatrack_pedagang/app/pages/initial_pages/verfication_page/pages/verification_page_initial_view.dart';
import 'package:limatrack_pedagang/app/pages/initial_pages/verfication_page/pages/verification_page_success_view.dart';
import 'package:limatrack_pedagang/app/pages/initial_pages/verfication_page/verification_page_binding.dart';
import 'package:limatrack_pedagang/app/pages/initial_pages/verfication_page/verification_page_view.dart';
import '../pages/features/chat_page/chat_page_binding.dart';
import '../pages/features/home_page/bottom_navigation.dart';
import '../pages/features/home_page/home_page_binding.dart';
import '../pages/features/profile_page/profile_page_binding.dart';
import '../pages/initial_pages/login_page/login_page_binding.dart';
import '../pages/initial_pages/login_page/login_page_view.dart';
import '../pages/initial_pages/otp_verification_page/otp_page_binding.dart';
import '../pages/initial_pages/otp_verification_page/otp_page_view.dart';
import '../pages/initial_pages/register_page/register_page_binding.dart';
import '../pages/initial_pages/register_page/register_page_view.dart';
import '../pages/initial_pages/splash_screen/splash_page_binding.dart';
import '../pages/initial_pages/splash_screen/splash_page_view.dart';

part 'app_routes.dart';

class AppPages {
  // static var routes;

  AppPages._();

  static const INITIAL = Routes.SPLASH_PAGE;

  static final routes = [
    GetPage(
      name: _Paths.HOME_PAGE,
      page: () => BottomNavigation(),
      bindings:  [
        HomePageBinding(),
        ManagePageBinding(),
        ChatPageBinding(),
        ProfilePageBinding()
      ],
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: _Paths.SPLASH_PAGE,
      page: () => const SplashPageView(),
      binding: SplashPageBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: _Paths.REGISTER_PAGE,
      page: () => const RegisterPageView(),
      binding: RegisterPageBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: _Paths.LOGIN_PAGE,
      page: () => const LoginPageView(),
      binding: LoginPageBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: _Paths.OTP_VERIFICATION_PAGE,
      page: () => const OtpPageView(),
      binding: OtpPageBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: _Paths.VERIFICATION_INITIAL_PAGE,
      page: () => const VerificationPageInitialView(),
      binding: VerificationPageBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: _Paths.VERIFICATION_IMAGE_PAGE,
      page: () => const VerificationPageImageView(),
      binding: VerificationPageBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: _Paths.VERIFICATION_SUCCESS_PAGE,
      page: () => const VerificationPageSuccessView(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: _Paths.VERIFICATION_PAGE,
      page: () => const VerificationPageView(),
      binding: VerificationPageBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: _Paths.TAMBAH_JAJAN_PAGE,
      page: () => const TambahJajanPageview(),
      binding: TambahJajanPageBinding(),
      transition: Transition.noTransition,
    ),
  ];
}