import 'package:flutter/material.dart';
import 'package:hotel_app/src/core/constants/app_text_constants.dart';
import 'package:hotel_app/src/core/widgets/app_table_row_spacer.dart';

class TotalPriceCard extends StatelessWidget {
  const TotalPriceCard({
    super.key,
    required this.price,
  });

  final int price;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.all(16),
      child: Table(
        children: [
          TableRow(
            children: [
              Text(
                AppTextConst.tour,
                style: Theme.of(context).textTheme.displaySmall,
              ),
              Text(
                " ${price.toString()} ${AppTextConst.cashSign}",
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: const Color(0xFF000000),
                    ),
                textAlign: TextAlign.end,
              ),
            ],
          ),
          rowSpacer,
          TableRow(
            children: [
              Text(
                AppTextConst.fuelCollection,
                style: Theme.of(context).textTheme.displaySmall,
              ),
              Text(
                " ${price.toString()} ${AppTextConst.cashSign}",
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: const Color(0xFF000000),
                    ),
                textAlign: TextAlign.end,
              ),
            ],
          ),
          rowSpacer,
          TableRow(
            children: [
              Text(
                AppTextConst.serviceFee,
                style: Theme.of(context).textTheme.displaySmall,
              ),
              Text(
                " ${price.toString()} ${AppTextConst.cashSign}",
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: const Color(0xFF000000),
                    ),
                textAlign: TextAlign.end,
              ),
            ],
          ),
          rowSpacer,
          TableRow(
            children: [
              Text(
                AppTextConst.toBePaid,
                style: Theme.of(context).textTheme.displaySmall,
              ),
              Text(
                " ${price.toString()} ${AppTextConst.cashSign}",
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .copyWith(fontSize: 16, fontWeight: FontWeight.w600),
                textAlign: TextAlign.end,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
