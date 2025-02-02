import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:resq/core/constants/color_scheme.dart';
import 'package:resq/core/widgets/grid_tile.dart';
import 'package:resq/features/home/data/models/aqi_model.dart';

class AqiUpdate extends StatefulWidget {
  final AqiModel aqiData;
  const AqiUpdate({super.key, required this.aqiData});

  @override
  State<AqiUpdate> createState() => _AqiUpdateState();
}

class _AqiUpdateState extends State<AqiUpdate> {
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
                "😷 AQI Update",
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
                              label: "AQI",
                              icon: SvgPicture.asset(
                                "lib/assets/icons/aqi.svg",
                                width: 40,
                                height: 40,
                              ),
                              data: "${widget.aqiData.aqi}"),
                          CustomGridTile(
                              label: "CO",
                              icon: SvgPicture.asset(
                                "lib/assets/icons/co.svg",
                                width: 40,
                                height: 40,
                              ),
                              data: "${widget.aqiData.co}"),
                          CustomGridTile(
                              label: "PM 2.5",
                              icon: SvgPicture.asset(
                                "lib/assets/icons/pm25.svg",
                                width: 40,
                                height: 40,
                                colorFilter: ColorFilter.mode(AppColorScheme().primaryTextColor, BlendMode.srcIn),
                              ),
                              data: "${widget.aqiData.pm_25}"),
                          CustomGridTile(
                              label: "PM 10",
                              icon: SvgPicture.asset(
                                "lib/assets/icons/pm10.svg",
                                width: 40,
                                height: 40,
                                colorFilter: ColorFilter.mode(
                                      AppColorScheme().primaryTextColor,
                                      BlendMode.srcIn)
                              ),
                              data: "${widget.aqiData.pm_10}")
                        ],
                      )))
            ],
          ),
        ));
  }
}
