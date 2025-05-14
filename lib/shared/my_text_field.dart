import 'package:flutter/material.dart';
import 'package:flutter_pos/configs/colors.dart';
import 'package:flutter_pos/configs/sizes.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  const MyTextField({
    super.key,
    required this.controller,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: kfnormalfont,
            color: AppColor.textOnSecondary,
          ),
        ),
        ksizeh4,
        TextField(
          style: TextStyle(
            fontSize: kfnormalfont,
            color: AppColor.textOnTextfield,
          ),
          controller: controller,
          cursorColor: AppColor.primary,
          decoration: InputDecoration(
            hintText: label,
            hintStyle: TextStyle(
              fontSize: kfsmallfont,
              color: AppColor.hintColor,
            ),
            isDense: true,
            filled: true,
            fillColor: AppColor.textFieldBG,
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColor.primaryDark,
                width: 1.0,
              ),
            ),
          ),
        ),
        ksizeh8
      ],
    );
  }
}
