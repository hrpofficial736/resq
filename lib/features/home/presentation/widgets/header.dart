import 'package:flutter/material.dart';
import 'package:resq/core/constants/color_scheme.dart';
import 'package:resq/features/home/data/models/location_model.dart';
import 'package:resq/features/home/data/models/weather_model.dart';

class Header extends StatelessWidget {
  final LocationModel location;
  final WeatherModel weatherData;
  const Header({super.key, required this.location, required this.weatherData});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          border:
              Border.all(width: 2, color: AppColorScheme().primaryTextColor),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Row(
        spacing: 140,
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, spacing: 10,
            children: [
              Text(
                "Hi Harry",
                style: TextStyle(
                    fontFamily: "Ubuntu",
                    color: AppColorScheme().primaryTextColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 25),
              ),
              Row(spacing: 10, children: [Icon(Icons.location_on, size: 20, color: AppColorScheme().primaryTextColor),
                  Text(
                    "${location.addressFromCoordinates["locality"]}, ${location.addressFromCoordinates["country"]}",
                    style: TextStyle(
                        fontFamily: "Ubuntu",
                        color: AppColorScheme().primaryTextColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  )
                ],)
              
            ],
          ),
          Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Icon(Icons.cloud, size: 50, color: AppColorScheme().primaryTextColor),
              Text("${weatherData.temperature}° C", style: TextStyle(
                    fontFamily: "Ubuntu",
                    color: AppColorScheme().primaryTextColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 18),
              )])
        ],
      ),
    );
  }
}
