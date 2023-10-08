import 'package:flutter/material.dart';
import 'package:skygoal/core/config/app_style.dart';

class AppTheme {
  static ThemeData lightAppTheme = ThemeData(
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      textTheme:const TextTheme(
          titleLarge: headLine1,
          titleMedium: headLine2,
          headlineLarge: headLineLarge,
          labelMedium: labelMedium,
          bodySmall: bodyText,
          bodyMedium: bodyTextMedium,
          labelSmall: hintStyle,
          displaySmall: labelText
          ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: elvatedPrimaryButtonStyle,
      ));
}
