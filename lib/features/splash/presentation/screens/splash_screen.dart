import 'package:flutter/material.dart';
import 'package:resq/core/widgets/resq_logo.dart';
import '../../../../core/constants/color_scheme.dart';
import '../../../home/presentation/screens/home_screen.dart';
import 'dart:async';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Future.delayed(Duration(seconds: 3), () {
    //   Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
    // });
    return Scaffold(
        backgroundColor: AppColorScheme().primaryBackgroundColor,
        body: Center(
          child: ResqLogo()));
  }
}
