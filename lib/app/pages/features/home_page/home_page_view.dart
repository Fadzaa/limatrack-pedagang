import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:intl/intl.dart';
import 'package:limatrack_pedagang/app/api/auth/model/user.dart';
import 'package:limatrack_pedagang/app/pages/global_component/bottom_sheet/status_dagangan_bottom_sheet.dart';
import 'package:limatrack_pedagang/app/pages/global_component/bottom_sheet/zona_terlarang_bottom_sheet.dart';
import 'package:limatrack_pedagang/app/pages/global_component/common_warning_box.dart';
import '../../../../common/theme.dart';
import 'home_page_controller.dart';
import 'items/item_pesanan_vertical.dart';
import 'model/pesanan_data.dart';

class HomePageView extends GetView<HomePageController> {
  HomePageView({super.key, this.user});

  UserModel? user;

  @override
  Widget build(BuildContext context) {
    final userName = user!.namaLengkap;

    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          Container(
              color: Colors.grey[200],
              height: MediaQuery.of(context).size.height * 0.7,
              child: GoogleMap(
                initialCameraPosition: const CameraPosition(
                  target: LatLng(-6.966667, 110.416664),
                  zoom: 15,
                ),
              )),
          ContainerStatus(name: userName ?? ""),
          DraggableScrollableSheet(
            initialChildSize: 0.20,
            minChildSize: 0.20,
            maxChildSize: 1,
            builder: (context, scrollableController) => SingleChildScrollView(
              controller: scrollableController,
              child: const ContainerContent(),
            ),
          ),
        ],
      ),
    ));
  }
}

class ContainerContent extends StatelessWidget {
  const ContainerContent({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now().toLocal();
    String formattedDate = DateFormat('dd MMMM yyyy', 'id').format(now);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(45),
          topRight: Radius.circular(45),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Gap(20),
          Container(
              width: 50,
              height: 5,
              decoration: BoxDecoration(
                color: const Color(0xFFD9D9D9),
                borderRadius: BorderRadius.circular(20),
              )),
          const Gap(30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                  child: Text.rich(TextSpan(children: [
                TextSpan(
                  text: "List ",
                  style: tsTitleMedium.copyWith(
                      fontWeight: FontWeight.w600, color: blackColor),
                ),
                TextSpan(
                  text: "Pesananmu\n",
                  style: tsTitleMedium.copyWith(
                      fontWeight: FontWeight.w600, color: primaryColor),
                ),
                TextSpan(
                  text: "Hari Ini ",
                  style: tsTitleMedium.copyWith(
                      fontWeight: FontWeight.w600, color: blackColor),
                ),
              ]))),
              Container(
                height: 30,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: Text(formattedDate,
                      style: tsBodySmall.copyWith(
                          color: Colors.white, fontWeight: FontWeight.w600)),
                ),
              )
            ],
          ),
          const Gap(20),
          ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: pesanan_data.length,
              itemBuilder: (context, index) => ItemPesananVertical(
                  name: pesanan_data[index].name,
                  items: pesanan_data[index].items))
        ],
      ),
    );
  }
}

class ContainerStatus extends GetView<HomePageController> {
  const ContainerStatus({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.7,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 7,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ]),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Hello,",
                                style: tsBodyMedium.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: primaryColor),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(" $name👋", style: tsBodyMedium),
                            ],
                          ),
                          Container(
                            height: 20,
                            width: 20,
                            decoration: const BoxDecoration(
                                color: Colors.black, shape: BoxShape.circle),
                            child: const Center(
                              child: Icon(
                                Icons.question_mark,
                                color: Colors.white,
                                size: 16,
                              ),
                            ),
                          )
                        ],
                      ),
                      const Gap(15),
                      InkWell(
                        onTap: () {
                          ZonaTerlarangBottomSheet(controller);
                        },
                        child: Container(
                          height: 50,
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 14, vertical: 12),
                          decoration: BoxDecoration(
                            color: successColor.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.location_pin,
                                color: successColor,
                                size: 20,
                              ),
                              const Gap(10),
                              Text(
                                "Kamu Berada di Zona Aman",
                                style: tsBodySmall.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: successColor),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Gap(20),
                InkWell(
                  onTap: () => statusDaganganBottomSheet(controller),
                  child: Container(
                    height: 35,
                    width: Get.width * 0.4,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: successColor,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 7,
                                  offset: const Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ]),
                        ),
                        const Gap(10),
                        Text(
                          "Warung Buka",
                          style: tsBodySmall.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            const CommonWarningBox(
              text:
                  "Sekarang adalah waktu kamu tutup, status akan dirubah dalam 5 detik",
              colorType: dangerColor,
            )
          ],
        ));
  }
}
