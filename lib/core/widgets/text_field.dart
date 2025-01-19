import 'package:flutter/material.dart';
import 'package:resq/core/constants/color_scheme.dart';

class ResqTextField extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();
  String? hintText;
  String? labelText;
  ResqTextField({super.key, required this.hintText, required this.labelText});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        cursorColor: AppColorScheme().primaryTextColor,
        controller: _controller,
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
                color: AppColorScheme().dividerColor, fontFamily: "Ubuntu"),
            labelText: labelText,
            labelStyle: TextStyle(
                color: AppColorScheme().primaryTextColor, fontFamily: "Ubuntu"),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide:
                    BorderSide(color: AppColorScheme().primaryTextColor)),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide:
                    BorderSide(color: AppColorScheme().primaryTextColor))));
  }
}
