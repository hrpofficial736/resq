import 'package:flutter/material.dart';
import 'package:resq/core/constants/color_scheme.dart';


class BottomNavbar extends StatefulWidget {
  final ValueChanged<int> onChanged ;
  const BottomNavbar({super.key, required this.onChanged});
  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int _currentIndex = 0;
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
        label: "Emergency Contacts",
        icon: Icon(
          Icons.sos,
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
        setState(() {
          _currentIndex = newIndex;
        });
        widget.onChanged(newIndex);
      },
    );
  }
}
