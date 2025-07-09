import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ColorManager {
  static const Color primary = Color(0xFF131313);
  static const Color secondary = Color(0xFF565951);
  static const Color background = Color(0xFFF1F5E6);
  static const Color cardBackground = Color(0xFFF1F1EE);
  static const Color white = Colors.white;
  static const Color black = Colors.black;
  static const Color error = Colors.redAccent;
  static const Color success = Color(0xFF4CAF50);
  static const Color warning = Colors.amber;
}

class ThemeManager {
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: ColorManager.background,
    colorScheme: const ColorScheme.light(
      primary: ColorManager.primary,
      secondary: ColorManager.secondary,
      surface: ColorManager.cardBackground,
      error: ColorManager.error,
    ),
    textTheme: GoogleFonts.poppinsTextTheme().copyWith(
      headlineLarge: GoogleFonts.poppins(
        fontSize: 26,
        fontWeight: FontWeight.bold,
      ),
      titleMedium: GoogleFonts.poppins(
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      bodyMedium: GoogleFonts.poppins(fontSize: 14),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: ColorManager.primary,
      foregroundColor: ColorManager.white,
      elevation: 0,
      centerTitle: true,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorManager.primary,
        foregroundColor: ColorManager.white,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        textStyle: GoogleFonts.poppins(fontWeight: FontWeight.w600),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      filled: true,
      fillColor: ColorManager.cardBackground,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      labelStyle: TextStyle(color: ColorManager.secondary),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.primary),
      ),
    ),
    snackBarTheme: const SnackBarThemeData(
      backgroundColor: ColorManager.primary,
      contentTextStyle: TextStyle(color: Colors.white),
      behavior: SnackBarBehavior.floating,
    ),
    cardTheme: const CardThemeData(
      color: ColorManager.cardBackground,
      elevation: 3,
      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    ),
    iconTheme: const IconThemeData(color: ColorManager.primary),
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: ColorManager.primary,
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    colorScheme: const ColorScheme.dark(
      primary: ColorManager.primary,
      secondary: ColorManager.secondary,
      surface: Colors.grey,
      error: ColorManager.error,
    ),
    textTheme: GoogleFonts.poppinsTextTheme(ThemeData.dark().textTheme),
    appBarTheme: const AppBarTheme(
      backgroundColor: ColorManager.primary,
      foregroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorManager.primary,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        textStyle: GoogleFonts.poppins(fontWeight: FontWeight.w600),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      filled: true,
      fillColor: ColorManager.secondary,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      labelStyle: TextStyle(color: ColorManager.cardBackground),
    ),
    snackBarTheme: const SnackBarThemeData(
      backgroundColor: ColorManager.secondary,
      contentTextStyle: TextStyle(color: Colors.white),
      behavior: SnackBarBehavior.floating,
    ),
    cardTheme: const CardThemeData(
      color: ColorManager.secondary,
      elevation: 3,
      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    ),
    iconTheme: const IconThemeData(color: ColorManager.cardBackground),
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: ColorManager.cardBackground,
    ),
  );
}
