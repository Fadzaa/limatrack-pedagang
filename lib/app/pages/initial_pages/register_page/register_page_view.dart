import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:limatrack_pedagang/app/pages/global_component/loading_overlay.dart';

import '../../../../common/constant.dart';
import '../../../../common/theme.dart';
import '../../../router/app_pages.dart';
import '../../global_component/common_button.dart';
import '../../global_component/common_textfield.dart';
import 'register_page_controller.dart';

class RegisterPageView extends GetView<RegisterPageController> {
  const RegisterPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: baseColor,
      body: SafeArea(
          child: Obx(() =>
              LoadingOverlay(
                  isLoading: controller.isLoading.value,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Align(
                              alignment: Alignment.centerRight,
                              child: Image.asset(logoSecondary)
                          ),

                          const SizedBox(height: 20,),

                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: "Buat Akun dan Jadilah\nPedagang ",
                                  style: tsTitleMedium.copyWith(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                TextSpan(
                                  text: "Bijak",
                                  style: tsTitleMedium.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: primaryColor,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(height: 50,),

                          CommonTextField(
                            controller: controller.nameController,
                            hintText: "Nama Lengkap",
                            prefixIcon: icPersonOutline,
                          ),

                          CommonTextField(
                            controller: controller.emailController,
                            hintText: "Email",
                            prefixIcon: icMail,
                          ),

                          CommonTextField(
                            controller: controller.passwordController,
                            hintText: "Kata Sandi",
                            prefixIcon: icLockOutline,
                            isObscure: true,
                          ),

                          CommonTextField(
                            controller: controller.confirmPassController,
                            hintText: "Konfirmasi Kata Sandi",
                            prefixIcon: icLockOutline,
                            isObscure: true,
                          ),

                          const SizedBox(height: 25,),

                          CommonButton(
                            text: "Daftar Sekarang", onPressed: () => controller.otpVerification(), height: 45,
                          ),

                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            alignment: Alignment.center,
                            child: Text("atau lanjutkan dengan", style: tsLabelLarge.copyWith(
                                color: greyColor
                            ),),
                          ),

                          const CommonButtonGoogle(),

                          const SizedBox(height: 30,),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Punya Akun?", style: tsBodyMedium),

                              const SizedBox(width: 3,),

                              InkWell(
                                onTap: () => Get.toNamed(Routes.LOGIN_PAGE),
                                child: Text("Masuk", style: tsBodyMedium.copyWith(
                                  color: primaryColor,
                                  fontWeight: FontWeight.w600,
                                ),),
                              ),

                            ],
                          ),

                          const Spacer(),


                        ]
                    ),
                  )
              )
          )
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}




