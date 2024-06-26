import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:limatrack_pedagang/app/api/pedagang/model/jajanan.dart';
import 'package:limatrack_pedagang/common/constant.dart';

import '../../../../../common/theme.dart';

class ItemJajanVertical extends StatelessWidget {
  const ItemJajanVertical({
    super.key,
    required this.jajanan
  });

  final Jajanan jajanan;

  @override
  Widget build(BuildContext context) {

    ImageProvider imageProvider;
    if (jajanan.image != null) {
      if (jajanan.image!.startsWith('https')) {
        imageProvider = NetworkImage(jajanan.image!);
      } else {
        imageProvider = FileImage(File(jajanan.image!));
      }
    } else {
      imageProvider = AssetImage('assets/images/default_image.png'); // replace with your default image asset
    }
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
                image: imageProvider,
                fit: BoxFit.cover
              )
            ),
          ),

          const Gap(10),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(jajanan.nama ?? "", style: tsBodyMedium.copyWith(
                fontWeight: FontWeight.w600
              )),

              Row(
                children: [
                  SvgPicture.asset(icPriceTagSecondary),
                  const Gap(5),
                  Text("${jajanan.harga ?? null}", style: tsBodySmall.copyWith(
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
