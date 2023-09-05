import 'package:flutter/material.dart';

class HotelAdressButton extends StatelessWidget {
  const HotelAdressButton({
    super.key,
    required this.hotelAdress,
    required this.navigatTo,
  });

  final String hotelAdress;
  final void Function() navigatTo;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: navigatTo,
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 8),
        child: Text(
          hotelAdress,
          style: Theme.of(context).textTheme.labelMedium,
        ),
      ),
    );
  }
}
