import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:resq/features/home/data/models/location_model.dart';
import 'package:resq/features/home/data/models/weather_model.dart';
import 'package:resq/features/home/domain/get_weather.dart';

final getWeatherProvider = Provider<GetWeather>((ref) => GetWeather());


final weatherProvider = FutureProvider.family<WeatherModel, LocationModel>((ref, location) async {
  final weatherFromDomainLayer = ref.read(getWeatherProvider);
  return weatherFromDomainLayer.getWeatherFromDataLayer(location.latitude, location.longitude);
});