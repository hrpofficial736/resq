import 'package:resq/features/shelters/data/models/weather_model.dart';
import 'package:resq/features/shelters/data/repositories/weather_repo.dart';

class GetWeather {
  final WeatherRepo weatherRepo;
  GetWeather(this.weatherRepo);

  Future<WeatherModel> getWeatherFromDataLayer (double latitude, double longitude) async {
    if (latitude < -90 ||
        latitude > 90 ||
        longitude < -180 ||
        longitude > 180) {
      throw Exception("Invalid coordinates");
    }
    return await weatherRepo.getWeather(latitude, longitude);
  }
}