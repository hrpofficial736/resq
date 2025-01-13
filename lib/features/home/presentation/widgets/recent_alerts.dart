import 'package:flutter/material.dart';
import 'package:resq/core/constants/color_scheme.dart';

class RecentAlerts extends StatefulWidget {
  const RecentAlerts({super.key});

  @override
  State<RecentAlerts> createState() => _RecentAlertsState();
}

class _RecentAlertsState extends State<RecentAlerts> {
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
                "🚩 Recent Alerts",
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
