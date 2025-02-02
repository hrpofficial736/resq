import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:resq/core/constants/color_scheme.dart';

class SafetyTipsCarouselChild extends StatelessWidget {
  final SvgPicture image;
  final String title;
  final String subtitle;
  const SafetyTipsCarouselChild({super.key, required this.title, required this.subtitle, required this.image});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: AppColorScheme().secondaryBackgroundColor
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          image,
          Text(title, textAlign: TextAlign.center, style: TextStyle(
            fontFamily: "Ubuntu",
            fontSize: 20.0,
            fontWeight: FontWeight.w800,
            color: AppColorScheme().primaryTextColor
          ),),
          Text(subtitle, textAlign: TextAlign.center, style: TextStyle(
            fontFamily: "Ubuntu",
            fontSize: 14.0,
            fontWeight: FontWeight.w800,
            color: AppColorScheme().secondaryTextColor
          ),)
        ],
      ),
    );    
  }
 }