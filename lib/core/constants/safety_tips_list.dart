import 'package:flutter_svg/flutter_svg.dart';

List<Map<String, dynamic>> safetyTips = [
  {
    "title": "Stay Calm & Stay Safe",
    "subtitle":
        "In an emergency, remain calm and follow safety guidelines to protect yourself and others.",
    "image": SvgPicture.asset(
      "lib/assets/icons/calm.svg",
      width: 100,
      height: 100,
    )
  },
  {
    "title": "Follow Official Alerts",
    "subtitle":
        "Trust only verified emergency updates and alerts. Avoid misinformation and rumors.",
    "image": SvgPicture.asset(
      "lib/assets/icons/alerts.svg",
      width: 100,
      height: 100,
    )
  },
  {
    "title": "Keep Your Emergency Kit Ready",
    "subtitle":
        "Ensure you have essential supplies like food, water, a flashlight, and first aid supplies.",
    "image": SvgPicture.asset(
      "lib/assets/icons/kit.svg",
      width: 100,
      height: 100,
    )
  },
  {
    "title": "Know Your Evacuation Plan",
    "subtitle":
        "Familiarize yourself with nearby shelters and safe routes in case you need to evacuate.",
    "image": SvgPicture.asset(
      "lib/assets/icons/location.svg",
      width: 100,
      height: 100,
    )
  },
  {
    "title": "Stay Connected",
    "subtitle":
        "Keep your phone charged, inform loved ones of your status, and use emergency contacts if needed.",
    "image": SvgPicture.asset(
      "lib/assets/icons/communication.svg",
      width: 100,
      height: 100,
    )
  }
];
