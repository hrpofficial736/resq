import 'package:flutter/material.dart';
import '../../../../core/constants/color_scheme.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColorScheme().primaryBackgroundColor,
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ShaderMask(
                  shaderCallback: (bounds) {
                    return LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter, colors: [
                      AppColorScheme().primaryAccentColor,
                      AppColorScheme().primaryTextColor,
                      AppColorScheme().successIndicatorColor
                    ]).createShader(bounds);
                  },
                  child: Icon(Icons.health_and_safety,
                      size: 50, color: AppColorScheme().primaryTextColor)),
              const SizedBox(width: 7),
              Text(
                "resQ",
                style: TextStyle(
                    fontFamily: "Ubuntu",
                    fontWeight: FontWeight.w800,
                    color: AppColorScheme().primaryTextColor,
                    fontSize: 25),
              )
            ],
          ),
        ));
  }
}
