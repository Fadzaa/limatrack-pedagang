import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:limatrack_pedagang/app/pages/global_component/common_button.dart';
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Image.asset(logoSecondary),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(onboardSocmed),

                        const SizedBox(height: 20,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Veifikasi", style: tsTitleMedium.copyWith(
                              fontWeight: FontWeight.w600,
                            ),),
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
                    
                    CommonButton(text: "Lanjut Verifikasi", onPressed: () => null, height: 50,)


                  ]
              ),
            )
        )
    );
  }
}
