import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:limatrack_pedagang/app/pages/features/manage_page/items/item_jajan_vertical.dart';
import 'package:limatrack_pedagang/common/theme.dart';

class ListJajananSection extends StatelessWidget {
  const ListJajananSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Align(
            alignment: Alignment.topLeft,
            child: Text("List Jajanan", style: tsBodyLarge.copyWith(
                fontWeight: FontWeight.w600
            ),)
        ),

        const Gap(20),

        ListView.builder(
            itemCount: 2,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => ItemJajanVertical()
        ),

        const Gap(20),

        DottedBorder(
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
        )

      ],
    );
  }
}
