import 'package:dio/dio.dart';
import 'package:resq/core/secrets/weather_api_key.dart';
import 'package:resq/services/network_client.dart';

class AirQualityApiService {
  Future<String> fetchAqi (double latitude, double longitude) async {
    final response = await DioNetworkClient().dio.get("${AppSecrets().aqiApiUri}geo:$latitude;$longitude/", queryParameters: {
      "token": AppSecrets().aqiApiKey
    },  options: Options(responseType: ResponseType.json));
    return response.toString();
  }
}