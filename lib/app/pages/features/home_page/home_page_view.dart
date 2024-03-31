import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:limatrack_pedagang/app/pages/global_component/common_warning_box.dart';
import '../../../../common/constant.dart';
import '../../../../common/theme.dart';
import 'home_page_controller.dart';
import 'widget/sections/advertise_section.dart';
import 'widget/sections/nearest_section.dart';
import 'widget/sections/recommendation_section.dart';

class HomePageView extends GetView<HomePageController> {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    color: Colors.grey[200],
                    height: MediaQuery.of(context).size.height * 0.7,
                    child: Center(
                      child: Text("Ini Map"),
                    ),
                  ),

                  const ContainerStatus()

                ],
              ),


              const ContainerContent(),
            ],
          ),
        ),
      )
    );
  }
}

class ContainerContent extends StatelessWidget {
  const ContainerContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          const SizedBox(height: 20,),

          Container(
              width: 50,
              height: 5,
              decoration: BoxDecoration(
                color: const Color(0xFFD9D9D9),
                borderRadius: BorderRadius.circular(20),
              )

          ),

          const AdvertiseSection(),

          const RecommendationSection(),

          const SizedBox(height: 20),

          const NearestSection()

        ],
      ),
    );
  }
}

class ContainerStatus extends StatelessWidget {
  const ContainerStatus({super.key});

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
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 7,
                        offset: const Offset(0, 3), // changes position of shadow
                      ),
                    ]
                ),

                child: Column(
                  children: [

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Text("Hello,", style: tsBodyMedium.copyWith(
                                fontWeight: FontWeight.w600,
                                color: primaryColor
                            ),
                            ),

                            const SizedBox(height: 10,),

                            Text(" RadyaHarbani👋", style: tsBodyMedium),
                          ],
                        ),


                        Container(
                          height: 20,
                          width: 20,
                          decoration: const BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.circle
                          ),

                          child: const Center(child: Icon(Icons.question_mark, color: Colors.white, size: 16,),),
                        )
                      ],
                    ),

                    const Gap(15),

                    Container(
                      height: 50,
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
                      decoration: BoxDecoration(
                        color: successColor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(15),
                      ),

                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(Icons.location_pin, color: successColor, size: 20,),

                          const Gap(10),

                          Text("Kamu Berada di Zona Aman", style: tsBodySmall.copyWith(
                              fontWeight: FontWeight.w500,
                              color: successColor
                          ),)


                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const Gap(20),

              Container(
                height: 35,
                width: Get.width * 0.4,
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
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
                            offset: const Offset(0, 3), // changes position of shadow
                          ),
                        ]
                      ),

                    ),

                    const Gap(10),

                    Text("Warung Buka", style: tsBodySmall.copyWith(
                      fontWeight: FontWeight.w600,
                    ),)
                  ],
                ),
              )
            ],
          ),

          const CommonWarningBox(text: "Sekarang adalah waktu kamu tutup, status akan dirubah dalam 5 detik", colorType: dangerColor,)
        ],
      )
    );
  }
}









