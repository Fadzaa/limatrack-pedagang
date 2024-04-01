import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class VerificationPageController extends GetxController {
  RxString dropdownValue = "Kudus".obs;



  Future<void> pickImage(RxString imagePath) async {
    final pickedImage = await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      imagePath.value = pickedImage.path;
    }
  }



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