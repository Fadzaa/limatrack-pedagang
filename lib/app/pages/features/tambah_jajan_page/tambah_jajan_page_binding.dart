import 'package:get/get.dart';

import 'tambah_jajan_page_controller.dart';



class TambahJajanPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TambahJajanPageController>(() => TambahJajanPageController());
  }
}