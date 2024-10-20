import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle baseStyle = GoogleFonts.playfairDisplay(fontWeight: FontWeight.w900);

const Color primaryColor = Colors.green;

TextTheme textTheme = TextTheme(
    displayLarge: baseStyle.copyWith( fontSize: 32),
    displayMedium: baseStyle.copyWith( fontSize: 28),
    displaySmall: baseStyle.copyWith( fontSize: 24),
    headlineMedium: baseStyle.copyWith( fontSize: 20),
    headlineSmall: baseStyle.copyWith( fontSize: 18),
    titleLarge: baseStyle.copyWith( fontSize: 16),
    titleMedium: baseStyle.copyWith( fontSize: 16),
    titleSmall: baseStyle.copyWith( fontSize: 14),
    bodyLarge: baseStyle.copyWith( fontSize: 16),
    bodyMedium: baseStyle.copyWith( fontSize: 14),
    bodySmall: baseStyle.copyWith( fontSize: 12),
    labelLarge: baseStyle.copyWith( fontSize: 14),
);

ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: primaryColor,
    textTheme: textTheme,
);

ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: primaryColor,
    textTheme: textTheme 
);
