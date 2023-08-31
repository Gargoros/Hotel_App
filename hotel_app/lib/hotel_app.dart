import 'package:flutter/material.dart';
import 'package:hotel_app/src/config/theme/app_theme.dart';

class HotelApp extends StatelessWidget {
  HotelApp({super.key});

  final theme = AppTheme.lightTheme();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hotel App',
      theme: theme,
    );
  }
}
