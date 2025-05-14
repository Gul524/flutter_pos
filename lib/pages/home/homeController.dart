import 'package:flutter/material.dart';
import 'package:flutter_pos/pages/tabs/dashboard/dashbord.dart';
import 'package:flutter_pos/pages/tabs/inventory/inventoery.dart';
import 'package:flutter_pos/pages/tabs/menu/menu.dart';
import 'package:flutter_pos/pages/tabs/staff/staff.dart';
import 'package:flutter_pos/pages/tabs/takeOrder/takeOrder.dart';
import 'package:get/get.dart';

class Homecontroller extends GetxController {
  Rx<int> currentIndex = 0.obs;
  List<Widget> tabs = [Dashbord(), Menu(), Staff(), Inventory(), Takeorder()];

  void onMenuTap(int index) {
    if (index == 5) {
      Get.back();
      return;
    }
    currentIndex.value = index;
  }
}
