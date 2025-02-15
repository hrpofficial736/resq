import 'package:flutter/material.dart';
import 'package:resq/core/constants/color_scheme.dart';
import 'package:resq/features/shelters/presentation/widgets/maps_widget.dart';
import 'package:resq/features/shelters/presentation/widgets/shelter_signs.dart';

class SheltersScreen extends StatefulWidget {
  const SheltersScreen({super.key});

  @override
  State<SheltersScreen> createState() => _SheltersScreenState();
}

class _SheltersScreenState extends State<SheltersScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(child: Padding(padding: EdgeInsets.all(20), child: Column(
      crossAxisAlignment: CrossAxisAlignment.start, spacing: 20, children: [
        Text("Find a shelter", style: TextStyle(
                          fontFamily: "Ubuntu",
                          fontSize: 25,
                          fontWeight: FontWeight.w800,
                          color: AppColorScheme().primaryTextColor)),
                          MapsWidget(),
                          ShelterSigns()
      ],
    )));
  }
}