
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:resq/features/home/data/models/location_model.dart';
import 'package:resq/features/home/domain/get_location.dart';


final getLocationProvider = Provider<GetLocation>((ref) => GetLocation());

final FutureProvider<LocationModel> locationProvider = FutureProvider<LocationModel>((ref) async {
  final locationFromDomainLayer = ref.read(getLocationProvider);
  return await locationFromDomainLayer.fetchLocationFromDataLayer();
});
