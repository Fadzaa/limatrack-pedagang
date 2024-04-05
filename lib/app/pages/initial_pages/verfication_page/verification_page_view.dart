import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:limatrack_pedagang/app/pages/global_component/common_button.dart';
import 'package:limatrack_pedagang/app/pages/global_component/common_textfield_secondary.dart';
import 'package:limatrack_pedagang/app/pages/global_component/common_warning_box.dart';
import 'package:limatrack_pedagang/app/pages/initial_pages/verfication_page/verification_page_controller.dart';
import 'package:limatrack_pedagang/app/router/app_pages.dart';
import 'package:limatrack_pedagang/common/constant.dart';
import 'package:limatrack_pedagang/common/theme.dart';

class VerificationPageView extends GetView<VerificationPageController> {
  const VerificationPageView({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> daerah_dagang = ["Kudus", "Pati", "Rembang"];
    RxString bannerImagePath = "".obs;

    return Scaffold(
        backgroundColor: baseColor,
        body: SafeArea(
            child: SizedBox(
              height: Get.height,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                            alignment: Alignment.center,
                            child: Image.asset(logoSecondary)
                        ),

                        const SizedBox(height: 20,),

                        Text("Isilah Form Berikut", style: tsTitleMedium.copyWith(fontWeight: FontWeight.w600),),
                        Text("Kamu sudah masuk ditahap terakhir verifikasi", style: tsBodySmall.copyWith(fontWeight: FontWeight.w500),),

                        const SizedBox(height: 20,),

                        CommonTextFieldSecondary(
                            heading: "Nama Warung",
                            controller: TextEditingController(),
                            hintText: "Cth : Warung Obenk"
                        ),

                        HeadingForm(
                            heading: "Banner Warung",
                            widget: InkWell(
                              onTap: () => controller.pickImage(bannerImagePath),
                              child: Obx(() => Container(
                                height: bannerImagePath.value.isNotEmpty ? 200 : 50,
                                decoration: BoxDecoration(
                                  color: secondaryColor.withOpacity(0.05),
                                  borderRadius: BorderRadius.circular(10),
                                  image: bannerImagePath.value.isNotEmpty ? DecorationImage(
                                    image: FileImage(File(bannerImagePath.value)),
                                    fit: BoxFit.cover
                                  ) : null
                                ),
                                child: bannerImagePath.value.isNotEmpty ? null : Center(
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

                        HeadingForm(
                            heading: "Isi Jajanan",
                            widget: InkWell(
                              onTap: () => Get.toNamed(Routes.TAMBAH_JAJAN_PAGE),
                              child: DottedBorder(
                                color: greyColor.withOpacity(0.8),
                                dashPattern: [8],
                                borderType: BorderType.RRect,
                                radius: const Radius.circular(10),
                                child: Container(
                                    height: 50,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          const Icon(Icons.add, color: greyColor, size: 20),

                                          const SizedBox(width: 10,),

                                          Text("Tambah Jajanan", style: tsBodySmall.copyWith(
                                              fontWeight: FontWeight.w600,
                                              color: greyColor
                                          ),)
                                        ]
                                    )
                                ),
                              ),
                            )
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: HeadingForm(
                                  heading: "Waktu Buka",
                                  widget: InkWell(
                                    onTap: () => controller.onTimePickerSelected(controller.currentTime, controller.openTimeString),
                                    child: Container(
                                      height: 50,
                                      padding: const EdgeInsets.symmetric(horizontal: 20),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                      child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Obx(() => Text(controller.openTimeString.value, style: tsBodyMedium.copyWith(
                                                color: greyColor,
                                                fontWeight: FontWeight.w600
                                            ),),),

                                            const Icon(Icons.watch_later_rounded, color: secondaryColor, size: 20)
                                          ]
                                      ),
                                    ),
                                  )
                              ),
                            ),

                            const SizedBox(width: 20),

                            Expanded(
                              child: HeadingForm(
                                  heading: "Waktu Tutup",
                                  widget: InkWell(
                                    onTap: () => controller.onTimePickerSelected(controller.currentTime, controller.closeTimeString),
                                    child: Container(
                                      height: 50,
                                      padding: const EdgeInsets.symmetric(horizontal: 20),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10)
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Obx(() => Text(controller.closeTimeString.value, style: tsBodyMedium.copyWith(
                                              color: greyColor,
                                              fontWeight: FontWeight.w600
                                          ),),),

                                          const Icon(Icons.watch_later_rounded, color: secondaryColor, size: 20)
                                        ]
                                      ),
                                    ),
                                  )
                              ),
                            ),


                          ],
                        ),

                        HeadingForm(
                            heading: "Pilih Daerah Dagang",
                            widget: Container(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child: Obx(() => DropdownButton(
                                dropdownColor: Colors.white,
                                style: tsBodySmall.copyWith(color: greyColor, fontWeight: FontWeight.w600),
                                elevation: 1,
                                isExpanded: true,
                                icon: const Icon(Icons.keyboard_arrow_down),
                                borderRadius: BorderRadius.circular(10),
                                underline: Container(),
                                items: daerah_dagang.map((String daerah) => DropdownMenuItem(child: Text(daerah), value: daerah,)).toList(),
                                hint: const Text("Pilih Daerah"),
                                onChanged: (value) =>  controller.onChangeDropdown(value ?? "Kudus", daerah_dagang),
                                value: controller.dropdownValue.value,
                              ),)
                            )
                        ),

                        Text("Verifikasi Halal", style: tsBodyMedium.copyWith(
                            fontWeight: FontWeight.w600
                        ),),

                        Text("*opsional", style: tsLabelLarge.copyWith(
                            fontWeight: FontWeight.w500,
                            color: dangerColor
                        ),),

                        const Gap(10),

                        const CommonWarningBox(text: "Logo Halal Akan Ditampilkan di Aplikasi Pembeli Nantinya."),

                        const Gap(20),

                        Text("Pilih Salah Satu", style: tsLabelLarge.copyWith(
                            fontWeight: FontWeight.w500
                        ),),

                        const Gap(10),

                        Row(
                          children: [
                            Expanded(
                              child: InkWell(
                                onTap: () => controller.pickImage(controller.imagePathJajan),
                                child: Container(
                                  height: 50,
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  decoration: BoxDecoration(
                                    color: secondaryColor.withOpacity(0.05),
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      const Icon(Icons.image, color: secondaryColor, size: 20),

                                      const Gap(10),

                                      Obx(() => Flexible(
                                        child: Text(
                                          controller.imagePathJajan.isNotEmpty ?
                                          controller.imagePathJajan.value.split("/").last :
                                              "Gambar"
                                          ,
                                          style: tsBodySmall.copyWith(fontWeight: FontWeight.w600, color: secondaryColor),
                                          overflow: TextOverflow.ellipsis,
                                          ),
                                      ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),

                            const Gap(20),

                            Expanded(
                              child: InkWell(
                                onTap: () => controller.pickFile(controller.filePathDocument),
                                child: Container(
                                  height: 50,
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  decoration: BoxDecoration(
                                      color: secondaryColor.withOpacity(0.05),
                                      borderRadius: BorderRadius.circular(10)
                                  ),

                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      const Icon(Icons.document_scanner, color: secondaryColor, size: 20),

                                      const Gap(10),

                                      Obx(() => Flexible(
                                        child: Text(
                                          controller.filePathDocument.isNotEmpty ?
                                          controller.filePathDocument.value.split("/").last :
                                          "Dokumen"
                                          ,
                                          style: tsBodySmall.copyWith(fontWeight: FontWeight.w600, color: secondaryColor),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),

                        const Gap(40),

                        CommonButton(text: "Verifikasi", onPressed: () => Get.toNamed(Routes.VERIFICATION_SUCCESS_PAGE), height: 50,)
                      ]
                  ),
                ),
              ),
            )
        )
    );
  }
}


class HeadingForm extends StatelessWidget {
  HeadingForm({
    super.key,
    required this.heading,
    required this.widget
  });

  String heading;
  Widget widget;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(heading, style: tsBodyMedium.copyWith(
              fontWeight: FontWeight.w600
          ),),

          const SizedBox(height: 10,),

          widget
        ],
      ),
    );
  }
}



