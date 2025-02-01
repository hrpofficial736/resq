import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:resq/core/constants/color_scheme.dart';
import 'package:resq/core/widgets/sos_button.dart';
import 'package:resq/features/home/data/models/aqi_model.dart';
import 'package:resq/features/home/data/models/location_model.dart';
import 'package:resq/features/home/data/models/weather_model.dart';
import 'package:resq/features/home/presentation/widgets/aqi_update.dart';
import 'package:resq/features/home/presentation/widgets/header.dart';
import 'package:resq/features/home/presentation/widgets/recent_alerts.dart';
import 'package:resq/features/home/presentation/widgets/safety_tips.dart';
import 'package:resq/features/home/presentation/widgets/weather_update_card.dart';
import 'package:resq/providers/aqi_provider.dart';
import 'package:resq/providers/location_provider.dart';
import 'package:resq/providers/weather_provider.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watch the location provider
    final AsyncValue<LocationModel> location = ref.watch(locationProvider);

    return location.when(
      data: (LocationModel location) {
        final AsyncValue<WeatherModel> weatherData =
            ref.watch(weatherProvider(location));
        return weatherData.when(
          data: (WeatherModel weather) {
        final AsyncValue<AqiModel> aqiData = ref.watch(aqiProvider(location));
            return aqiData.when(data: (AqiModel aqi) {
              return SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 10,
                  children: [
                    Header(location: location, weatherData: weather),
                    const SizedBox(height: 60),
                    SosButton(radius: 60),
                    const SizedBox(height: 60),
                    RecentAlerts(),
                    WeatherUpdate(
                      values: {
                        "temperature": weather.temperature,
                        "feelsLike": weather.feelsLike,
                        "humidity": weather.humidity,
                        "windSpeed": weather.windSpeed
                      },
                    ),
                    AqiUpdate(aqiData: aqi),
                    SafetyTipsWidget(),
                  ],
                ),
              );
            }, error: (Object error, StackTrace trace) {
              return Text("Error fetching aqi data!");
            }, loading: () {
              return Center(child: CircularProgressIndicator());
            });
            
          },
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (Object error, StackTrace stackTrace) =>
              Center(child: Text('Error fetching weather: $error', style: TextStyle(color: AppColorScheme().primaryTextColor),)),
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (Object error, StackTrace stackTrace) =>
          Center(child: Text('Error fetching location: $error')),
    );
  }
}
