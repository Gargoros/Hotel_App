import 'package:flutter/material.dart';

class HotelNameRow extends StatelessWidget {
  const HotelNameRow({
    super.key,
    required this.hotelName,
  });

  final String hotelName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Text(
        hotelName,
        style: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }
}
