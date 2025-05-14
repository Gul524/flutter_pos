import 'package:flutter/material.dart';
import 'package:flutter_pos/configs/colors.dart';
import 'package:flutter_pos/shared/headerWidget.dart';

class Staff extends StatelessWidget {
  const Staff({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       HeaderWidget(label: "Staff")
      ],
    );;
  }
}