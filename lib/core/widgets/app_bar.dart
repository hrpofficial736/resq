import 'package:flutter/material.dart';
import 'package:resq/core/constants/color_scheme.dart';
import 'package:resq/core/widgets/resq_logo.dart';

class ResqAppBar extends StatelessWidget {
  const ResqAppBar({super.key});

  @override
  AppBar build(BuildContext context){
    return AppBar(
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
    );
  }
}