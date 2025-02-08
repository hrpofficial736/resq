import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:resq/core/constants/color_scheme.dart';
import 'package:resq/core/widgets/alert_list_tile.dart';
import 'package:resq/features/alerts/data/models/alerts_model.dart';
import 'package:resq/providers/alert_provider.dart';

class RecentAlerts extends ConsumerWidget {
  const RecentAlerts({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final alerts = ref.watch(alertsProvider);
    return alerts.when(data: (List<AlertsModel> alertsList) {
      return SizedBox(
          width: double.infinity,
          
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 20,
              children: [
                Text(
                  "🚩 Recent Alerts",
                  style: TextStyle(
                      color: AppColorScheme().primaryTextColor,
                      fontFamily: "Ubuntu",
                      fontWeight: FontWeight.w800,
                      fontSize: 20),
                ),
                ListView.builder(itemCount: alertsList.length, shrinkWrap: true, itemBuilder: (context, index) {
                  return AlertListTile(alert: alertsList[index]);
                }),
                alertsList.length > 3 ? 
                Align(alignment: Alignment.center, child:
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColorScheme().containerColor,
                    ),
                    child: Text(
                      "Show more",
                      style: TextStyle(
                          color: AppColorScheme().secondaryTextColor,
                          fontFamily: "Poppins"),
                    ))) : SizedBox()
              ],
            ),
          ));
    }, error: (error, stackTrace) {
      return Text(
        "No alerts found!",
        style: TextStyle(
            color: AppColorScheme().secondaryTextColor, fontFamily: "Ubuntu"),
      );
    }, loading: () {
      return CircularProgressIndicator();
    });
  }
}
