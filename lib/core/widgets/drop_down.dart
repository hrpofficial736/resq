import 'package:flutter/material.dart';
import 'package:resq/core/constants/color_scheme.dart';

class ResqDropDown extends StatefulWidget {
  String? selectedValue;
  final ValueChanged<String> onChanged;
  ResqDropDown(
      {super.key, required this.selectedValue, required this.onChanged});
  @override
  State<ResqDropDown> createState() => _ResqDropDownState();
}

class _ResqDropDownState extends State<ResqDropDown> {
  String? _currentValue;

  @override
  void initState() {
    super.initState();
    _currentValue = widget.selectedValue;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
        value: _currentValue,
        hint: Text("Incident Type",
            style: TextStyle(
                color: AppColorScheme().secondaryTextColor,
                fontFamily: "Ubuntu")),
        onChanged: (value) {
          setState(() {
            _currentValue = value;
          });
          widget.onChanged(value!);
        },
        dropdownColor: AppColorScheme().primaryBackgroundColor,
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide:
                    BorderSide(color: AppColorScheme().primaryTextColor)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide:
                    BorderSide(color: AppColorScheme().primaryTextColor))),
        items: [
          DropdownMenuItem(
              value: "Earthquake",
              child: Text("Earthquake",
                  style: TextStyle(
                      color: AppColorScheme().primaryTextColor,
                      fontFamily: "Ubuntu"))),
          DropdownMenuItem(
              value: "Tsunami",
              child: Text("Tsunami",
                  style: TextStyle(
                      color: AppColorScheme().primaryTextColor,
                      fontFamily: "Ubuntu"))),
          DropdownMenuItem(
              value: "Flood",
              child: Text("Flood",
                  style: TextStyle(
                      color: AppColorScheme().primaryTextColor,
                      fontFamily: "Ubuntu"))),
          DropdownMenuItem(
              value: "Drought",
              child: Text("Drought",
                  style: TextStyle(
                      color: AppColorScheme().primaryTextColor,
                      fontFamily: "Ubuntu"))),
          DropdownMenuItem(
              value: "Fire",
              child: Text("Fire",
                  style: TextStyle(
                      color: AppColorScheme().primaryTextColor,
                      fontFamily: "Ubuntu")))
        ]);
  }
}
