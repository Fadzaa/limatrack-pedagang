// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:limatrack_pedagang/app/pages/features/home_page/home_page_controller.dart';
import 'package:limatrack_pedagang/app/pages/global_component/common_button.dart';
import 'package:limatrack_pedagang/app/pages/global_component/common_warning_box.dart';
import 'package:limatrack_pedagang/common/theme.dart';

void ZonaTerlarangBottomSheet(HomePageController controller) {
  Get.bottomSheet(
    Container(
      height: 700,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 50,
              height: 3,
              color: Colors.grey[200],
            ),
          ),
          const SizedBox(height: 20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 5,
                height: 50,
                decoration: BoxDecoration(
                  color: dangerColor,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              const SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Zona Terlarang Pedagang",
                    style: tsBodyLarge.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_rounded,
                        size: 20,
                        color: secondaryColor,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        "Jl. Raya Ciputat Parung",
                        style: tsBodySmall.copyWith(
                          color: blackColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          CommonWarningBox(
            text: "Sesuai dengan pemerintah Kab. Kudus",
            colorType: dangerColor,
          ),
          const SizedBox(height: 20),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: listZona.length,
            itemBuilder: (context, index) {
              return ItemZonaTerlarang(
                lokasi: listZona[index].lokasi,
                waktu: listZona[index].waktu,
              );
            },
          ),
          Spacer(),
          CommonButton(
            text: "Kembali",
            onPressed: () => Get.back(),
            height: 50,
          ),
        ],
      ),
    ),
    barrierColor: Colors.black.withOpacity(0.2),
    isDismissible: true,
    enableDrag: true,
    isScrollControlled: true,
  );
}

class ListZona {
  final String lokasi, waktu;

  ListZona({required this.lokasi, required this.waktu});
}

List<ListZona> listZona = [
  ListZona(
    lokasi: "Jl. Raya Ciputat Parung",
    waktu: "Sekitar 15 Meter dari lokasi",
  ),
  ListZona(
    lokasi: "Jl. Raya Ciputat Parung",
    waktu: "Sekitar 15 Meter dari lokasi",
  ),
  ListZona(
    lokasi: "Jl. Raya Ciputat Parung",
    waktu: "Sekitar 15 Meter dari lokasi",
  ),
  ListZona(
    lokasi: "Jl. Raya Ciputat Parung",
    waktu: "Sekitar 15 Meter dari lokasi",
  ),
];

class ItemZonaTerlarang extends StatelessWidget {
  const ItemZonaTerlarang({
    Key? key,
    required this.waktu,
    required this.lokasi,
  }) : super(key: key);
  final String lokasi, waktu;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "$lokasi",
            style: tsBodyMedium.copyWith(
              color: blackColor,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            "$waktu",
            style: tsBodySmall.copyWith(
              color: blackColor,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
