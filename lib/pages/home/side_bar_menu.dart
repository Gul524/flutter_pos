import 'package:flutter/material.dart';
import 'package:flutter_pos/configs/colors.dart';
import 'package:flutter_pos/configs/sizes.dart';
import 'package:flutter_pos/pages/home/homeController.dart';
import 'package:get/get.dart';

class sideBarMenu extends StatelessWidget {
  final Homecontroller controller;
  final VoidCallback onThemeChange;
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
    required this.onThemeChange,
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
              backgroundColor: Colors.black,
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
                fontSize: kflargefont,
                color: AppColor.textOnPrimary,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 300,
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: _menuList.length,
            itemBuilder: (context, index) {
              return Obx(
                () => ListTile(
                  tileColor: AppColor.primaryLight.withAlpha(50),

                  onTap: () => controller.onMenuTap(index),
                  selected: controller.currentIndex.value == index,
                  // hoverColor: AppColor.secondary,
                  leading: Icon(
                    _menuList[index]["icon"],
                    color: AppColor.textOnPrimary,
                  ),
                  title: Text(
                    _menuList[index]["title"],
                    style: TextStyle(
                      fontSize: kfnormalfont,
                      color: AppColor.textOnPrimary,
                    ),
                  ),
                  trailing: Icon(
                    (controller.currentIndex.value != index)
                        ? Icons.keyboard_arrow_right_rounded
                        : Icons.keyboard_arrow_down_rounded,
                    size: 15,
                    color: AppColor.textOnPrimary,
                  ),
                ),
              );
            },
          ),
        ),
        // Spacer(),
        // Container(
        //   // width: 240,
        //   height: 40,
        //   decoration: BoxDecoration(
        //     color: AppColor.themeButtonBG,
        //     borderRadius: BorderRadius.circular(50),
        //   ),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       Expanded(
        //         child: InkWell(
        //           onTap: () {
        //             isDarkMode.value = false;
        //             print(isDarkMode.value);
        //             // Theme.of(context).
        //           },
        //           child: Container(
        //             margin: EdgeInsets.symmetric(vertical: 2, horizontal: 4),
        //             padding: EdgeInsets.all(4),
        //             // width: 100,
        //             decoration: BoxDecoration(
        //               color: (isDarkMode.value)
        //                   ? Colors.transparent
        //                   : AppColor.sideBarSelected,
        //               borderRadius: BorderRadius.circular(50),
        //             ),
        //             child: Row(
        //                 mainAxisAlignment: MainAxisAlignment.center,
        //                 children: [
        //                   Icon(Icons.sunny, color: AppColor.whiteText),
        //                   Text(
        //                     "Light",
        //                     style: TextStyle(color: Colors.white),
        //                   )
        //                 ]),
        //           ),
        //         ),
        //       ),
        //       Expanded(
        //         child: InkWell(
        //           onTap: () {
        //             isDarkMode.value = true;
        //             print(isDarkMode.value);
        //             onThemeChange();
        //           },
        //           child: Container(
        //             margin: EdgeInsets.symmetric(vertical: 2, horizontal: 4),
        //             padding: EdgeInsets.all(4),
        //             // width: 100,
        //             decoration: BoxDecoration(
        //               color: (isDarkMode.value)
        //                   ? AppColor.sideBarSelected
        //                   : Colors.transparent,
        //               borderRadius: BorderRadius.circular(50),
        //             ),
        //             child: Row(
        //                 mainAxisAlignment: MainAxisAlignment.center,
        //                 children: [
        //                   Icon(Icons.nightlight_round_outlined,
        //                       color: AppColor.whiteText),
        //                   Text(
        //                     "Dark",
        //                     style: TextStyle(color: Colors.white),
        //                   )
        //                 ]),
        //           ),
        //         ),
        //       ),
        // ],
        // ),
        // )
      ],
    );
  }
}
