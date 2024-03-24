import 'package:get/get.dart';

import 'verification_page_controller.dart';

class VerificationPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VerificationPageController>(() => VerificationPageController());
  }
}