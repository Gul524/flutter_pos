import 'package:flutter/material.dart';
import 'package:flutter_pos/configs/colors.dart';
import 'package:flutter_pos/configs/sizes.dart';
import 'package:flutter_pos/pages/home/homeController.dart';
import 'package:flutter_pos/pages/home/side_bar_menu.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Homecontroller controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = Get.put(Homecontroller());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.scaffoldBackgroundColor,
        body: Row(
          children: [
            Container(
              width: 250,
              margin: const EdgeInsets.all(8),
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: AppColor.sideBar,
                borderRadius: BorderRadius.circular(5),
              ),
              child: sideBarMenu(
                controller: controller,
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(8),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: AppColor.scaffoldBackgroundColor,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  children: [
                   
                    ksizeh20,
                    Obx(
                      () => Text(
                        controller.currentIndex.value.toString(),
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
