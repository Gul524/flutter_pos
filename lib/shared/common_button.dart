import 'package:flutter/material.dart';
import 'package:flutter_pos/configs/colors.dart';
import 'package:flutter_pos/configs/sizes.dart';

class commonButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  const commonButton({
    super.key,
    required this.label,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        height: 30,
        decoration: BoxDecoration(
          color: AppColor.buttonColor,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
          child: Text(
              label,
              style: TextStyle(
                fontSize: kfnormalfont,
                color: AppColor.text,
              ),
            ),
          
        ),
      ),
    );
  }
}
