import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/constant.dart';
import '../../../../../common/theme.dart';
import '../../../../router/app_pages.dart';


class VerificationPageSuccessView extends StatelessWidget {
  const VerificationPageSuccessView({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
            alignment: Alignment.topRight,
            child: InkWell(
              onTap: () => Get.offAllNamed(Routes.HOME_PAGE),
                child: const Icon(Icons.close, color: Colors.black, size: 30,)
            )
        ),
        automaticallyImplyLeading: false,
      ),


      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(successVector),

              const SizedBox(height: 20,),

              Text("Verifikasi Berhasil !", style: tsTitleLarge.copyWith(fontWeight: FontWeight.w900),),

              const SizedBox(height: 10,),

              Text(
                "Mohon Tunggu Verifikasi dari Admin ya...",
                style: tsBodyMedium.copyWith(fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 100,)
            ],
          ),
        ),
      ),
    );
  }
}