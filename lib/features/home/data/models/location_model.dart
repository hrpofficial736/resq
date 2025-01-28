
class LocationModel {
  final double latitude;
  final double longitude;
  final Map<String, dynamic> addressFromCoordinates;

  LocationModel({required this.latitude, required this.longitude, required this.addressFromCoordinates});

  factory LocationModel.fromJSON(Map<String, dynamic> json) {
    return LocationModel(latitude: json["latitude"], longitude: json["longitude"], addressFromCoordinates: json["addressFromCoordinates"]);
  }
}