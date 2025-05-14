import 'package:flutter/material.dart';
import 'package:flutter_pos/configs/colors.dart';
import 'package:flutter_pos/configs/sizes.dart';

class HeaderWidget extends StatelessWidget {
  final String label;
  final List<Widget> actions;
  const HeaderWidget({
    super.key,
    required this.label,
    this.actions = const [],
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
              colors: [AppColor.primaryDark, AppColor.primaryLight])),
      width: double.infinity,
      height: 45,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(""),
            Text(
              label,
              style: TextStyle(
                  fontSize: kfxlargefont,
                  fontWeight: FontWeight.bold,
                  color: AppColor.textOnPrimary),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Row(
                children: actions,
              ),
            )
          ],
        ),
      ),
    );
  }
}
