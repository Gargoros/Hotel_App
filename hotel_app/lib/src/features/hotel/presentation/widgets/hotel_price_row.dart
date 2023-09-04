import 'package:flutter/material.dart';
import 'package:hotel_app/src/core/constants/app_text_constants.dart';

class HotelPriceRow extends StatelessWidget {
  final int price;
  final String priceForIt;
  const HotelPriceRow({
    Key? key,
    required this.price,
    required this.priceForIt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            "${AppTextConst.priceStart} $price ${AppTextConst.cashSign}",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(
            width: 8,
          ),
          Text(
            priceForIt,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
