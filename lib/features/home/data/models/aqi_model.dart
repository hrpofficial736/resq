class AqiModel {
  final String? aqi;
  final String? co;
  final String? pm_10;
  final String? pm_25;
  const AqiModel(
      {required this.aqi,
      required this.co,
      required this.pm_25,
      required this.pm_10});
      
  factory AqiModel.fromJSON(Map<String, dynamic> json) {
    return AqiModel(
        aqi: "${json["data"]["aqi"]}",
        co: "${json["data"]["iaqi"]["co"]["v"]}",
        pm_25: "${json["data"]["iaqi"]["pm25"]["v"]}",
        pm_10: "${json["data"]["iaqi"]["pm10"]["v"]}");
  }
}
