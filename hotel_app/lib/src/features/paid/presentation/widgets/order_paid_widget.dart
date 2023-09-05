import 'package:flutter/material.dart';
import 'package:hotel_app/src/core/constants/app_text_constants.dart';

class OrderPaidWidget extends StatelessWidget {
  const OrderPaidWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32, left: 16, right: 16, bottom: 20),
      child: Text(
        AppTextConst.orderAccepted,
        style: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }
}
