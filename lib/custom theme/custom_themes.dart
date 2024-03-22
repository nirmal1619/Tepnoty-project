import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
    textTheme: TextTheme(
      // Apply Lexend font to all text styles

      displayLarge: GoogleFonts.lexend(
        textStyle: TextStyle(color: Colors.white, fontSize: 34),
      ),
      displayMedium: GoogleFonts.lexend(
        textStyle: TextStyle(
          fontSize: 24,
          color: Colors.white,
        ),
      ),
      displaySmall: GoogleFonts.lexend(
        textStyle: TextStyle(color: Colors.white, fontSize: 18),
      ),
      headlineMedium: GoogleFonts.lexend(
        textStyle: TextStyle(color: Colors.white, fontSize: 16),
      ),
      headlineSmall: GoogleFonts.lexend(
        textStyle: TextStyle(
          color: Colors.white,
          fontSize: 12,
        ),
      ),
      titleLarge: GoogleFonts.lexend(
        textStyle: TextStyle(
          color: Colors.white,
        ),
      ),
      titleMedium: GoogleFonts.lexend(
        textStyle: TextStyle(
          color: Colors.white,
        ),
      ),
      titleSmall: GoogleFonts.lexend(
        textStyle: TextStyle(
          color: Colors.white,
        ),
      ),
      bodyLarge: GoogleFonts.lexend(
        textStyle: TextStyle(
          color: Colors.white,
        ),
      ),
      bodyMedium: GoogleFonts.lexend(
        textStyle: TextStyle(
          color: Colors.white,
        ),
      ),
      bodySmall: GoogleFonts.lexend(
        textStyle: TextStyle(
          color: Colors.white,
        ),
      ),
      labelLarge: GoogleFonts.lexend(
        textStyle: TextStyle(
          color: Colors.white,
        ),
      ),
      labelSmall: GoogleFonts.lexend(
        textStyle: TextStyle(
          color: Colors.white,
        ),
      ),
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
