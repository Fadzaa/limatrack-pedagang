import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:limatrack_pedagang/common/theme.dart';

class ItemImageGrid extends StatelessWidget {
  const ItemImageGrid({
    super.key,
    required this.side
  });

  final String side;

  @override
  Widget build(BuildContext context) {
    return DottedBorder(

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
    );
  }
}
