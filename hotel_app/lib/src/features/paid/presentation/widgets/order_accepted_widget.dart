import 'package:flutter/material.dart';
import 'package:hotel_app/src/core/constants/app_text_constants.dart';

class OrderAcceptedWidget extends StatelessWidget {
  const OrderAcceptedWidget({
    super.key,
    required this.orderNumber,
  });

  final int orderNumber;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 23, right: 23),
      child: Text(
        "${AppTextConst.orderAcceptedDetailsStart}$orderNumber${AppTextConst.orderAcceptedDetailsEnd}",
        style: Theme.of(context).textTheme.displaySmall,
        textAlign: TextAlign.center,
      ),
    );
  }
}
