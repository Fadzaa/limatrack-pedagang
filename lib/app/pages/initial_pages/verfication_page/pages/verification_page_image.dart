import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:limatrack_pedagang/app/pages/global_component/common_button.dart';
import 'package:limatrack_pedagang/app/pages/global_component/loading_overlay.dart';
import 'package:limatrack_pedagang/app/pages/initial_pages/verfication_page/items/item_image_grid.dart';
import 'package:limatrack_pedagang/app/pages/initial_pages/verfication_page/verification_page_controller.dart';
import 'package:limatrack_pedagang/app/router/app_pages.dart';
import 'package:limatrack_pedagang/common/constant.dart';
import 'package:limatrack_pedagang/common/theme.dart';

class VerificationPageImageView extends GetView<VerificationPageController> {
  const VerificationPageImageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: baseColor,
        body: SafeArea(
            child: Obx(() =>
                LoadingOverlay(
                    isLoading: controller.isLoading.value,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Image.asset(logoSecondary),

                            Gap(Get.height * 0.05),

                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Ambil Gambar", style: tsTitleMedium.copyWith(
                                      fontWeight: FontWeight.w600,
                                    ),),

                                    const SizedBox(width: 5,),

                                    Text("4 Sisi", style: tsTitleMedium.copyWith(
                                        fontWeight: FontWeight.w600,
                                        color: primaryColor
                                    ),),
                                  ],
                                ),

                                Text("Foto dagangan anda dari semua sisi", style: tsBodySmall.copyWith(
                                    fontWeight: FontWeight.w500
                                ),),

                                const SizedBox(height: 50,),

                                GridView.builder(
                                    itemCount: 4,
                                    shrinkWrap: true,
                                    physics: const NeverScrollableScrollPhysics(),
                                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2,
                                        crossAxisSpacing: 10,
                                        mainAxisSpacing: 10
                                    ),
                                    itemBuilder: (context, index) => ItemImageGrid(
                                        side: index == 0 ? "Kanan" : index == 1 ? "Kiri" : index == 2 ? "Depan" : "Belakang"
                                    )
                                )
                              ],
                            ),

                            const Spacer(),

                            CommonButton(text: "Lanjut Verifikasi", onPressed: () => controller.imageVerifikasi(), height: 50,)


                          ]
                      ),
                    )
                ))
        )
    );
  }
}
