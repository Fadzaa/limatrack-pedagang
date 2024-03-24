import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/constant.dart';
import 'verification_page_controller.dart';

class VerificationPageView extends GetView<VerificationPageController> {
  const VerificationPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          logoPrimary,
          width: 200,
          height: 200,
        )
      ),
    );
  }
}
