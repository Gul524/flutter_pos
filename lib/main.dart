import 'package:flutter/material.dart';
import 'package:flutter_pos/configs/colors.dart';
import 'package:flutter_pos/configs/themes.dart';
import 'package:flutter_pos/routes.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        AppColor.primaryDark,
        AppColor.primaryLight,
      ])),
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter POS',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.transparent
        ),
        // themeMode: ThemeMode.system,
        initialRoute: "/login",
        getPages: routes,
      ),
    );
  }
}
