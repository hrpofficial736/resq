import 'package:flutter/material.dart';
import 'package:resq/core/constants/color_scheme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomGridTile extends StatelessWidget {
  final String label;
  final SvgPicture icon;
  final String data;
  const CustomGridTile(
      {super.key, required this.label, required this.icon, required this.data});
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: AppColorScheme().secondaryBackgroundColor,
            borderRadius: BorderRadius.circular(12.0)),
            padding: EdgeInsets.all(10.0),
        child: GridTile(
            header: Text(label,
                style: TextStyle(color: AppColorScheme().secondaryTextColor, fontFamily: "Poppins")),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 7.0,
              children: [
                const SizedBox(height: 10),
                icon ?? const SizedBox(),
                Text(
                  data,
                  style: TextStyle(
                    fontSize: 20,
                      color: AppColorScheme().primaryTextColor,
                      fontWeight: FontWeight.w800,
                      fontFamily: "Ubuntu"),
                )
              ],
            )));
  }
}
