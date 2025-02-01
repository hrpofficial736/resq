class WeatherModel {
  final String? description;
  final String? temperature;
  final String? feelsLike;
  final String? humidity;
  final String? windSpeed;

  WeatherModel(
      {required this.description,
      required this.temperature,
      this.feelsLike,
      this.humidity,
      this.windSpeed});

  factory WeatherModel.fromJSON(Map<String, dynamic> json) {
    double incomingTemp = (json["main"]["temp"] - 273.0);
    double incomingFeelsLike = (json["main"]["feels_like"] - 273.0);
    return WeatherModel(
        description: json["weather"][0]["description"],
        temperature: incomingTemp.toStringAsFixed(2),
        feelsLike: incomingFeelsLike.toStringAsFixed(2),
        humidity:"${json["main"]["humidity"]} %",
        windSpeed: "${json["wind"]["speed"]} km/h");
  }
}
