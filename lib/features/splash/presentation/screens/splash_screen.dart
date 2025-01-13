import 'package:flutter/material.dart';
import 'package:resq/core/constants/color_scheme.dart';
import 'package:resq/core/widgets/resq_logo.dart';
import 'dart:async';

import 'package:resq/features/home/presentation/screens/home_screen.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
    });
    return Scaffold(
        backgroundColor: AppColorScheme().primaryBackgroundColor,
        body: Center(
          child: ResqLogo()));
  }
}
