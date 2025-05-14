import 'package:flutter/material.dart';
import 'package:flutter_pos/configs/colors.dart';
import 'package:flutter_pos/configs/sizes.dart';

class commonButtonPrimary extends StatelessWidget {
  final String label;
  final double width;
  final bool isRound;
  final VoidCallback? onPressed;
  const commonButtonPrimary({
    super.key,
    required this.label,
    this.onPressed,
    this.width = double.infinity,
    this.isRound = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: 35,
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
          gradient: LinearGradient(colors: [
            AppColor.primaryDark,
            AppColor.primaryLight,
          ]),
          borderRadius: BorderRadius.circular((isRound) ? 50 : 10),
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              fontSize: kfnormalfont,
              fontWeight: FontWeight.bold,
              color: AppColor.textOnPrimary,
            ),
          ),
        ),
      ),
    );
  }
}

class commonButtonSecondary extends StatelessWidget {
  final String label;
  final double width;
  final bool isRound;
  final VoidCallback? onPressed;
  const commonButtonSecondary({
    super.key,
    required this.label,
    this.onPressed,
    this.width = double.infinity,
    this.isRound = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: 35,
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
          gradient: LinearGradient(colors: [
            AppColor.scondaryDark,
            AppColor.scondaryLight,
          ]),
          borderRadius: BorderRadius.circular((isRound) ? 50 : 10),
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              fontSize: kfnormalfont,
              fontWeight: FontWeight.bold,
              color: AppColor.textOnSecondary,
            ),
          ),
        ),
      ),
    );
  }
}
