import 'package:flutter/material.dart';
import 'package:resq/core/constants/color_scheme.dart';
import 'package:resq/core/widgets/alert_list_tile.dart';

class Alerts extends StatefulWidget {
  const Alerts({super.key});

  @override
  State<Alerts> createState() => _AlertsState();
}

class _AlertsState extends State<Alerts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorScheme().primaryBackgroundColor,
      
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20.0), child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 20.0,
          children: [
            Text(
              'Alerts',
              style: TextStyle(
                  fontFamily: "Ubuntu",
                  fontSize: 25,
                  fontWeight: FontWeight.w800,
                  color: AppColorScheme().primaryTextColor),
            ),
            AlertListTile(),
            AlertListTile(),
            AlertListTile(),
            AlertListTile(),
            AlertListTile()
          ],
        ),
      ),
    ));
  }
}
