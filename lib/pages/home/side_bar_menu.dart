import 'package:flutter/material.dart';
import 'package:flutter_pos/configs/colors.dart';
import 'package:flutter_pos/configs/sizes.dart';
import 'package:flutter_pos/pages/home/homeController.dart';
import 'package:get/get.dart';

class sideBarMenu extends StatelessWidget {
  final Homecontroller controller;
  static String titleKey = "title";
  static String iconKey = "icon";
  final List<Map<String, dynamic>> _menuList = [
    {
      titleKey: "Dashboard",
      iconKey: Icons.dashboard,
    },
    {
      titleKey: "Menu",
      iconKey: Icons.menu_book_outlined,
    },
    {
      titleKey: "Staff",
      iconKey: Icons.people_alt,
    },
    {
      titleKey: "Inventory",
      iconKey: Icons.inventory_2_rounded,
    },
    {
      titleKey: "Take Order",
      iconKey: Icons.receipt_long_rounded,
    },
    {
      titleKey: "Logout",
      iconKey: Icons.logout,
    },
  ];

  sideBarMenu({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ksizeh20,
        Row(
          children: [
            CircleAvatar(
              backgroundColor: AppColor.primarylight,
              radius: 15,
              child: Icon(
                Icons.person,
                size: 20,
                color: Colors.black,
              ),
            ),
            ksizew20,
            Text(
              'ASA POS',
              style: TextStyle(
                fontSize: 20,
                color: AppColor.whiteText,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: _menuList.length,
          itemBuilder: (context, index) {
            return Obx(
              () => ListTile(
                tileColor: controller.currentIndex.value == index
                    ? AppColor.primarylight
                    : AppColor.sideBar,
                onTap: () => controller.onMenuTap(index),
                selected: controller.currentIndex.value == index,
                hoverColor: AppColor.secondary,
                leading: Icon(
                  _menuList[index]["icon"],
                  color: AppColor.whiteText,
                ),
                title: Text(
                  _menuList[index]["title"],
                  style: TextStyle(
                    fontSize: kfnormalfont,
                    color: AppColor.whiteText,
                  ),
                ),
                trailing: Icon(
                  (controller.currentIndex.value != index)
                      ? Icons.keyboard_arrow_right_rounded
                      : Icons.keyboard_arrow_down_rounded,
                  size: 15,
                  color: AppColor.whiteText,
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
