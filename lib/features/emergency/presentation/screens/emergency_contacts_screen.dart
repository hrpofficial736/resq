import 'package:flutter/material.dart';
import 'package:resq/core/constants/color_scheme.dart';

class EmergencyContactsScreen extends StatelessWidget {
  const EmergencyContactsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(padding: EdgeInsets.all(20.0), child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Emergency Contacts", style: TextStyle(
          color: AppColorScheme().primaryTextColor,
          fontFamily: "Ubuntu",
          fontWeight: FontWeight.w800,
          fontSize: 22.0
        ),)
      ],
    ));
  }
}