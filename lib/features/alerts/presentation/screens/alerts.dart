import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:resq/core/constants/color_scheme.dart';
import 'package:resq/core/widgets/alert_list_tile.dart';
import 'package:resq/features/alerts/data/models/alerts_model.dart';
import 'package:resq/providers/alert_provider.dart';


class Alerts extends ConsumerWidget {
  const Alerts({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<AlertsModel>> alerts = ref.watch(alertsProvider);
    return alerts.when(data: (List<AlertsModel> alertsList) {
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
                
                ListView.builder(itemCount: alertsList.length, shrinkWrap: true, physics: NeverScrollableScrollPhysics(), itemBuilder: (context, index) {
                  return AlertListTile(alert: alertsList[index]);
                })
              ],
            ),
          ),
        ));
      },error: (Object error, StackTrace trace) {
        return Center(child: Text("Error fetching data!"));
      }, loading: () {
        return Center(child: CircularProgressIndicator());
      });
    
  }
}
