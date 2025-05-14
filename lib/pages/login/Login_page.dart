import 'package:flutter/material.dart';
import 'package:flutter_pos/configs/colors.dart';
import 'package:flutter_pos/configs/sizes.dart';
import 'package:flutter_pos/shared/common_button.dart';
import 'package:flutter_pos/shared/my_text_field.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 320,
          height: 320,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withAlpha(50),
                  offset: Offset(0, 2),
                  blurRadius: 3,
                  spreadRadius: 1),
              BoxShadow(
                  color: Colors.black.withAlpha(50),
                  offset: Offset(0, -2),
                  blurRadius: 3,
                  spreadRadius: 1)
            ],
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'Login',
                style: TextStyle(
                    fontSize: kfxlargefont,
                    // color: AppColor.text,
                    fontWeight: FontWeight.bold),
              ),
              ksizeh20,
              MyTextField(
                  controller: TextEditingController(), label: 'User Name'),
              MyTextField(
                  controller: TextEditingController(), label: 'Password'),
              ksizeh40,
              commonButtonPrimary(
                onPressed: () {
                  Get.toNamed("/home");
                },
                label: "Login",
              )
            ],
          ),
        ),
      ),
    );
  }
}
