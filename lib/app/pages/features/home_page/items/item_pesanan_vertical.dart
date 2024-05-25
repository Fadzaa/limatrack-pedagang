import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:limatrack_pedagang/app/pages/features/home_page/home_page_controller.dart';
import 'package:limatrack_pedagang/common/theme.dart';
import '../model/pesanan.dart';
import 'item_jajan_vertical.dart';

class ItemPesananVertical extends GetView<HomePageController> {
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
            decoration: BoxDecoration(color: secondaryColor.withOpacity(0.1)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: tsBodyMedium.copyWith(fontWeight: FontWeight.w600),
                ),
                const Gap(5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Total Pesanan",
                      style: tsBodySmall.copyWith(fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "${items.length} Item • Rp. 3000",
                      style: tsBodySmall.copyWith(fontWeight: FontWeight.w600),
                    )
                  ],
                )
              ],
            ),
          ),
          const Gap(10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
            child: Obx(
              () => Column(
                children: [
                  ListView.builder(
                      itemCount: items.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) => ItemJajanVertical(
                          name: items[index].name,
                          total: items[index].total,
                          price: items[index].price)),
                  const Gap(20),
                  // CommonButton(
                  //   text: "Terima Pesanan",
                  //   onPressed: () => null,
                  //   height: 50,
                  // ),

                  Container(
                    height: 50,
                    width: double.infinity,
                    child: ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: statusPesanan.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Obx(
                        () => StatusPesananVertical(
                          status: statusPesanan[index].status,
                          index: index,
                          isSelected:
                              controller.currentIndexPesanan.value == index,
                        ),
                      ),
                      separatorBuilder: (context, index) => const Gap(10),
                    ),
                  ),
                  const Gap(20),
                  controller.currentIndexPesanan.value == 0
                      ? Container()
                      : ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Pesanan Selesai",
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: successColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            minimumSize: Size(double.infinity, 50),
                          ),
                        ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class StatusPesananName {
  final String status;

  StatusPesananName({required this.status});
}

List<StatusPesananName> statusPesanan = [
  StatusPesananName(status: "Belum Jadi"),
  StatusPesananName(status: "Sudah Jadi"),
];

class StatusPesananVertical extends GetView<HomePageController> {
  const StatusPesananVertical({
    super.key,
    required this.index,
    required this.isSelected,
    required this.status,
  });

  final int index;
  final bool isSelected;
  final String status;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.changeIndexPesanan(index);
      },
      child: Container(
        width: 168,
        decoration: BoxDecoration(
          color: isSelected ? primaryColor : Colors.transparent,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: primaryColor),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.check_rounded,
              size: 18,
              color: isSelected ? Colors.white : primaryColor,
            ),
            const Gap(5),
            Text(
              status,
              style: tsBodyMedium.copyWith(
                color: isSelected ? Colors.white : primaryColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
