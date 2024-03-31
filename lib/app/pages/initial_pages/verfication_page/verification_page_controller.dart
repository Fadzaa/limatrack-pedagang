import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

import '../../../router/app_pages.dart';


class VerificationPageController extends GetxController {
  RxString dropdownValue = "Kudus".obs;


  void onChangeDropdown(String value, List<String> items) {
    dropdownValue.value = value;
    items.remove(value);
    items.insert(0, value);
  }

  @override
  void onInit() {
    super.onInit();

  }


}