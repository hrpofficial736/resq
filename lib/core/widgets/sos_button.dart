import 'package:flutter/material.dart';
import 'package:resq/core/constants/color_scheme.dart';
import 'package:resq/core/constants/emergency_contacts.dart';
import 'package:url_launcher/url_launcher.dart';

class SosButton extends StatefulWidget {
  double radius;
  SosButton({super.key, required this.radius});
  @override
  State<SosButton> createState () => _SosButtonState();
}

class _SosButtonState extends State<SosButton> with SingleTickerProviderStateMixin{
  
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    // Initialize the animation controller
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1), // Pulse duration
    )..repeat(reverse: true);

    // Create an animation from 0.8 to 1.2 scale
    _animation = Tween<double>(begin: 1.18, end: 1.2).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Transform.scale(
          scale: _animation.value, // Scale the button
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: RadialGradient(
                colors: [
                  Colors.redAccent.shade200,
                  Colors.red.shade900,
                ],
                center: Alignment.center,
              ),
              boxShadow: [
                BoxShadow(
                  color: AppColorScheme().warningIndicatorColor,
                  blurRadius: 30 * _animation.value, // Pulsing glow
                  spreadRadius: 3 * _animation.value,
                ),
              ],
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColorScheme().primaryBackgroundColor, // Button background
                shape: CircleBorder(),
                padding: EdgeInsets.all(widget.radius), // Adjust size
                elevation: 0, // Remove shadow of ElevatedButton
              ),
              onPressed: () async {
                final Uri phoneNumber = Uri.parse('tel:${EmergencyContacts().contacts[0].number}');
                if (await canLaunchUrl(phoneNumber)) {
                  await launchUrl(phoneNumber);
                } else {
                  throw 'Could not launch $phoneNumber';
                }
              },
              child: Text(
                "SOS",
                style: TextStyle(
                  color: AppColorScheme().primaryTextColor,
                  fontFamily: "Poppins",
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

