class WeatherModel {
  final String? description;
  final String? temperature;

  WeatherModel({required this.description, required this.temperature});

  factory WeatherModel.fromJSON (Map<String, dynamic> json) {
    double incomingTemp = (json["main"]["temp"] - 273.0);
    return WeatherModel(description: json["weather"][0]["description"], temperature: incomingTemp.toStringAsFixed(2));
  }

}