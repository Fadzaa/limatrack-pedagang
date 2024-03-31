import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:limatrack_pedagang/common/theme.dart';

class ItemJajanVertical extends StatelessWidget {
  const ItemJajanVertical({
    super.key,
    required this.name,
    required this.total,
    required this.price
  });

  final String name;
  final int total, price;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              width: 10,
              height: 10,
              decoration: const BoxDecoration(
                  color: primaryColor,
                  shape: BoxShape.circle
              ),
          ),

          const Gap(10),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: tsBodySmall.copyWith(
                  fontWeight: FontWeight.w600
              ),),

              const Gap(3),

              Text("$total Item", style: tsBodySmall),
            ],
          ),

          const Spacer(),

          Text("Rp. $price", style: tsBodySmall.copyWith(
              fontWeight: FontWeight.w600
          ),)
        ],
      ),
    );
  }
}
