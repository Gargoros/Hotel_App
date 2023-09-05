import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hotel_app/src/core/constants/app_icons_constants.dart';

class RegistrationRow extends StatelessWidget {
  const RegistrationRow({
    super.key,
    required this.registrationCardName,
  });

  final String registrationCardName;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          registrationCardName,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Container(
          height: 32,
          width: 32,
          decoration: BoxDecoration(
            color: const Color(0xFFe7f1ff),
            borderRadius: BorderRadius.circular(6),
          ),
          child: RotatedBox(
            quarterTurns: 3,
            child: SvgPicture.asset(
              AppIconsConst.moveForward,
              height: 12,
              width: 6,
              fit: BoxFit.none,
              color: const Color(0xFF0D72FF),
            ),
          ),
        ),
      ],
    );
  }
}
