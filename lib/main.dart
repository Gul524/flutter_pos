import 'package:flutter/material.dart';
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
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter POS',
      themeMode: ThemeMode.system,
      initialRoute: "/login",
      getPages: routes,
    );
  }
}
