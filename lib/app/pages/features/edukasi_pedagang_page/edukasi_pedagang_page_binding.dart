import 'package:get/get.dart';

import 'edukasi_pedagang_page_controller.dart';



class EdukasiPedagangPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EdukasiPedagangPageController>(() => EdukasiPedagangPageController());
  }
}