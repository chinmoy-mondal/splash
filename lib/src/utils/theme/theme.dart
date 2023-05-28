import 'package:flutter/material.dart';
import 'package:splash/src/utils/theme/widget_themes/elevated_button_theme.dart';
import 'package:splash/src/utils/theme/widget_themes/outlined_button_theme.dart';
import 'package:splash/src/utils/theme/widget_themes/test_theme.dart';

class TAppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: TTextTheme.lightTextTheme,
    outlinedButtonTheme: TOutlineButtonTheme.lightOutlineButtonTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonThem
  );
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: TTextTheme.darkTextTheme,
    outlinedButtonTheme: TOutlineButtonTheme.darkOutlineButtonTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonThem
  );
}
