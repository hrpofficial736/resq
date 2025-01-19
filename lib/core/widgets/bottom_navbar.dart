import 'package:flutter/material.dart';
import 'package:resq/core/constants/color_scheme.dart';
import 'package:resq/features/alerts/presentation/screens/alerts.dart';
import 'package:resq/features/home/presentation/screens/home_screen.dart';
import 'package:resq/features/report/presentation/screens/report_screen.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeScreen(),
    const Alerts(),
    ReportScreen(),
    // Shelters(),
    // Settings()
  ];
  final List<BottomNavigationBarItem> bottomnavBarItems = [
    BottomNavigationBarItem(
        backgroundColor: AppColorScheme().primaryBackgroundColor,
        label: "Home",
        icon: Icon(
          Icons.home_filled,
        )),
    BottomNavigationBarItem(
        backgroundColor: AppColorScheme().primaryBackgroundColor,
        label: "Alerts",
        icon: Icon(
          Icons.notification_important,
        )),
    BottomNavigationBarItem(
        backgroundColor: AppColorScheme().primaryBackgroundColor,
        label: "Report",
        icon: Icon(
          Icons.report,
        )),
    BottomNavigationBarItem(
        backgroundColor: AppColorScheme().primaryBackgroundColor,
        label: "Shelters",
        icon: Icon(
          Icons.location_on,
        )),
    BottomNavigationBarItem(
        backgroundColor: AppColorScheme().primaryBackgroundColor,
        label: "Settings",
        icon: Icon(
          Icons.settings,
        ))
  ];
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      showUnselectedLabels: true,
      selectedItemColor: AppColorScheme().warningIndicatorColor,
      unselectedItemColor: AppColorScheme().primaryTextColor,
      selectedLabelStyle: TextStyle(fontFamily: "Ubuntu"),
      unselectedLabelStyle: TextStyle(fontFamily: "Ubuntu"),
      items: bottomnavBarItems,
      onTap: (int newIndex) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => _children[_currentIndex]),
        );
        setState(() {
          _currentIndex = newIndex;
        });
      },
    );
  }
}
