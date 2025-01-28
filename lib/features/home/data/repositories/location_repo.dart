import 'package:resq/features/home/data/models/location_model.dart';
import 'package:resq/services/location_api_service.dart';

class LocationRepo {
  Future<LocationModel> fetchLocationFromApiService () async {
    final Map<String, dynamic> locationJson = await FetchLocationService().fetchLocation();
    return LocationModel.fromJSON(locationJson);
  }
}