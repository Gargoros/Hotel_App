import 'package:flutter/material.dart';
import 'package:hotel_app/src/core/widgets/hotel_custom_button.dart';

class CustonBottomButtonContainer extends StatelessWidget {
  final String buttonText;
  final void Function() navigatTo;
  const CustonBottomButtonContainer({
    super.key,
    required this.buttonText,
    required this.navigatTo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 12,
        bottom: 30,
        left: 16,
        right: 16,
      ),
      width: double.infinity,
      height: 90,
      decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(
              top: BorderSide(
            color: Color(0xFFe8e9ec),
          ))),
      child: HotelCustomButton(
        navigatTo: navigatTo,
        buttonText: buttonText,
      ),
    );
  }
}
