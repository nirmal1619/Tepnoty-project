import 'package:flutter/material.dart';

class CustomTheme {
  static final ThemeData darkMode = ThemeData.dark().copyWith(
    primaryColor: const Color(0xFF8547DA),
    scaffoldBackgroundColor: Colors.black54, // Black with 54% opacity
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
    appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: Colors.white, size: 24),
        backgroundColor: Colors.transparent,
        titleTextStyle: TextStyle(
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.w500,
            // wordSpacing: 1.5,
            height: 1.4,
            letterSpacing: 1.3)),

    hintColor: const Color(0xFF6E6E6E),
    textTheme: const TextTheme(
      // Apply Lexend font to all text styles

      displayLarge: TextStyle(fontFamily: 'Lexend', color: Colors.white),
      displayMedium: TextStyle(fontFamily: 'Lexend', color: Colors.white),
      displaySmall: TextStyle(fontFamily: 'Lexend', color: Colors.white),
      headlineMedium: TextStyle(fontFamily: 'Lexend', color: Colors.white),
      headlineSmall: TextStyle(fontFamily: 'Lexend', color: Colors.white),
      titleLarge: TextStyle(fontFamily: 'Lexend', color: Colors.white),
      titleMedium: TextStyle(fontFamily: 'Lexend', color: Colors.white),
      titleSmall: TextStyle(fontFamily: 'Lexend', color: Colors.white),
      bodyLarge: TextStyle(fontFamily: 'Lexend', color: Colors.white),
      bodyMedium: TextStyle(fontFamily: 'Lexend', color: Colors.white),
      bodySmall: TextStyle(fontFamily: 'Lexend', color: Colors.white),
      labelLarge: TextStyle(fontFamily: 'Lexend', color: Colors.white),
      labelSmall: TextStyle(fontFamily: 'Lexend', color: Colors.white),
    ),
    dialogTheme: DialogTheme(
      backgroundColor: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
    ),

    listTileTheme:
        const ListTileThemeData(titleAlignment: ListTileTitleAlignment.top),

    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderSide:
            const BorderSide(color: Colors.white), // Set border color here
        borderRadius: BorderRadius.circular(12),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        iconColor: MaterialStateProperty.all<Color>(Colors.white),
        alignment: Alignment.centerLeft,
        foregroundColor: MaterialStateProperty.all<Color>(
            Colors.white), // Set text color to white
      ),
    ),
  );
}
