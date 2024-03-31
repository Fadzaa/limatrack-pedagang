import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:limatrack_pedagang/common/theme.dart';

class ItemRatingVertical extends StatelessWidget {
  const ItemRatingVertical({
    super.key,
    required this.name,
    required this.count,
    required this.iconCount,
    required this.image
  });

  final String name, image;
  final IconData iconCount;
  final double count;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.only(left: 18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 3),
          )
        ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text.rich(
                  TextSpan(
                    text: "Jumlah ",
                    style: tsBodyMedium.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                    children: [
                      TextSpan(
                        text: name,
                        style: tsBodyMedium.copyWith(
                          fontWeight: FontWeight.w600,
                          color: primaryColor
                        ),
                      )
                    ]
                  )
                ),

                const Gap(5),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(iconCount, color: const Color(0xFFFFC700), size: 30,),

                    const Gap(15),

                    Text("$count", style: tsTitleMedium.copyWith(
                      fontWeight: FontWeight.w600
                    ),)
                  ],
                )

              ],
            ),
          ),


          SvgPicture.asset(image, height: 100,)
        ],
      ),
    );
  }
}
