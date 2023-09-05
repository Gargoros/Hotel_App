import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hotel_app/src/core/constants/app_icons_constants.dart';
import 'package:hotel_app/src/core/constants/app_text_constants.dart';

class HotelOptionsCard extends StatelessWidget {
  final String hotelCardText;
  final String icon;
  const HotelOptionsCard({
    super.key,
    required this.hotelCardText,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: SizedBox(
        height: 38,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.only(right: 12),
                  child: SvgPicture.asset(
                    icon,
                    height: 24,
                    width: 24,
                    fit: BoxFit.cover,
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      hotelCardText,
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                    const SizedBox(height: 2),
                    Text(
                      AppTextConst.mostNecessary,
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              child: SvgPicture.asset(
                AppIconsConst.moveForward,
                height: 14,
                width: 14,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
