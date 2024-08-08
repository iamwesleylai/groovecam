import 'package:flutter/material.dart';
import 'package:groovecam_app/consts/colors.dart';
import 'package:groovecam_app/consts/text_style.dart';

class LogoScreen extends StatefulWidget {
  const LogoScreen({super.key});

  @override
  State<LogoScreen> createState() => LogoScreenState();
}

class LogoScreenState extends State<LogoScreen> with SingleTickerProviderStateMixin {
  
  // Declare an AnimationController to manage the animation
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    
    // Initialize the AnimationController with a duration of 2 seconds
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this, // Use this widget as the TickerProvider
    );

    // Start the animation after a delay of 2 seconds
    Future.delayed(const Duration(seconds: 2), () {
      // Forward the animation and navigate to HomePage after completion
      _controller.forward().then((_) => _navigateToHome());
    });
  }

  @override
  void dispose() {
    // Dispose of the AnimationController to free up resources
    _controller.dispose();
    super.dispose();
  }

  // Navigate to the HomePage using a named route
  void _navigateToHome() async {
    // Wait for an additional 1 second before navigation
    await Future.delayed(const Duration(seconds: 1));
    // Check if the widget is still mounted before navigating
    if (!mounted) return;
    // Replace the current screen with HomePage using the named route
    Navigator.pushReplacementNamed(context, '/home');
  }

  @override
  Widget build(BuildContext context) {
    // Build the UI for the LogoScreen
    return Scaffold(
      backgroundColor: AppColors.secondary, // Set the background color
      body: Stack(
        children: [
          Expanded(
            child: Center(
              child: Image.asset(
                'assets/groovecam_logo.png', // Display the logo image
                width: 175,
                height: 175,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 40), // Add padding from the bottom
              child: Text(
                'GrooveCam', // Display the app name
                style: logoStyle(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}