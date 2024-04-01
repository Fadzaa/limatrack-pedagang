import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:limatrack_pedagang/app/pages/global_component/common_button.dart';
import 'package:limatrack_pedagang/app/router/app_pages.dart';
import 'package:limatrack_pedagang/common/constant.dart';
import 'package:limatrack_pedagang/common/theme.dart';

class VerificationPageInitialView extends StatelessWidget {
  const VerificationPageInitialView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: baseColor,
        body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Column(

                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Image.asset(logoSecondary),

                    Gap(Get.height * 0.1),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(onboardSocmed),

                        const SizedBox(height: 20,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Verifikasi", style: tsTitleMedium.copyWith(
                              fontWeight: FontWeight.w600,
                            ),),

                            const SizedBox(width: 5,),

                            Text("Pedagang", style: tsTitleMedium.copyWith(
                              fontWeight: FontWeight.w600,
                              color: primaryColor
                            ),),
                          ],
                        ),

                        Text("Lakukan verifikasi sebagi bukti dagangan", style: tsBodySmall.copyWith(
                          fontWeight: FontWeight.w500
                        ),)

                      ]
                    ),

                    const Spacer(),


                    CommonButton(text: "Lanjut Verifikasi", onPressed: () => Get.toNamed(Routes.VERIFICATION_IMAGE_PAGE), height: 50,)


                  ]
              ),
            )
        )
    );
  }
}
