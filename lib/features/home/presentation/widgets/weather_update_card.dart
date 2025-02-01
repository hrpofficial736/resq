import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:resq/core/constants/color_scheme.dart';
import 'package:resq/core/widgets/grid_tile.dart';

class WeatherUpdate extends StatefulWidget {
  final Map<String, dynamic> values;
  const WeatherUpdate({super.key, required this.values});

  @override
  State<WeatherUpdate> createState() => _WeatherUpdateState();
}

class _WeatherUpdateState extends State<WeatherUpdate> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 400,
        decoration: BoxDecoration(
            border:
                Border.all(width: 2, color: AppColorScheme().primaryTextColor),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 10,
            children: [
              Text(
                "☁ Weather Update",
                style: TextStyle(
                    color: AppColorScheme().primaryTextColor,
                    fontFamily: "Ubuntu",
                    fontWeight: FontWeight.w800,
                    fontSize: 20),
              ),
              Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                      width: 320,
                      child: GridView.count(
                        crossAxisCount: 2,
                        childAspectRatio: 1,
                        mainAxisSpacing: 15.0,
                        crossAxisSpacing: 15.0,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        padding: EdgeInsets.all(10.0),
                        children: [
                          CustomGridTile(
                              label: "Temperature",
                              icon: SvgPicture.asset(
                                "lib/assets/icons/temperature.svg",
                                width: 40,
                                height: 40,
                              ),
                              data: "${widget.values["temperature"]}° C"),
                          CustomGridTile(
                              label: "Feels Like",
                              icon: SvgPicture.asset(
                                "lib/assets/icons/feels_like.svg",
                                width: 40,
                                height: 40,
                              ),
                              data: "${widget.values["feelsLike"]}° C"),
                          CustomGridTile(
                              label: "Humidity",
                              icon: SvgPicture.asset(
                                "lib/assets/icons/humidity.svg",
                                width: 40,
                                height: 40,
                              ),
                              data: widget.values["humidity"]),
                          CustomGridTile(
                              label: "Wind Speed",
                              icon: SvgPicture.asset(
                                "lib/assets/icons/wind_speed.svg",
                                width: 40,
                                height: 40,
                              ),
                              data: widget.values["windSpeed"])
                        ],
                      )))
            ],
          ),
        ));
  }
}
