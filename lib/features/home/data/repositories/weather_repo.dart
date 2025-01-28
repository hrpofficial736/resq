import 'package:resq/features/home/data/models/weather_model.dart';
import 'package:resq/services/weather_api_service.dart';

class WeatherRepo {
  Future<WeatherModel> getWeather (double latitude, double longitude) async {
    final Map<String, dynamic>? weatherJson = await FetchWeatherFromApi().fetchWeather(latitude, longitude);
    return WeatherModel.fromJSON(weatherJson ?? {});
  }
}