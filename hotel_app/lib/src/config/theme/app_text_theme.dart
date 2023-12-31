import 'package:flutter/material.dart';

class AppTextTheme {
  AppTextTheme._();
  static TextTheme lightTextTheme() {
    return TextTheme(
      // hotel name, description, order
      titleLarge: const TextStyle(
        color: Color(0xFF000000),
        fontSize: 22,
        fontFamily: 'SF-Pro-Display',
        fontWeight: FontWeight.w500,
        height: 1.20,
      ),
      // appbar title
      titleMedium: const TextStyle(
        color: Color(0xFF000000),
        fontSize: 18,
        fontFamily: 'SF-Pro-Display',
        fontWeight: FontWeight.w500,
        height: 1.20,
      ),
      // score
      titleSmall: const TextStyle(
        color: Color(0xFFFFA800),
        fontSize: 16,
        fontFamily: 'SF-Pro-Display',
        fontWeight: FontWeight.w500,
        height: 1.20,
      ),
      // price
      bodyLarge: const TextStyle(
        color: Color(0xFF000000),
        fontSize: 30,
        fontFamily: 'SF-Pro-Display',
        fontWeight: FontWeight.w600,
        height: 1.20,
      ),
      // description medium grey
      bodyMedium: const TextStyle(
        color: Color(0xFF828796),
        fontSize: 16,
        fontFamily: 'SF-Pro-Display',
        fontWeight: FontWeight.w500,
        height: 1.20,
      ),
      bodySmall: TextStyle(
        color: Colors.black.withOpacity(0.8999999761581421),
        fontSize: 16,
        fontFamily: 'SF-Pro-Display',
        fontWeight: FontWeight.w400,
        height: 1.20,
      ),
      //
      displayLarge: const TextStyle(
        color: Color(0xFF2C3035),
        fontSize: 16,
        fontFamily: 'SF-Pro-Display',
        fontWeight: FontWeight.w500,
        height: 1.20,
      ),
      displayMedium: const TextStyle(
        color: Color(0xFF828696),
        fontSize: 14,
        fontFamily: 'SF-Pro-Display',
        fontWeight: FontWeight.w500,
        height: 1.20,
      ),
      displaySmall: const TextStyle(
        color: Color(0xFF828796),
        fontSize: 16,
        fontFamily: 'SF-Pro-Display',
        fontWeight: FontWeight.w400,
        height: 1.20,
      ),
      labelLarge: const TextStyle(
        color: Color(0xFFFFFFFF),
        fontSize: 16,
        fontFamily: 'SF Pro Display',
        fontWeight: FontWeight.w500,
        height: 1.10,
        letterSpacing: 0.10,
      ),
      labelMedium: const TextStyle(
        color: Color(0xFF0D72FF),
        fontSize: 14,
        fontFamily: 'SF-Pro-Display',
        fontWeight: FontWeight.w500,
        height: 1.20,
      ),
      labelSmall: const TextStyle(
        color: Color(0xFF0D72FF),
        fontSize: 16,
        fontFamily: 'SF-Pro-Display',
        fontWeight: FontWeight.w500,
        height: 1.20,
      ),
      headlineSmall: const TextStyle(
        color: Color(0xFFA8ABB6),
        fontSize: 12,
        fontFamily: 'SF-Pro-Display',
        fontWeight: FontWeight.w400,
        height: 1.20,
        letterSpacing: 0.12,
      ),
      headlineMedium: const TextStyle(
        color: Color(0xFF14132A),
        fontSize: 16,
        fontFamily: 'SF-Pro-Display',
        fontWeight: FontWeight.w400,
        height: 1.10,
        letterSpacing: 0.75,
      ),
      headlineLarge: const TextStyle(
        color: Color(0xFFA8ABB6),
        fontSize: 17,
        fontFamily: 'SF-Pro-Display',
        fontWeight: FontWeight.w400,
        height: 1.20,
        letterSpacing: 0.17,
      ),
    );
  }
}
