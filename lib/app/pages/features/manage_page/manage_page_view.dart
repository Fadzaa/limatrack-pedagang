import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:limatrack_pedagang/app/pages/features/manage_page/sections/promosi_jajanan_section.dart';
import 'package:limatrack_pedagang/app/pages/features/manage_page/sections/rating_pelanggan_section.dart';

import 'package:limatrack_pedagang/app/pages/global_component/common_warning_box.dart';
import '../../../../common/theme.dart';
import 'manage_page_controller.dart';


class ManagePageView extends GetView<ManagePageController> {
  const ManagePageView({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:  SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Manage", style: tsTitleMedium.copyWith(
                          fontWeight: FontWeight.w600,
                        )),

                        Text("Daganganmu", style: tsTitleMedium.copyWith(
                            fontWeight: FontWeight.w600,
                            color: primaryColor
                        )),
                      ],
                    ),

                    ElevatedButton(

                        style: ElevatedButton.styleFrom(
                          backgroundColor: primaryColor,
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        onPressed: () => null,
                        child: Row(
                          children: [
                            const Icon(Icons.add, color: Colors.white,),
                            const Gap(5),
                            Text("Tambah Jajanan", style: tsLabelLarge.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w600
                            ),)
                          ],
                        )
                    )
                  ],
                ),

                const Gap(15),
                
                const CommonWarningBox(text: "Menu yang dimasukkan akan tampil di detail warungmu diaplikasi pembeli"),

                const Gap(20),

                const PromosiJajananSection(),

                const Gap(20),

                const RatingPelangganSection()

              ],
            ),
          ),
        ),
      )
    );
  }
}











