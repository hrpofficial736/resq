import 'package:flutter/material.dart';
import 'package:resq/core/constants/color_scheme.dart';
import 'package:resq/core/widgets/bottom_navbar.dart';
import 'package:resq/core/widgets/resq_logo.dart';
import 'package:resq/core/widgets/sos_button.dart';
import 'package:resq/features/home/presentation/widgets/aqi_update.dart';
import 'package:resq/features/home/presentation/widgets/header.dart';
import 'package:resq/features/home/presentation/widgets/recent_alerts.dart';
import 'package:resq/features/home/presentation/widgets/safety_tips.dart';
import 'package:resq/features/home/presentation/widgets/weather_update_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorScheme().primaryBackgroundColor,
      appBar: AppBar(
        backgroundColor: AppColorScheme().primaryBackgroundColor,
        elevation: 5,
        shadowColor: AppColorScheme().primaryTextColor,
        leading: ResqLogo(),
        leadingWidth: 115,
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.settings,
                color: AppColorScheme().primaryTextColor,
              ))
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
        spacing: 20,
        children: [
          Header(),
          const SizedBox(height: 60),
          SosButton(radius: 60),
          const SizedBox(height: 60),
          RecentAlerts(),
          WeatherUpdate(),
          AqiUpdate(),
          SafetyTipsWidget()
        ],
      )),
      bottomNavigationBar: BottomNavbar(),
    );
  }
}
