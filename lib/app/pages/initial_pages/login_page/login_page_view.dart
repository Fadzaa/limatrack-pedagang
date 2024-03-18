import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/constant.dart';
import '../../../../common/theme.dart';
import '../../../router/app_pages.dart';
import '../../global_component/common_button.dart';
import '../../global_component/common_textfield.dart';
import 'login_page_controller.dart';

class LoginPageView extends GetView<LoginPageController> {
  const LoginPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: baseColor,
      body: SafeArea(
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
                        text: "Selamat Datang \nKembali di Lima",
                        style: tsTitleMedium.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextSpan(
                        text: "Track.",
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

                const SizedBox(height: 25,),
                
                CommonButton(
                    text: "Masuk", onPressed: controller.validateForm
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
                    Text("Pengguna Baru?", style: tsBodyMedium),

                    const SizedBox(width: 3,),

                    InkWell(
                      onTap: () => Get.toNamed(Routes.LOGIN_PAGE),
                      child: Text("Daftar", style: tsBodyMedium.copyWith(
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
    );
  }
}




