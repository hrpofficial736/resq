import 'package:flutter/material.dart';
import 'package:resq/features/alerts/presentation/screens/alerts.dart';
import 'package:resq/features/home/presentation/screens/home_screen.dart';
import 'features/splash/presentation/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routes: {
        '/': (context) => HomeScreen(),
        '/alerts': (context) => const Alerts(),
      },
    );
  }
}