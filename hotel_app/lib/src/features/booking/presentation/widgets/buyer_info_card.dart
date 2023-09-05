import 'package:flutter/material.dart';
import 'package:hotel_app/src/core/constants/app_text_constants.dart';
import 'package:hotel_app/src/core/widgets/app_text_form_field.dart';

class BuyerInfoCard extends StatelessWidget {
  const BuyerInfoCard({
    super.key,
    required this.labelText,
    required this.buyerPhoneNumber,
  });

  final String labelText;
  final String buyerPhoneNumber;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppTextConst.infoAboutTheBuyer,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(
            height: 20,
          ),
          AppTextFormField(
            labelText: labelText,
            hintText: buyerPhoneNumber,
          ),
          const SizedBox(
            height: 8,
          ),
          AppTextFormField(
            labelText: labelText,
            hintText: buyerPhoneNumber,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            AppTextConst.dataShareInfo,
            style: Theme.of(context)
                .textTheme
                .displaySmall!
                .copyWith(fontSize: 14),
          )
        ],
      ),
    );
  }
}
