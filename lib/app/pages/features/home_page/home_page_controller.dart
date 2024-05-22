import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HomePageController extends GetxController {
  RxInt currentIndex = 0.obs;
  RxInt currentIndexPesanan = 0.obs;
  RxBool isAccepted = true.obs;
  RxBool isSelected = false.obs;

  void changeIndex(int index) {
    currentIndex.value = index;
  }

  void changeIndexPesanan(int index) {
    currentIndexPesanan.value = index;
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }





}