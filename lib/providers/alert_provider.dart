import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:resq/core/constants/color_scheme.dart';
import 'package:resq/features/alerts/data/models/alerts_model.dart';
import 'package:resq/features/home/data/models/aqi_model.dart';
import 'package:resq/features/home/data/models/location_model.dart';
import 'package:resq/features/home/data/models/weather_model.dart';
import 'package:resq/providers/aqi_provider.dart';
import 'package:resq/providers/location_provider.dart';
import 'package:resq/providers/weather_provider.dart';

final alertsProvider = FutureProvider<List<AlertsModel>>(
  (ref) async {
    final LocationModel location = await ref.watch(locationProvider.future);
    final WeatherModel weather =
        await ref.watch(weatherProvider(location).future);
    final AqiModel aqi = await ref.watch(aqiProvider(location).future);

    List<AlertsModel> alerts = [];

    if (double.parse(weather.temperature!) > 40.0) {
      alerts.add(AlertsModel(
          icon: Icon(
            Icons.local_fire_department,
            color: AppColorScheme().heatAlertColor,
          ),
          subtitle: "Temperature has crossed 40°C!",
          title: "Heat Wave Alert",
          type: "heat"));
    } else if (double.parse(weather.temperature!) < 10.0) {
      alerts.add(AlertsModel(
          icon: Icon(
            Icons.ac_unit,
            color: AppColorScheme().heatAlertColor,
          ),
          subtitle: "Temperature has dropped below 10°C!",
          title: "Cold Wave Alert",
          type: "cold"));
    } else if (double.parse(aqi.aqi!) > 100.0) {
      alerts.add(AlertsModel(
          icon: Icon(
            Icons.report_problem_outlined,
            color: AppColorScheme().warningIndicatorColor,
          ),
          subtitle: "Try to stay indoors.",
          title: "AQI has crossed 100!",
          type: "aqi"));
    }
    return alerts;
  },
);
