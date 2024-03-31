import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:limatrack_pedagang/app/pages/features/tambah_jajan_page/items/item_jajan_vertical.dart';
import 'package:limatrack_pedagang/app/pages/global_component/common_button.dart';
import 'package:limatrack_pedagang/common/theme.dart';

import '../model/pesanan.dart';

class ItemPesananVertical extends StatelessWidget {
  const ItemPesananVertical({
    super.key,
    required this.name,
    required this.items,
  });

  final String name;
  final List<PesananItem> items;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 20),
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),

      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
            width: double.infinity,
            decoration: BoxDecoration(
              color: secondaryColor.withOpacity(0.1)
            ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: tsBodyMedium.copyWith(fontWeight: FontWeight.w600),),

                const Gap(5),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Total Pesanan", style: tsBodySmall.copyWith(fontWeight: FontWeight.w500),),
                    Text("${items.length} Item • Rp. 3000", style: tsBodySmall.copyWith(fontWeight: FontWeight.w600),)
                  ],
                )
              ],
            ),
          ),

          const Gap(10),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
            child: Column(
              children: [
                ListView.builder(
                    itemCount: items.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) =>
                        ItemJajanVertical(
                            name: items[index].name,
                            total: items[index].total,
                            price: items[index].price
                        )
                ),

                const Gap(20),
                
                CommonButton(text: "Terima Pesanan", onPressed: () => null, height: 50,)
              ],
            ),
          )
        ],
      ),
    );
  }
}
