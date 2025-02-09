import 'package:resq/features/emergency/data/models/emergency_contact_model.dart';

class EmergencyContacts {
   final List<EmergencyContactModel> contacts = [
    EmergencyContactModel(label: "General Emergency", number: "112"),
    EmergencyContactModel(label: "Fire Department", number: "101"),
    EmergencyContactModel(label: "Ambulance", number: "102"),
    EmergencyContactModel(label: "Disaster Response", number: "108"),
    EmergencyContactModel(label: "Flood Helpline", number: "1070"),
    EmergencyContactModel(label: "Blood Bank", number: "1910"),
    EmergencyContactModel(label: "Women's Helpline", number: "1091"),
    EmergencyContactModel(label: "Child Helpline", number: "1098"),
    EmergencyContactModel(label: "Highway Helpline", number: "1033"),
    EmergencyContactModel(label: "Mental Health Support", number: "1860 266 2345"),
  ];
}
