import 'package:flutter/material.dart';
import 'package:resq/core/constants/color_scheme.dart';
import 'package:resq/features/emergency/presentation/widgets/contacts_list.dart';

class EmergencyContactsScreen extends StatelessWidget {
  const EmergencyContactsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(padding: EdgeInsets.all(20.0), child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 20.0,
      children: [
        Text("Emergency Contacts", style: TextStyle(
          color: AppColorScheme().primaryTextColor,
          fontFamily: "Ubuntu",
          fontWeight: FontWeight.w800,
          fontSize: 22.0
        ),),
        ContactsList()
      ],
    ));
  }
}