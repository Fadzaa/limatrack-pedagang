import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../router/app_pages.dart';

class SplashPageController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    SharedPreferences.getInstance().then((prefs) {
      final token = prefs.getString('token');
      if (token != null) {
        Get.offAllNamed(Routes.HOME_PAGE);
      } else {
        Get.offAllNamed(Routes.LOGIN_PAGE);
      }
    });
  }
}