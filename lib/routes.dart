import 'package:flutter_pos/pages/home/home.dart';
import 'package:flutter_pos/pages/login/Login_page.dart';
import 'package:get/get.dart';

List<GetPage> routes = [
  GetPage(
      name: '/login',
      page: () => const LoginPage(),
      transition: Transition.fadeIn),

       GetPage(
      name: '/home',
      page: () => const HomePage(),
      transition: Transition.fadeIn),
];
