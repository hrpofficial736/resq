import 'package:flutter/material.dart';
import 'package:resq/core/constants/color_scheme.dart';
import 'package:resq/core/widgets/app_bar.dart';
import 'package:resq/core/widgets/bottom_navbar.dart';
import 'package:resq/features/alerts/presentation/screens/alerts.dart';
import 'package:resq/features/home/presentation/screens/home_screen.dart';
import 'package:resq/features/report/presentation/screens/report_screen.dart';
import 'package:resq/features/shelters/presentation/screens/shelters_screen.dart';

class ResqApp extends StatefulWidget {
  const ResqApp({super.key});

  @override
  State<ResqApp> createState() => _ResqAppState();
}

class _ResqAppState extends State<ResqApp> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    HomeScreen(),
    Alerts(),
    ReportScreen(),
    SheltersScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorScheme().primaryBackgroundColor,
      appBar: PreferredSize(preferredSize: Size.fromHeight(60.0), child: ResqAppBar()),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavbar(onChanged: (int newIndex) {
        setState(() {
          _currentIndex = newIndex;
        });
      },),
    );
  }
}