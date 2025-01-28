import 'package:resq/features/home/data/models/weather_model.dart';
import 'package:resq/features/home/data/repositories/weather_repo.dart';

class GetWeather {
  Future<WeatherModel> getWeatherFromDataLayer (double latitude, double longitude) async {
    if (latitude < -90 ||
        latitude > 90 ||
        longitude < -180 ||
        longitude > 180) {
      throw Exception("Invalid coordinates");
    }
    return await WeatherRepo().getWeather(latitude, longitude);
  }
}