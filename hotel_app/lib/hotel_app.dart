import 'package:flutter/material.dart';
import 'package:hotel_app/src/config/router/app_router.dart';
import 'package:hotel_app/src/config/theme/app_theme.dart';

class HotelApp extends StatelessWidget {
  HotelApp({super.key});

  final theme = AppTheme.lightTheme();
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
      debugShowCheckedModeBanner: false,
      title: 'Hotel App',
      theme: theme,
    );
  }
}
