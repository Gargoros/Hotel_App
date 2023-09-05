import 'package:flutter/material.dart';
import 'package:hotel_app/src/core/constants/app_text_constants.dart';
import 'package:hotel_app/src/core/widgets/app_text_form_field.dart';
import 'package:hotel_app/src/features/booking/presentation/widgets/registration_row.dart';

class RegistrationCard extends StatelessWidget {
  const RegistrationCard({
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
      child: Column(children: [
        RegistrationRow(registrationCardName: registrationCardName),
        const SizedBox(
          height: 20,
        ),
        const AppTextFormField(
          hintText: AppTextConst.firstName,
          labelText: AppTextConst.firstName,
        ),
        const SizedBox(
          height: 8,
        ),
        const AppTextFormField(
          hintText: AppTextConst.surName,
          labelText: AppTextConst.surName,
        ),
        const SizedBox(
          height: 8,
        ),
        const AppTextFormField(
          hintText: AppTextConst.dateOfBirth,
          labelText: AppTextConst.dateOfBirth,
        ),
        const SizedBox(
          height: 8,
        ),
        const AppTextFormField(
          hintText: AppTextConst.citizenship,
          labelText: AppTextConst.citizenship,
        ),
        const SizedBox(
          height: 8,
        ),
        const AppTextFormField(
          hintText: AppTextConst.passportNumber,
          labelText: AppTextConst.passportNumber,
        ),
        const SizedBox(
          height: 8,
        ),
        const AppTextFormField(
          hintText: AppTextConst.validityPeriodOfPassport,
          labelText: AppTextConst.validityPeriodOfPassport,
        ),
        const SizedBox(
          height: 8,
        ),
        const AppTextFormField(
          hintText: AppTextConst.dateOfBirth,
          labelText: AppTextConst.dateOfBirth,
        ),
      ]),
    );
  }
}
