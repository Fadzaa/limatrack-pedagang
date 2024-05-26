import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart' as dio;
import 'package:image_picker/image_picker.dart';
import 'package:limatrack_pedagang/app/api/pedagang/model/jajanan.dart';
import 'package:limatrack_pedagang/app/api/pedagang/model/pedagang.dart';
import 'package:limatrack_pedagang/app/api/pedagang/pedagang_service.dart';
import 'package:limatrack_pedagang/app/pages/features/manage_page/manage_page_controller.dart';
import 'package:limatrack_pedagang/app/router/app_pages.dart';


class TambahJajanPageController extends GetxController {
  ManagePageController manageController = Get.put(ManagePageController());

  RxString filePathImage = ''.obs;
  PedagangService pedagangService = PedagangService();
  TextEditingController namaController = TextEditingController();
  TextEditingController deskripsiController = TextEditingController();
  TextEditingController hargaController = TextEditingController();

  RxBool isLoading = false.obs;

  Rx<PedagangModel> arguments = Get.arguments;


  Future addJajan() async {

    try {

      isLoading.value = true;

      dio.FormData formData = dio.FormData.fromMap({
        'nama': namaController.text,
        'deskripsi': deskripsiController.text,
        'harga': hargaController.text,
        'kategori': 'Jajanan Utama',
        'image': await dio.MultipartFile.fromFile(filePathImage.value),
      });

      await pedagangService.storeJajanan(
          arguments.value.id.toString(),
          formData
      );

      Jajanan jajanan = Jajanan(
        nama: namaController.text,
        deskripsi: deskripsiController.text,
        harga: int.parse(hargaController.text),
        kategori: 'Jajanan Utama',
        image: filePathImage.value

      );

      manageController.listJajanan.add(jajanan);

      update();

      Get.toNamed(Routes.HOME_PAGE, arguments: 1 );
      Get.snackbar("Tambah Jajan Sukses", "Berhasil menambahkan jajan!");
    } catch (e) {
      isLoading.value = true;
      print(e);
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> pickImage(RxString imagePath) async {
    final pickedImage = await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      imagePath.value = pickedImage.path;
    }
  }

  @override
  void onInit() {
    // print(arguments["id"]);
    super.onInit();
  }

}