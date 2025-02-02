
import 'package:flutter/material.dart';
import 'package:resq/core/constants/color_scheme.dart';

class AlertListTile extends StatelessWidget {
  const AlertListTile({super.key});
  @override
  Widget build(BuildContext context) {
   return ListTile(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
    tileColor: AppColorScheme().containerColor,
    leading: Icon(Icons.report_problem, color: AppColorScheme().warningIndicatorColor, size: 25,),
    title: Text("AQI greater than 200", style: TextStyle(
      color: AppColorScheme().warningIndicatorColor,
      fontFamily: "Poppins",
      fontSize: 20.0
    ),),
    subtitle: Text("Try to stay indoors.", style: TextStyle(
      color: AppColorScheme().secondaryTextColor,
      fontFamily: "Ubuntu",
      fontSize: 14.0
    ),),
   )    ;
  }
}