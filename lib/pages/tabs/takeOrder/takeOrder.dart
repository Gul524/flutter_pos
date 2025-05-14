import 'package:flutter/material.dart';
import 'package:flutter_pos/configs/colors.dart';
import 'package:flutter_pos/shared/headerWidget.dart';

class Takeorder extends StatelessWidget {
  const Takeorder({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeaderWidget(label: "Take Order"),
      ],
    );
    ;
  }
}
