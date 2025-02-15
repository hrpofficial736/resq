import 'package:flutter/material.dart';
import 'package:resq/core/constants/color_scheme.dart';

class ResqElevatedButton extends StatelessWidget {
  Icon? icon;
  String? text;
  Function onPressed;
  ResqElevatedButton({super.key, this.icon, required this.text, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          onPressed();
        },
        style: ElevatedButton.styleFrom(
          fixedSize: Size.infinite,
          backgroundColor: AppColorScheme().primaryTextColor,
          foregroundColor: AppColorScheme().primaryBackgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Padding(padding: EdgeInsets.symmetric(horizontal: 124, vertical: 15), child: Text(
          text!,
          style: TextStyle(fontFamily: "Ubuntu", fontSize: 17),
        )));
  }
}
