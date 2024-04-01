import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class VerificationPageController extends GetxController {
  RxString dropdownValue = "Kudus".obs;

  DateTime currentTime = DateTime.now();
  RxString openTimeString = '07:00'.obs;
  RxString closeTimeString = '21:00'.obs;


  RxString filePathImage = ''.obs;
  RxString filePathDocument = ''.obs;


  void onTimePickerSelected(DateTime dateTime, RxString timeString) {
    showTimePicker(
      context: Get.context!,
      initialTime: TimeOfDay.fromDateTime(dateTime),
    ).then((value) {
      if (value != null) {
        dateTime = DateTime(
          currentTime.year,
          currentTime.month,
          currentTime.day,
          value.hour,
          value.minute,
        );
        timeString.value = "${value.hour}:${value.minute}";
      }

    }
    );
  }

  Future<void> pickFile(RxString filePath) async {
    final pickedFile = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf', 'doc', 'docx'],
    );

    if (pickedFile != null) {
      filePath.value = pickedFile.files.single.path!;
    }


  }



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