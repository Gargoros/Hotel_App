import 'package:flutter/material.dart';
import 'package:hotel_app/src/config/theme/app_text_theme.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme() {
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: const Color(0xFFFFFFFF),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
      ),
      textTheme: AppTextTheme.lightTextTheme(),
      colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: const Color(0xFF0D72FF),
      ),
    );
  }
}
