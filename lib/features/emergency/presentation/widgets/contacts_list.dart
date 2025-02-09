import 'package:flutter/material.dart';
import 'package:resq/core/constants/emergency_contacts.dart';
import 'package:resq/core/widgets/contact_list_tile.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: EmergencyContacts().contacts.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return ContactListTile(contact: EmergencyContacts().contacts[index]);
        });
  }
}
