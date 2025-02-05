import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:resq/core/constants/color_scheme.dart';
import 'package:resq/core/widgets/alert_list_tile.dart';
import 'package:resq/features/home/data/models/aqi_model.dart';
import 'package:resq/features/home/data/models/location_model.dart';
import 'package:resq/providers/aqi_provider.dart';
import 'package:resq/providers/location_provider.dart';


class Alerts extends ConsumerWidget {
  const Alerts({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<LocationModel> location = ref.watch(locationProvider);
    return location.when(data: (LocationModel location) {
      final AsyncValue<AqiModel> aqiData = ref.watch(aqiProvider(location));
      return aqiData.when(data: (AqiModel aqi) {
        return Scaffold(
        backgroundColor: AppColorScheme().primaryBackgroundColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 20.0,
              children: [
                Text(
                  'Alerts',
                  style: TextStyle(
                      fontFamily: "Ubuntu",
                      fontSize: 25,
                      fontWeight: FontWeight.w800,
                      color: AppColorScheme().primaryTextColor),
                ),
                (int.parse(aqi.aqi!) >= 100) ? AlertListTile() : Center(child: Text("No alerts found!"))
              ],
            ),
          ),
        ));
      }, error: (Object error, StackTrace trace) {
        return Center(child: Text("Error fetching data!"));
      }, loading: () {
        return Center(child: CircularProgressIndicator());
      });
    }, error: (Object error, StackTrace trace) {
        return Center(child: Text("Error fetching data!"));
      }, loading: () {
        return Center(child: CircularProgressIndicator());
      });
    
  }
}
