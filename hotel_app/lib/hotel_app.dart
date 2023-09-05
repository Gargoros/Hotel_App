import 'package:flutter/material.dart';
import 'package:hotel_app/src/config/theme/app_theme.dart';
import 'package:hotel_app/src/features/booking/presentation/pages/booking_screen.dart';
import 'package:hotel_app/src/features/hotel/presentation/pages/hotel_screen.dart';
import 'package:hotel_app/src/features/paid/presentation/pages/paid_screen.dart';
import 'package:hotel_app/src/features/room/presentation/pages/room_screen.dart';

class HotelApp extends StatelessWidget {
  HotelApp({super.key});

  final theme = AppTheme.lightTheme();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hotel App',
      theme: theme,
      // home: HotelScreen(),
      home: BookingScreen(),
      // home: RoomScreen(),
      // home: PaidScreen(),
    );
  }
}
