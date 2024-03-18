import 'package:get/get.dart';
import 'chat_page_controller.dart';

class ChatPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChatPageController>(() => ChatPageController());
  }
}