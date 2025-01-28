
import 'package:resq/features/home/data/models/location_model.dart';
import 'package:resq/features/home/data/repositories/location_repo.dart';

class GetLocation {
  Future<LocationModel> fetchLocationFromDataLayer () async {
    return await LocationRepo().fetchLocationFromApiService();
  }
}