import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TTextTheme {
  TTextTheme._();
  static TextTheme lightTextTheme = TextTheme(
      headlineLarge: GoogleFonts.montserrat(color: Colors.black45),
      headlineMedium: GoogleFonts.montserrat(color: Colors.black87),
      headlineSmall: GoogleFonts.montserrat(color: Colors.black));
  static TextTheme darkTextTheme = TextTheme(
      headlineLarge: GoogleFonts.montserrat(color: Colors.white),
      headlineMedium: GoogleFonts.montserrat(color: Colors.white60),
      headlineSmall: GoogleFonts.montserrat(color: Colors.white12));
}
