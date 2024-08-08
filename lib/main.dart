import 'package:flutter/material.dart';
import 'home_page.dart';
import 'audioplayer_page.dart';
import 'logo_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GrooveCam',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      // Set the initial route to the LogoScreen
      initialRoute: '/logo',
      onGenerateRoute: (settings) {
        if (settings.name == '/home') {
          return PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) => const HomePage(),
            transitionsBuilder: (context, animation, secondaryAnimation, child) {
              return FadeTransition(opacity: animation, child: child);
            },
            transitionDuration: const Duration(milliseconds: 600),
          );
        }
        // Handle other routes here
        return null;
      },
      routes: {
        '/logo': (context) => const LogoScreen(), // Add LogoScreen route
        '/audio_player': (context) => const AudioPlayerPage(),
      },
    );
  }
}