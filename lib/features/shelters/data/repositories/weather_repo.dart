import 'package:resq/features/shelters/data/models/weather_model.dart';
import 'package:resq/features/shelters/data/services/weather_api_service.dart';

class WeatherRepo {
  final FetchWeatherFromApi weatherFromApi;
  WeatherRepo(this.weatherFromApi);
  Future<WeatherModel> getWeather (double latitude, double longitude) async {
    final Map<String, dynamic>? weatherJson = await weatherFromApi.fetchWeather(latitude, longitude);
    return WeatherModel.fromJSON(weatherJson ?? {});
  }
}