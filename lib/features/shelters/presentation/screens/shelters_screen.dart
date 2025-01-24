import 'package:flutter/material.dart';
import 'package:resq/core/constants/color_scheme.dart';

class SheltersScreen extends StatefulWidget {
  const SheltersScreen({super.key});

  @override
  State<SheltersScreen> createState() => _SheltersScreenState();
}

class _SheltersScreenState extends State<SheltersScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(child: Padding(padding: EdgeInsets.all(20), child: Column(
      children: [
        Text("Find a shelter", style: TextStyle(
                          fontFamily: "Ubuntu",
                          fontSize: 25,
                          fontWeight: FontWeight.w800,
                          color: AppColorScheme().primaryTextColor))
      ],
    )));
  }
}