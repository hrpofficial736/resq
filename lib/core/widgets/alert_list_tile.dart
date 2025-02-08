
import 'package:flutter/material.dart';
import 'package:resq/core/constants/color_scheme.dart';
import 'package:resq/features/alerts/data/models/alerts_model.dart';

class AlertListTile extends StatelessWidget {
  final AlertsModel alert;
  const AlertListTile({super.key, required this.alert});
  @override
  Widget build(BuildContext context) {
   return ListTile(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
    tileColor: AppColorScheme().containerColor,
    leading: alert.icon,
    title: Text(alert.title, style: TextStyle(
      color: AppColorScheme().warningIndicatorColor,
      fontFamily: "Poppins",
      fontSize: 20.0
    ),),
    subtitle: Text(alert.subtitle, style: TextStyle(
      color: AppColorScheme().secondaryTextColor,
      fontFamily: "Ubuntu",
      fontSize: 14.0
    ),),
   )    ;
  }
}