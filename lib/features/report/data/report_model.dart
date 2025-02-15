import 'dart:io';

class ReportModel {
  String reporterName;
  String incidentType;
  String location;
  String description;
  File? image;

  ReportModel(
      {required this.reporterName,
      required this.description,
      required this.image,
      required this.incidentType,
      required this.location});
}
