import 'package:flutter/material.dart';
import 'package:resq/core/constants/color_scheme.dart';

class ShelterSigns extends StatelessWidget {
  const ShelterSigns({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: AppColorScheme().containerColor,
          borderRadius: BorderRadius.circular(15.0)),
      child: Column(
        spacing: 20.0,
        children: [
          Text("Symbols for shelters",
              style: TextStyle(
                  color: AppColorScheme().primaryTextColor,
                  fontFamily: "Ubuntu",
                  fontWeight: FontWeight.w800,
                  fontSize: 18.0)),
          Column(
            spacing: 10.0,
            children: [
              Row(
                spacing: 10.0,
                children: [
                  Container(decoration: BoxDecoration(
                    color: AppColorScheme().primaryTextColor,
                    shape: BoxShape.circle,
                    
                  ), child: 
                  Icon(
                    Icons.add_circle,
                    color: AppColorScheme().warningIndicatorColor,
                    size: 20.0,
                  ),),
                  Text(
                    "Hospitals/Medical Assistance",
                    style: TextStyle(
                        color: AppColorScheme().secondaryTextColor,
                        fontFamily: "Poppins"),
                  )
                ],
              ),
              Row(
                spacing: 10.0,
                children: [
                  Icon(
                    Icons.rectangle,
                    color: AppColorScheme().successIndicatorColor.withGreen(180),
                    size: 20.0,
                  ),
                  Text(
                    "Parks",
                    style: TextStyle(
                        color: AppColorScheme().secondaryTextColor,
                        fontFamily: "Poppins"),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
