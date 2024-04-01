import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:limatrack_pedagang/app/pages/features/home_page/home_page_controller.dart';
import 'package:limatrack_pedagang/app/pages/global_component/common_warning_box.dart';
import '../../../../common/theme.dart';
import '../common_button.dart';


void statusDaganganBottomSheet (HomePageController controller) {
  List<ItemStatus> statusDagangan = [
    ItemStatus(
        status: "Warung Buka",
        statusColor: successColor
    ),
    ItemStatus(
        status: "Warung Tutup",
        statusColor: dangerColor
    ),
    ItemStatus(
        status: "Sedang Sholat",
        statusColor: warningColor
    ),
  ];

  Get.bottomSheet(
      Container(
        height: 400,
        width: double.infinity,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20)
            )
        ),
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
                alignment: Alignment.center,
                child: Container(width: 50, height: 3, color: Colors.grey[200])
            ),

            const Gap(20),

            Text("Pilih Status Warung", style: tsBodyLarge.copyWith(
              fontWeight: FontWeight.w600
            )),

            const Gap(10),

            const CommonWarningBox(text: "Status akan berganti secara otomatis sesuai dengan inputan waktu"),

            const Gap(25),

            ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: statusDagangan.length,
                itemBuilder: (context, index) => Obx(() => ItemStatusDaganganVertical(
                    status: statusDagangan[index].status,
                    index: index,
                    isSelected: controller.currentIndex.value == index,
                    statusColor: statusDagangan[index].statusColor
                ) ,),
                separatorBuilder: (context, index) => const Gap(20),
            ),

            const Spacer(),
            
            CommonButton(text: "Simpan", onPressed: () => null, height: 50)


          ],
        ),
      ),
      barrierColor: Colors.black.withOpacity(0.2),
      isDismissible: true,
      enableDrag: true,
      isScrollControlled: true
  );
}


class ItemStatusDaganganVertical extends GetView<HomePageController> {
  const ItemStatusDaganganVertical({
    super.key,
    required this.status,
    required this.isSelected,
    required this.statusColor,
    required this.index
  });

  final String status;
  final int index;
  final bool isSelected;
  final Color statusColor;


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => controller.changeIndex(index),
      child: Row(
        children: [
          Icon(Icons.access_time_filled, color: statusColor),

          const Gap(10),

          Text(
              status,
              style: tsBodyMedium.copyWith(
                  fontWeight: FontWeight.w600
              )
          ),

          const Spacer(),

          Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
                color: isSelected ? primaryColor : Colors.grey[200],
                borderRadius: BorderRadius.circular(10)
            ),
            child: const Icon(Icons.check, color: Colors.white, size: 15),)
        ],
      ),
    );
  }
}


class ItemStatus {
  final String status;
  final Color statusColor;

  ItemStatus({
    required this.status,
    required this.statusColor
  });
}
