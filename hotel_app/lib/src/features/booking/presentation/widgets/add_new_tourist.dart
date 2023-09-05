import 'package:flutter/material.dart';
import 'package:hotel_app/src/features/booking/presentation/widgets/registration_row.dart';

class AddNewTourist extends StatelessWidget {
  const AddNewTourist({
    super.key,
    required this.registrationCardName,
  });

  final String registrationCardName;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.all(16),
      child: RegistrationRow(registrationCardName: registrationCardName),
    );
  }
}
