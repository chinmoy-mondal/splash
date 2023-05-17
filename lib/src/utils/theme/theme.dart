import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TAppTheme{
  static ThemeData lightTheme = ThemeData(

    brightness: Brightness.dark,
    textTheme: TextTheme(
        headlineLarge: GoogleFonts.montserrat(
            color: Colors.green
        ),
        headlineMedium: GoogleFonts.montserrat(
            color: Colors.green
        ),
        headlineSmall: GoogleFonts.montserrat(
            color: Colors.green
        )
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.deepPurple
      )
    ),
    primarySwatch: const MaterialColor(0xFFFFE200,<int, Color>{
      50: Color(0xFF208CBB),
      100: Color(0x338CBBFF),
      200: Color(0x4D8CBBFF),
      300: Color(0x668CBBFF),
      400: Color(0x808CBBFF),
      500: Color(0x998CBBFF),
      600: Color(0xB38CBBFF),
      700: Color(0xCC8CBBFF),
      800: Color(0xE68CBBFF),
      900: Color(0xFF8CBBFF),
    }),
  );
  static ThemeData darkTheme = ThemeData(

    brightness: Brightness.dark,
    textTheme: TextTheme(
      headlineLarge: GoogleFonts.montserrat(
        color: Colors.red
      ),
      headlineMedium: GoogleFonts.montserrat(
        color: Colors.red
      ),
      headlineSmall: GoogleFonts.montserrat(
        color: Colors.red
      )
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,foregroundColor: Colors.deepOrange
        )
    ),
    primarySwatch: const MaterialColor(0xFFFFE200,<int, Color>{
      50: Color(0x1A280BEC),
      100: Color(0x33280BEC),
      200: Color(0x4D280BEC),
      300: Color(0x66280BEC),
      400: Color(0x80280BEC),
      500: Color(0x99280BEC),
      600: Color(0xB3280BEC),
      700: Color(0xCC280BEC),
      800: Color(0xE6280BEC),
      900: Color(0xFF280BEC),
    }),
  );
}