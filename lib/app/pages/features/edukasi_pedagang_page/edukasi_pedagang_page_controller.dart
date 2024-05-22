import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart' as dio;
import 'package:image_picker/image_picker.dart';
import 'package:limatrack_pedagang/app/api/pedagang/model/pedagang.dart';
import 'package:limatrack_pedagang/app/api/pedagang/pedagang_service.dart';


class EdukasiPedagangPageController extends GetxController {
  // RxString filePathImage = ''.obs;
  // PedagangService pedagangService = PedagangService();
  // TextEditingController namaController = TextEditingController();
  // TextEditingController deskripsiController = TextEditingController();
  // TextEditingController hargaController = TextEditingController();

  // RxBool isLoading = false.obs;

  // Rx<PedagangModel> arguments = Get.arguments;


  // Future addJajan() async {

  //   try {

  //     isLoading.value = true;

  //     dio.FormData formData = dio.FormData.fromMap({
  //       'nama': namaController.text,
  //       'deskripsi': deskripsiController.text,
  //       'harga': hargaController.text,
  //       'kategori': 'Jajanan Utama',
  //       'image': await dio.MultipartFile.fromFile(filePathImage.value),
  //     });

  //     await pedagangService.storeJajanan(
  //         arguments.value.id.toString(),
  //         formData

  //     );

  //     Get.back();
  //     Get.snackbar("Tambah Jajan Sukses", "Berhasil menambahkan jajan!");
  //   } catch (e) {
  //     isLoading.value = true;
  //     print(e);
  //   } finally {
  //     isLoading.value = false;
  //   }
  // }

  // Future<void> pickImage(RxString imagePath) async {
  //   final pickedImage = await ImagePicker().pickImage(source: ImageSource.gallery);

  //   if (pickedImage != null) {
  //     imagePath.value = pickedImage.path;
  //   }
  // }

  // @override
  // void onInit() {
  //   // print(arguments["id"]);
  //   super.onInit();
  // }

}