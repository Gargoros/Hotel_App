import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hotel_app/src/core/constants/app_icons_constants.dart';

class AboutRoomButton extends StatelessWidget {
  const AboutRoomButton({
    super.key,
    required String buttonText,
  }) : _buttonText = buttonText;

  final String _buttonText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFe7f1ff),
        borderRadius: BorderRadius.circular(5),
      ),
      padding: const EdgeInsets.only(left: 10, top: 5, bottom: 5),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            _buttonText,
            style: Theme.of(context).textTheme.labelSmall,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 12),
            child: SvgPicture.asset(
              AppIconsConst.moveForward,
              height: 12,
              width: 6,
              color: const Color(0xFF0D72FF),
            ),
          ),
        ],
      ),
    );
  }
}
