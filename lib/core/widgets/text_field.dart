import 'package:flutter/material.dart';
import 'package:resq/core/constants/color_scheme.dart';

class ResqTextField extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();
  String? hintText;
  String? labelText;
  int? maxLines;
  Icon? icon;
  ResqTextField({super.key, required this.hintText, required this.labelText, required this.maxLines, this.icon});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
        cursorColor: AppColorScheme().primaryTextColor,
        controller: _controller,
        decoration: InputDecoration(
          prefixIcon: icon,
          alignLabelWithHint: true,
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
