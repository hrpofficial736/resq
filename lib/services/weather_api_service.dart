import 'package:resq/core/secrets/weather_api_key.dart';
import 'package:weather/weather.dart';

class FetchWeatherFromApi {
  final WeatherFactory weatherFactory = WeatherFactory(AppSecrets().weatherApiKey);
  Future<Map<String, dynamic>?> fetchWeather (double latitude, double longitude) async {
    final Weather response = await weatherFactory.currentWeatherByLocation(latitude, longitude);
    return response.toJson();
  }
}