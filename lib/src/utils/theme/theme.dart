import 'package:flutter/material.dart';

class TAppTheme{
  static ThemeData lightTheme = ThemeData(
  );
  static ThemeData darkTheme = ThemeData(

    brightness: Brightness.dark,
    primarySwatch: MaterialColor(0xFFFFE200,<int, Color>{
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