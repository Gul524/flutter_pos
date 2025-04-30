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
            color: AppColor.text,
          ),
        ),
        ksizeh4,
        TextField(
          style: TextStyle(
            fontSize: kfnormalfont,
            color: AppColor.text,
          ),
          cursorHeight: 15,
          controller: controller,
          cursorColor: AppColor.text,
          decoration: InputDecoration(
            hintText: label,
            hintStyle: TextStyle(
              fontSize: kfsmallfont,
              color: AppColor.gray,
            ),
            contentPadding: const EdgeInsets.symmetric(
              vertical: 7,
              horizontal: 7,
            ),
            isCollapsed: true,
            isDense: true,
            filled: true,
            fillColor: AppColor.textfieldin,
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColor.secondary,
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
