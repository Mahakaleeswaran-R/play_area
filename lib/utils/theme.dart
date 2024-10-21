import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle baseStyleLight = GoogleFonts.playfairDisplay(
    fontWeight: FontWeight.w900, color: Colors.black);

TextStyle baseStyleDark = GoogleFonts.playfairDisplay(
    fontWeight: FontWeight.w900, color: Colors.white);

const Color primaryColor = Colors.green;

const int primaryColor_200 = 0xFFA5D6A7;

TextTheme textTheme(TextStyle baseStyle) {
  return TextTheme(
    displayLarge: baseStyle.copyWith(fontSize: 32),
    displayMedium: baseStyle.copyWith(fontSize: 28),
    displaySmall: baseStyle.copyWith(fontSize: 24),
    headlineMedium: baseStyle.copyWith(fontSize: 20),
    headlineSmall: baseStyle.copyWith(fontSize: 18),
    titleLarge: baseStyle.copyWith(fontSize: 16),
    titleMedium: baseStyle.copyWith(fontSize: 16),
    titleSmall: baseStyle.copyWith(fontSize: 14),
    bodyLarge: baseStyle.copyWith(fontSize: 16),
    bodyMedium: baseStyle.copyWith(fontSize: 14),
    bodySmall: baseStyle.copyWith(fontSize: 12),
    labelLarge: baseStyle.copyWith(fontSize: 14),
  );
}

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  textTheme: textTheme(baseStyleLight),
);

ThemeData darkTheme =
    ThemeData(brightness: Brightness.dark, textTheme: textTheme(baseStyleDark));

Color buttonColor = Colors.white;
