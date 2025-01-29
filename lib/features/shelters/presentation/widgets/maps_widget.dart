import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:resq/core/constants/color_scheme.dart';
import 'package:resq/features/home/data/models/location_model.dart';
import 'package:resq/providers/location_provider.dart';

class MapsWidget extends ConsumerWidget {
  const MapsWidget({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<LocationModel> location = ref.watch(locationProvider);
    return location.when(data: (LocationModel location) {
      return Align(alignment: Alignment.center, child: Container(
        width: 380,
        height: 500,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            border: Border.all(color: AppColorScheme().warningIndicatorColor)),
        child: ClipRRect(borderRadius: BorderRadius.circular(20.0), child: FlutterMap(
            options: MapOptions(
                initialCenter: LatLng(location.latitude, location.longitude),
                initialZoom: 15.0),
            children: [
              TileLayer(
                urlTemplate:
                    "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                subdomains: ['a', 'b', 'c'],
              ),
              MarkerLayer(markers: [
                Marker(
                  point: LatLng(location.latitude, location.longitude),
                  child: const Icon(Icons.location_pin,
                      color: Colors.red, size: 40),
                )
              ])
            ]),
      )));
    }, error: (Object object, StackTrace trace) {
      return Center(child: Text("Error displaying the map!"));
    }, loading: () {
      return Center(child: CircularProgressIndicator());
    });
  }
}
