import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Homecontroller extends GetxController {
  Rx<int> currentIndex = 0.obs;

  
  void onMenuTap(int index) {
    currentIndex.value = index;
    update();
  }
}
