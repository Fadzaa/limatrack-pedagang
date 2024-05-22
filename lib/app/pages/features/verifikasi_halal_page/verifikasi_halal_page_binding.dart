import 'package:get/get.dart';

import 'verifikasi_halal_page_controller.dart';



class VerifikasiHalalPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VerifikasiHalalPageController>(() => VerifikasiHalalPageController());
  }
}