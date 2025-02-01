
import 'dart:convert';

import 'package:resq/features/home/data/models/aqi_model.dart';
import 'package:resq/services/air_quality_api_service.dart';

class AqiRepo {
  Future<AqiModel> getAqiFromApi (double latitude, double longitude) async {
    final aqiResponse = await AirQualityApiService().fetchAqi(latitude, longitude);
    return AqiModel.fromJSON(jsonDecode(aqiResponse));
  }
}