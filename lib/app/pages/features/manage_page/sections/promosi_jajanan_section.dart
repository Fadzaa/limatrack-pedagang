import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:limatrack_pedagang/app/pages/global_component/common_button.dart';
import 'package:limatrack_pedagang/common/constant.dart';
import 'package:limatrack_pedagang/common/theme.dart';

class PromosiJajananSection extends StatelessWidget {
  const PromosiJajananSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Text("Promosi Jajanan", style: tsBodyLarge.copyWith(
              fontWeight: FontWeight.w600
          ),)
        ),

        const Gap(20),

        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(notFoundHistory),

            const Gap(10),

            Text("Kamu Belum Ada Iklan", style: tsBodyLarge.copyWith(
              fontWeight: FontWeight.bold
            ),),

            Text("Daftarkan Dagangan Sebagai Iklan Sekarang",
              style: tsBodySmall.copyWith(
                fontWeight: FontWeight.w500,
                color: greyColor
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),

        const Gap(20),

        CommonButton(text: "Daftarkan Dagangan", onPressed: () => null, height: 50,)

      ],
    );
  }
}
