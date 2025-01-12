import 'package:flutter/material.dart';
import 'package:resq/core/constants/color_scheme.dart';

class ResqLogo extends StatelessWidget {
  const ResqLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ShaderMask(
            shaderCallback: (bounds) {
              return LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
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
    );
  }
}
