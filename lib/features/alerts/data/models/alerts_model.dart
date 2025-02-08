import 'package:flutter/material.dart';

class AlertsModel {
  final Icon icon;
  final String type;
  final String title;
  final String subtitle;

  AlertsModel({required this.icon, required this.subtitle, required this.title, required this.type});
}