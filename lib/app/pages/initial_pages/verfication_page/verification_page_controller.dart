import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart' as dio;
import 'package:get/get_rx/get_rx.dart';

import 'package:image_picker/image_picker.dart';
import 'package:limatrack_pedagang/app/api/pedagang/pedagang_service.dart';

import '../../../router/app_pages.dart';

class VerificationPageController extends GetxController {
  late PedagangService pedagangService;
   TextEditingController namaWarungController = TextEditingController();
  RxBool isLoading = false.obs;

  RxString dropdownValue = "Kudus".obs;

  DateTime currentTime = DateTime.now();
  RxString openTimeString = '07:00'.obs;
  RxString closeTimeString = '21:00'.obs;



  RxList<String> imagePaths = List.generate(4, (index) => '').obs;

  RxString imagePathJajan = ''.obs;
  RxString filePathDocument = ''.obs;
  RxInt isSelectedMethod = 0.obs;


  @override
  void onInit() {
    super.onInit();
    pedagangService = PedagangService();
  }

  Future<void> imageVerifikasi() async {
    try {
      isLoading(true);

      dio.FormData formData = dio.FormData.fromMap({
        'image_1': await dio.MultipartFile.fromFile(imagePaths[0]),
        'image_2': await dio.MultipartFile.fromFile(imagePaths[1]),
        'image_3': await dio.MultipartFile.fromFile(imagePaths[2]),
        'image_4': await dio.MultipartFile.fromFile(imagePaths[3]),
      });
   

      final response = await pedagangService.imageVerifikasi(formData);

      Get.snackbar("Image Verification Success", "Your Image Verification Success" + response.data.toString());
      Get.offAllNamed(Routes.VERIFICATION_PAGE);

    } catch (e) {
      isLoading(false);
      Get.snackbar("Image Verification Failed", "Network Error" + e.toString());
    }finally {
      isLoading(false);
    }
  }

  Future<void> storePedagang() async {
    try {
      isLoading(true);



      dio.FormData formData = dio.FormData.fromMap({
        'nama_warung': namaWarungController.text,
        'jam_buka': openTimeString.value,
        'jam_tutup': closeTimeString.value,
        'daerah_dagang': dropdownValue.value,
        'banner': await dio.MultipartFile.fromFile(imagePathJajan.value),
        'dokumen_sertifikat_halal': await dio.MultipartFile.fromFile(isSelectedMethod.value == 0 ? imagePathJajan.value : filePathDocument.value),
      });


      final response = await pedagangService.storePedagang(formData);

      Get.snackbar("Store Pedagang Success", "Berhasil Mendaftarkan diri sebagai Pedagang" + response.data.toString());
      Get.offAllNamed(Routes.HOME_PAGE);

    } catch (e) {
      isLoading(false);
      Get.snackbar("Store Pedagang Failed", "Network Error" + e.toString());
    }finally {
      isLoading(false);
    }
  }



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
      isSelectedMethod.value = 1;
    }


  }



  Future<void> pickImage(RxString imagePath) async {
    final pickedImage = await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      imagePath.value = pickedImage.path;
      imagePaths[imagePaths.indexWhere((element) => element == '')] = pickedImage.path;
      isSelectedMethod.value = 0;
      print(imagePaths);
    }
  }

  void onChangeDropdown(String value, List<String> items) {
    dropdownValue.value = value;
    items.remove(value);
    items.insert(0, value);
  }





}