import 'package:flutter/material.dart';
import 'package:resq/core/constants/color_scheme.dart';
import 'package:resq/core/widgets/app_bar.dart';
import 'package:resq/core/widgets/bottom_navbar.dart';

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
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60.0), child: ResqAppBar()),
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.symmetric(horizontal: 20), child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 20,
          children: [
            const SizedBox(height: 20),
            Text(
              'Alerts',
              style: TextStyle(
                  fontFamily: "Ubuntu",
                  fontSize: 25,
                  fontWeight: FontWeight.w800,
                  color: AppColorScheme().primaryTextColor),
            ),
            ListTile(
              minTileHeight: 70,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  tileColor: AppColorScheme().dividerColor,
                ),
                ListTile(
                  minTileHeight: 70,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  tileColor: AppColorScheme().dividerColor,
                ),
                ListTile(
                  minTileHeight: 70,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  tileColor: AppColorScheme().dividerColor,
                )
          ],
        ),
      ),
    ), bottomNavigationBar: BottomNavbar(),);
  }
}
