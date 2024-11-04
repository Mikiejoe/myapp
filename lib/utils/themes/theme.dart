import 'package:flutter/material.dart';

final ThemeData expenseTrackerTheme = ThemeData(
  primaryColor: const Color(0xFF00796B), // Teal
  primaryColorLight: const Color(0xFF1E88E5),  // Light Gray
  scaffoldBackgroundColor: const Color(0xFFF5F5F5),  // Alert Color (Orange)

  textTheme: const TextTheme(
    bodyLarge: TextStyle(
      color: Color(0xFF212121), // Dark Gray Text
      fontSize: 16,
      fontWeight: FontWeight.normal,
    ),
    bodyMedium: TextStyle(
      color: Color(0xFF333333), // Alternative Dark Gray Text
      fontSize: 14,
      fontWeight: FontWeight.normal,
    ),
    headlineLarge: TextStyle(
      color: Color(0xFF00796B), // Teal for Headings
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
    headlineMedium: TextStyle(
      color: Colors.white, // Button text color
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
  ),

  appBarTheme: const AppBarTheme(
    color: Color(0xFF00796B), // Teal for AppBar
    iconTheme: IconThemeData(color: Colors.white), // White icons
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  ),

  buttonTheme: const ButtonThemeData(
    buttonColor: Color(0xFF66BB6A), // Green button color
    textTheme: ButtonTextTheme.primary, // Text color will be white
  ),

  // Define styles for alerts
  inputDecorationTheme: const InputDecorationTheme(
    errorStyle: TextStyle(
      color: Color(0xFFE53935), // Red for errors
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Color(0xFF00796B)), // Teal border
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Color(0xFF1E88E5)), // Blue border
    ),
  ),
);
