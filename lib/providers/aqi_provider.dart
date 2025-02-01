
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:resq/features/home/data/models/aqi_model.dart';
import 'package:resq/features/home/data/models/location_model.dart';
import 'package:resq/features/home/domain/get_aqi.dart';

final getAqiProvider = Provider<GetAqi>((ref) => GetAqi());

final aqiProvider = FutureProvider.family<AqiModel, LocationModel>((ref, location) async {
  final aqiProvider = ref.read(getAqiProvider);
  return aqiProvider.getWeatherFromDataLayer(location.latitude, location.longitude);
});