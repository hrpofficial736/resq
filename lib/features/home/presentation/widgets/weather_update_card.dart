import 'package:flutter/material.dart';


import 'package:resq/core/constants/color_scheme.dart';

class WeatherUpdate extends StatefulWidget {
  const WeatherUpdate({super.key});

  @override
  State<WeatherUpdate> createState() => _WeatherUpdateState();
}

class _WeatherUpdateState extends State<WeatherUpdate> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 264,
        decoration: BoxDecoration(
            border:
                Border.all(width: 2, color: AppColorScheme().primaryTextColor),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 10,
            children: [
              Text(
                "☁ Weather Update",
                style: TextStyle(
                    color: AppColorScheme().primaryTextColor,
                    fontFamily: "Ubuntu",
                    fontWeight: FontWeight.w800,
                    fontSize: 20),
              ),
              ListTile(
                shape: StadiumBorder(),
                tileColor: AppColorScheme().dividerColor,
              ),
              ListTile(
                shape: StadiumBorder(),
                tileColor: AppColorScheme().dividerColor,
              ),
              ListTile(
                shape: StadiumBorder(),
                tileColor: AppColorScheme().dividerColor,
              )
            ],
          ),
        ));
  }
}
