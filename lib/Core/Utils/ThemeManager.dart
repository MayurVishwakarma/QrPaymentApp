import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ColorManager {
  static const Color primary = Color(0xFF131313);
  static const Color secondary = Color(0xFF565951);
  static const Color background = Color(0xFFF1F5E6);
  static const Color cardBackground = Color(0xFFF1F1EE);
  static const Color white = Colors.white;
  static const Color black = Colors.black;
}

class ThemeManager {
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: ColorManager.background,
    textTheme: GoogleFonts.poppinsTextTheme(),
    colorScheme: const ColorScheme.light(
      primary: ColorManager.primary,
      secondary: ColorManager.secondary,
      surface: ColorManager.background,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: ColorManager.primary,
      foregroundColor: ColorManager.white,
      elevation: 0,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorManager.primary,
        foregroundColor: ColorManager.white,
        textStyle: GoogleFonts.poppins(fontWeight: FontWeight.w600),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      filled: true,
      fillColor: ColorManager.cardBackground,
      border: OutlineInputBorder(),
      labelStyle: TextStyle(color: ColorManager.secondary),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    textTheme: GoogleFonts.poppinsTextTheme(ThemeData.dark().textTheme),
    colorScheme: const ColorScheme.dark(
      primary: ColorManager.primary,
      secondary: ColorManager.secondary,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: ColorManager.primary,
      foregroundColor: Colors.white,
    ),
  );
}
