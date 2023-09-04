import 'package:flutter/material.dart';
import 'package:hotel_app/src/core/constants/app_image_constants.dart';

class PartyPopperImageWidget extends StatelessWidget {
  const PartyPopperImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 95,
      height: 95,
      child: CircleAvatar(
        backgroundColor: const Color(0xFFf6f6f9),
        radius: 95,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset(
            AppImageConst.partyPopper,
            width: 44.0,
            height: 44.0,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
