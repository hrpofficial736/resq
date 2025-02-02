import 'package:flutter/material.dart';

import 'package:resq/core/constants/color_scheme.dart';
import 'package:resq/core/constants/safety_tips_list.dart';
import 'package:resq/core/widgets/safety_tips_carousel_child.dart';

class SafetyTipsWidget extends StatefulWidget {
  const SafetyTipsWidget({super.key});

  @override
  State<SafetyTipsWidget> createState() => _SafetyTipsWidgetState();
}

class _SafetyTipsWidgetState extends State<SafetyTipsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 400,
        height: 400,
        decoration: BoxDecoration(
            border:
                Border.all(width: 2, color: AppColorScheme().primaryTextColor),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 10,
            children: [
              Text(
                "🏥 Safety Tips",
                style: TextStyle(
                    color: AppColorScheme().primaryTextColor,
                    fontFamily: "Ubuntu",
                    fontWeight: FontWeight.w800,
                    fontSize: 20),
              ),
              Expanded(
                  child: SizedBox(
                      width: double.infinity,
                      height: 300,
                      child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(spacing: 10, children: [
                            ...List.generate(5, (int index) {
                              return SafetyTipsCarouselChild(title: safetyTips[index]["title"], subtitle: safetyTips[index]["subtitle"], image: safetyTips[index]["image"]);
                            })
                          ])))
          )],
          ),
        ));
  }
}
