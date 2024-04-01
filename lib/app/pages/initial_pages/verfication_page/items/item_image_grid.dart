import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:limatrack_pedagang/app/pages/initial_pages/verfication_page/verification_page_controller.dart';
import 'package:limatrack_pedagang/common/theme.dart';

class ItemImageGrid extends GetView<VerificationPageController> {
  const ItemImageGrid({
    super.key,
    required this.side
  });

  final String side;

  @override
  Widget build(BuildContext context) {
    RxString imagePath = ''.obs;

    return Obx(() =>
        InkWell(
            onTap: () => controller.pickImage(imagePath),
            child: imagePath.value.isNotEmpty ?
            Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: FileImage(File(imagePath.value)),
                  fit: BoxFit.cover
              )
          ),
        ) :
            DottedBorder(
            color: const Color(0xFF707070).withOpacity(0.2),
            strokeWidth: 1,
            dashPattern: [10],
            borderType: BorderType.RRect,
            radius: const Radius.circular(10),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Sisi $side", style: tsBodyMedium.copyWith(
                      fontWeight: FontWeight.w600,
                      color: greyColor
                  )),

                  const SizedBox(height: 5,),

                  const Icon(Icons.add, color: greyColor,)
                ],
              ),
            )
        )
        )
    );
  }
}
