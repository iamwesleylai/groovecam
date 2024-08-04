import 'package:flutter/material.dart';
import 'home_page.dart';

class LogoScreen extends StatefulWidget {
  const LogoScreen({super.key});

  @override
  State<LogoScreen> createState() => LogoScreenState();
}

class LogoScreenState extends State<LogoScreen> with SingleTickerProviderStateMixin{

  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    // Create an animation controller that lasts for 2 seconds
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    
    
    // Start the animation after a delay
    Future.delayed(const Duration(seconds: 2), () {
      _controller.forward().then((_) => _navigateToHome());
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }


  void _navigateToHome() async {
    await Future.delayed(const Duration(seconds: 1));
    if (!mounted) return;
    Navigator.pushReplacement(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => const HomePage(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(opacity: animation, child: child);
        },
        transitionDuration: const Duration(milliseconds: 600),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF5D0605),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Image.asset(
                'assets/groovecam_logo.png',
                width: 175,
                height: 175,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 40), // Adds padding from the bottom
            child: Text(
              'GrooveCam',
              style: TextStyle(
                fontFamily: 'Dosis',
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Color(0xFFFA9F42),
              ),
            ),
          ),
        ],
      ),
    );
  }
}