import 'package:flutter/material.dart';
import 'colors.dart';

TextStyle logoStyle({
  String family = 'Dosis',
  double? size = 40,
  Color color = AppColors.primary,
  FontWeight weight = FontWeight.bold,
}) {
  return TextStyle(
    fontFamily: family,
    fontSize: size,
    fontWeight: weight,
    color: color, // Set the text color
  );
}

TextStyle headlineStyle({
  String family = 'Dosis',
  double? size = 30,
  Color color = AppColors.primary,
  FontWeight weight = FontWeight.bold,
}) {
  return TextStyle(
    fontFamily: family,
    fontSize: size,
    fontWeight: weight,
    color: color, // Set the text color
  );
}


TextStyle normalStyle({
  String family = 'Dosis',
  double? size = 20,
  Color color = AppColors.primary,
  FontWeight weight = FontWeight.normal,
}) {
  return TextStyle(
    fontFamily: family,
    fontSize: size,
    fontWeight: weight,
    color: color, // Set the text color
  );
}

TextStyle buttonStyle({
  String family = 'Dosis',
  double? size = 18,
  Color color = AppColors.secondary,
  FontWeight weight = FontWeight.normal,
}) {
  return TextStyle(
    fontFamily: family,
    fontSize: size,
    fontWeight: weight,
    color: color, // Set the text color
  );
}