import 'package:flutter/material.dart';
import 'package:resq/core/constants/color_scheme.dart';
import 'package:resq/features/emergency/data/models/emergency_contact_model.dart';

class ContactListTile extends StatelessWidget {
  final EmergencyContactModel contact;
  const ContactListTile({super.key, required this.contact});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(bottom: 10.0), child: ListTile(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      tileColor: AppColorScheme().containerColor,
      leading: Text(
        contact.label!,
        style: TextStyle(
            color: AppColorScheme().primaryTextColor,
            fontFamily: "Poppins",
            fontSize: 18.0),
      ),
      trailing: Text(contact.number!,
          style: TextStyle(
              color: AppColorScheme().primaryTextColor,
              fontFamily: "Poppins",
              fontSize: 18.0)),
    ));
  }
}
