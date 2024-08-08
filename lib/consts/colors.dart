import 'package:flutter/material.dart';

class AppColors {
  // Simple color constants
  static const Color primary = Color(0xFFFA9F42); // Light Orange
  static const Color secondary = Color(0xFF5D0605); // Dark Red

  // Custom MaterialColor for Light Orange (Primary Swatch)
  static const int _primaryValue = 0xFFFA9F42;

  static const MaterialColor primarySwatch = MaterialColor(
    _primaryValue,
    <int, Color>{
      50: Color(0xFFFFE0B2), // Lightest shade
      100: Color(0xFFFFCC80), // Lighter shade
      200: Color(0xFFFFB74D), // Light shade
      300: Color(0xFFFFA726), // Medium light shade
      400: Color(0xFFFF9800), // Medium shade
      500: Color(_primaryValue), // Primary color
      600: Color(0xFFF57C00), // Medium dark shade
      700: Color(0xFFEF6C00), // Dark shade
      800: Color(0xFFE65100), // Darker shade
      900: Color(0xFFE64A19), // Darkest shade
    },
  );

  // Custom MaterialColor for Dark Red (Secondary Swatch)
  static const int _secondaryValue = 0xFF5D0605;

  static const MaterialColor secondarySwatch = MaterialColor(
    _secondaryValue,
    <int, Color>{
      50: Color(0xFFFAE5E5), // Lightest shade
      100: Color(0xFFF5C2C2), // Lighter shade
      200: Color(0xFFF09A9A), // Light shade
      300: Color(0xFFEB7070), // Medium light shade
      400: Color(0xFFE84D4D), // Medium shade
      500: Color(_secondaryValue), // Primary color
      600: Color(0xFF5B0505), // Medium dark shade
      700: Color(0xFF4E0404), // Dark shade
      800: Color(0xFF420303), // Darker shade
      900: Color(0xFF3A0202), // Darkest shade
    },
  );
}