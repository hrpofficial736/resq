import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

class FetchLocationService {
  
  final LocationSettings locationSettings = LocationSettings(
    accuracy: LocationAccuracy.best,
    distanceFilter: 100
  );
  Future<Map<String, dynamic>> fetchLocation () async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      print("service disabled!");
    }

    // Check location permissions
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      // Request permission
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // User denied the permission
        print("permission denied!");
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are permanently denied
      print("permission denied forever!");
    }
    Position position = await Geolocator.getCurrentPosition(locationSettings: locationSettings);
    List<Placemark> placeMarks = await placemarkFromCoordinates(position.latitude, position.longitude);
    return {
      "latitude": position.latitude,
      "longitude": position.longitude,
      "addressFromCoordinates": {
      "locality": placeMarks[0].locality,
      "country": placeMarks[0].country
    }
    };
  }
}