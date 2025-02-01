import 'package:resq/features/home/data/models/aqi_model.dart';
import 'package:resq/features/home/data/repositories/aqi_repo.dart';

class GetAqi {
  Future<AqiModel> getWeatherFromDataLayer(
      double latitude, double longitude) async {
    if (latitude < -90 ||
        latitude > 90 ||
        longitude < -180 ||
        longitude > 180) {
      throw Exception("Invalid coordinates");
    }
    return await AqiRepo().getAqiFromApi(latitude, longitude);
  }
}