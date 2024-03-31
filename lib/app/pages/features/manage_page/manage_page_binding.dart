import 'package:get/get.dart';
import 'package:limatrack_pedagang/app/pages/features/manage_page/manage_page_controller.dart';


class ManagePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ManagePageController>(() => ManagePageController());
  }
}