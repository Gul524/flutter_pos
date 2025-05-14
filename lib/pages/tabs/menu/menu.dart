import 'package:flutter/material.dart';
import 'package:flutter_pos/configs/colors.dart';
import 'package:flutter_pos/configs/sizes.dart';
import 'package:flutter_pos/shared/common_button.dart';
import 'package:flutter_pos/shared/headerWidget.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeaderWidget(
          label: "MENU",
          actions: [
            SizedBox(
                width: 120,
                child: commonButtonSecondary(
                  label: "Add Category",
                  isRound: true,
                )),
            ksizew10,
            SizedBox(
                width: 120,
                child: commonButtonSecondary(
                  label: "Add prodouct",
                  isRound: true,
                )),
          ],
        ),
        Row(
          children: [
            Container(
              height: MediaQuery.of(context).size.height - 103,
              width: 250,
              margin: EdgeInsets.fromLTRB(0, 8, 4, 2),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  border: Border.all(color: AppColor.primary),
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(colors: [
                    const Color.fromARGB(255, 227, 227, 227),
                    const Color.fromARGB(255, 242, 241, 241),
                  ])),
              child: Column(
                children: [
                  Text(
                    "Categories",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: AppColor.textOnSecondary),
                  ),
                  Divider(
                    color: AppColor.primary,
                    thickness: 2,
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height - 103,
                margin: EdgeInsets.fromLTRB(4, 8, 0, 2),
                width: double.infinity,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    border: Border.all(color: AppColor.primary),
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(colors: [
                      AppColor.primaryDark,
                      AppColor.primaryLight,
                    ])),
                child: Column(
                  children: [
                    Text(
                      "Products",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: AppColor.textOnPrimary),
                    ),
                    Divider(
                      color: AppColor.scondary,
                      thickness: 2,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        // Padding(
        //   padding: const EdgeInsets.only(top: 12.0, bottom: 8),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceAround,
        //     children: [
        //       SizedBox(
        //           width: 200,
        //           child: commonButtonPrimary(label: "Add Category")),
        //       SizedBox(
        //           width: 200,
        //           child: commonButtonPrimary(label: "Add prodouct")),
        //     ],
        //   ),
        // ),
      ],
    );
  }
}
