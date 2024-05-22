import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:limatrack_pedagang/app/api/auth/model/user.dart';
import '../../../../common/constant.dart';
import '../../../../common/theme.dart';
import '../../../router/app_pages.dart';
import 'items/item_profile_vertical.dart';
import 'model/profile_data.dart';
import 'profile_page_controller.dart';

class ProfilePageView extends GetView<ProfilePageController> {
  const ProfilePageView({super.key, required this.user});

  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: baseColor,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Profil Kamu",
                    style: tsTitleMedium.copyWith(
                        fontWeight: FontWeight.w600, color: blackColor),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(exampleJajanRectangle),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            user.namaLengkap!,
                            style: tsBodyMedium.copyWith(
                                fontWeight: FontWeight.w600, color: blackColor),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(user.email!, style: tsLabelLarge),
                        ],
                      ),
                      const Spacer(),
                      Icon(Icons.edit)
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: list_profile.length,
                      itemBuilder: (context, index) => ItemProfileVertical(
                          color: list_profile[index].color,
                          icon: list_profile[index].icon,
                          name: list_profile[index].name,
                          routes: list_profile[index].name,
                          isDarkMode: list_profile[index].isDarkMode)),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                      onPressed: () => Get.toNamed(Routes.LOGIN_PAGE),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: dangerColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          fixedSize:
                              Size(MediaQuery.of(context).size.width, 50)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.logout,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Keluar",
                            style: tsBodyMedium.copyWith(
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          )
                        ],
                      ))
                ],
              ),
            ),
          ),
        ));
  }
}
