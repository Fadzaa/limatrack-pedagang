import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:limatrack_pedagang/app/pages/global_component/common_button.dart';
import 'package:limatrack_pedagang/app/pages/global_component/common_textfield_secondary.dart';
import 'package:limatrack_pedagang/app/pages/global_component/loading_overlay.dart';
import 'package:limatrack_pedagang/app/pages/initial_pages/verfication_page/verification_page_view.dart';
import '../../../../common/theme.dart';
import 'tambah_jajan_page_controller.dart';


class TambahJajanPageview extends GetView<TambahJajanPageController> {
  const TambahJajanPageview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () => Get.back(),
                child: const Icon(Icons.arrow_back_ios, size: 20,)
              ),

              Text("Tambah Jajanan", style: tsBodyLarge.copyWith(
                  fontWeight: FontWeight.w600,
              ),),

              const SizedBox(width: 30,)
            ],
          )
        )

      ),
      body:  SafeArea(
        child: Obx(() => LoadingOverlay(
          isLoading: controller.isLoading.value,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Column(
              children: [
                CommonTextFieldSecondary(
                    heading: "Nama Jajanan",
                    controller: controller.namaController,
                    hintText: "Cth: Telur Gulung"
                ),

                CommonTextFieldSecondary(
                    heading: "Deskripsi Jajanan",
                    controller: controller.deskripsiController,
                    hintText: "Cth: Gulungan Telur dan Tusuk"
                ),

                CommonTextFieldSecondary(
                    heading: "Harga Jajanan",
                    controller: controller.hargaController,
                    hintText: "Rp. 1000"
                ),

                HeadingForm(
                    heading: "Gambar Jajanan",
                    widget: InkWell(
                        onTap: () => controller.pickImage(controller.filePathImage),
                        child: Obx(() => Container(
                            height: controller.filePathImage.value.isNotEmpty ? 200 : 50,
                            decoration: BoxDecoration(
                                color: secondaryColor.withOpacity(0.05),
                                borderRadius: BorderRadius.circular(10),
                                image: controller.filePathImage.value.isNotEmpty ? DecorationImage(
                                    image: FileImage(File(controller.filePathImage.value)),
                                    fit: BoxFit.cover
                                ) : null
                            ),
                            child: controller.filePathImage.value.isNotEmpty ? null : Center(
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      const Icon(Icons.add, color: secondaryColor, size: 20),

                                      const SizedBox(width: 10,),

                                      Text("Tambah Gambar", style: tsBodySmall.copyWith(
                                          fontWeight: FontWeight.w600,
                                          color: secondaryColor
                                      ),)
                                    ]
                                )
                            )
                        )
                        )
                    )
                ),

                const Spacer(),

                CommonButton(text: "Tambah", onPressed: () => controller.addJajan(), height: 50,)
              ],
            ),
          ),
        ))
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}










