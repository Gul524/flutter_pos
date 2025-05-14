import 'package:flutter/material.dart';
import 'package:flutter_pos/configs/colors.dart';
import 'package:flutter_pos/configs/sizes.dart';
import 'package:flutter_pos/shared/common_button.dart';
import 'package:flutter_pos/shared/headerWidget.dart';
import 'package:get/get.dart';

class Dashbord extends StatelessWidget {
  const Dashbord({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeaderWidget(label: "Dashboard"),
        ksizeh10,
        SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 12),
              child: Row(
                children: [
                  Text("From Date:"),
                  ksizew4,
                  Container(
                    width: 150,
                    height: 35,
                    decoration: BoxDecoration(
                      color: AppColor.textFieldBG,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.black, width: 1),
                    ),
                  ),
                  ksizew30,
                  Text("To Date:"),
                  ksizew4,
                  Container(
                    width: 150,
                    height: 35,
                    decoration: BoxDecoration(
                      color: AppColor.textFieldBG,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.black, width: 1),
                    ),
                  ),
                  Spacer(),
                  SizedBox(
                    width: 100,
                    child: commonButtonPrimary(
                      label: "Apply",
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        ksizeh20,
        GridView(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              childAspectRatio: 2,
              maxCrossAxisExtent: 250),
          children: [
            DashbordCard(
              label: "Total Orders",
              value: "0",
              circleBgColor: Colors.green,
              iconData: Icons.shopping_bag_rounded,
            ),
            DashbordCard(
              label: "Gross Sale",
              value: "0",
              circleBgColor: Colors.blue,
              iconData: Icons.currency_exchange,
            ),
            DashbordCard(
              label: "Total Tax",
              value: "0",
              circleBgColor: Colors.red,
              iconData: Icons.home_outlined,
            ),
            DashbordCard(
              label: "Net Sale",
              value: "0",
              circleBgColor: Colors.green,
              iconData: Icons.currency_rupee_sharp,
            ),
            DashbordCard(
                label: "Total Dicount",
                value: "0",
                circleBgColor: Colors.yellow,
                iconData: Icons.discount),
          ],
        ),
        ksizeh10,
        Container(
          height: MediaQuery.of(context).size.height - 300,
          width: double.infinity,
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
                "Orders",
                style: TextStyle(
                    fontSize: kflargefont,
                    fontWeight: FontWeight.bold,
                    color: AppColor.textOnSecondary),
              ),
              Divider(
                color: AppColor.primary,
                thickness: 2,
              ),
              Center(
                child: Text("No Orders Availble",
                    style: TextStyle(
                      fontSize: kfnormalfont,
                      color: AppColor.textOnSecondary,
                    )),
              ),
            ],
          ),
        ),
        // Text(
        //   "Orders",
        //   style: TextStyle(
        //       fontSize: 24,
        //       fontWeight: FontWeight.bold,
        //       color: AppColor.primary),
        // ),
        // Container(
        //   decoration: BoxDecoration(
        //       borderRadius: BorderRadius.circular(10),
        //       color: AppColor.scondary),
        //   margin: EdgeInsets.all(8),
        //   padding: EdgeInsets.all(8),
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     crossAxisAlignment: CrossAxisAlignment.center,
        //     mainAxisSize: MainAxisSize.max,
        //     children: [
        //       Center(
        //         child: Text("No Orders Availble",
        //             style: TextStyle(
        //               fontSize: 20,
        //               color: AppColor.textOnSecondary,
        //             )),
        //       ),
        //     ],
        //   ),
        // )
      ],
    );
  }
}

class DashbordCard extends StatelessWidget {
  final String label;
  final String value;
  final Color circleBgColor;
  final IconData iconData;
  const DashbordCard({
    super.key,
    required this.label,
    required this.value,
    required this.circleBgColor,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(colors: [
            AppColor.primaryLight,
            AppColor.primary,
          ])),
      width: 300,
      height: 100,
      child: Stack(
        children: [
          Positioned(
            top: 10,
            left: 12,
            child: Text(
              label,
              style: TextStyle(fontSize: kfnormalfont, color: Colors.white),
            ),
          ),
          Positioned(
            top: 40,
            left: 12,
            child: Text(
              value,
              style: TextStyle(
                  fontSize: kflargefont,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          Positioned(
            top: 25,
            right: 12,
            child: CircleAvatar(
              radius: 25,
              backgroundColor: circleBgColor,
              child: Center(
                child: FittedBox(
                  child: Icon(
                    size: 35,
                    iconData,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
