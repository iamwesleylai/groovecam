import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
        textTheme: GoogleFonts.dosisTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: const LogoScreen(),
    );
  }
}