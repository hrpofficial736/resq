import 'package:flutter/material.dart';
import 'package:resq/core/constants/color_scheme.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          border:
              Border.all(width: 2, color: AppColorScheme().primaryTextColor),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Row(
        spacing: 150,
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, spacing: 10,
            children: [
              Text(
                "Hi Harry",
                style: TextStyle(
                    fontFamily: "Ubuntu",
                    color: AppColorScheme().primaryTextColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 25),
              ),
              Text("Current Location", style: TextStyle(
                    fontFamily: "Ubuntu",
                    color: AppColorScheme().primaryTextColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 16),
              )
            ],
          ),
          Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                "25 C",
                style: TextStyle(
                    fontFamily: "Ubuntu",
                    color: AppColorScheme().primaryTextColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 15),
              ),
              Text("Haze", style: TextStyle(
                    fontFamily: "Ubuntu",
                    color: AppColorScheme().primaryTextColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 12),
              )])
        ],
      ),
    );
  }
}
