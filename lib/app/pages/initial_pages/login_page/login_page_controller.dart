import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../api/auth/authentication_service.dart';
import '../../../router/app_pages.dart';

class LoginPageController extends GetxController {
  late TextEditingController emailController;
  late TextEditingController passwordController;

  RxBool isLoading = false.obs;
  late AuthenticationService authenticationService;

  @override
  void onInit() {
    emailController = TextEditingController();
    passwordController = TextEditingController();

    authenticationService = AuthenticationService();
    super.onInit();
  }


  Future<void> login() async {
    try {
      isLoading(true);
      final response = await authenticationService.login(
          emailController.text,
          passwordController.text
      );

      SharedPreferences prefs = await SharedPreferences.getInstance();

      prefs.setString('token', response.data['token']);
      Get.snackbar("Login Success", "Welcome Back!");
      Get.offAllNamed(Routes.HOME_PAGE);



    } catch (e) {
      isLoading(true);
      Get.snackbar("Login Error", "Invalid Username or Password");
      print(e);

    } finally {
      isLoading(false);
    }
  }


}