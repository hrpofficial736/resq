class WeatherModel {
  final String? description;
  final double temperature;

  WeatherModel({required this.description, required this.temperature});

  factory WeatherModel.fromJSON (Map<String, dynamic> json) {
    return WeatherModel(description: json["description"], temperature: json["temperature"]);
  }

}