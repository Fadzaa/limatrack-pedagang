import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:limatrack_pedagang/common/constant.dart';

import '../../../../../common/theme.dart';

class ItemJajanVertical extends StatelessWidget {
  const ItemJajanVertical({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ]
      ),

      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image:  DecorationImage(
                image: AssetImage(exampleJajanRectangle),
                fit: BoxFit.cover
              )
            ),
          ),

          const Gap(10),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Telur Gulung", style: tsBodyMedium.copyWith(
                fontWeight: FontWeight.w600
              )),

              Row(
                children: [
                  SvgPicture.asset(icPriceTagSecondary),
                  const Gap(5),
                  Text("Rp 10.000", style: tsBodySmall.copyWith(
                    color: secondaryColor,
                    fontWeight: FontWeight.w500
                  ))
                ],
              )
            ],
          ),
          
          const Spacer(),
          
          const Icon(Icons.more_vert)
        ],
      ),
    );
  }
}
