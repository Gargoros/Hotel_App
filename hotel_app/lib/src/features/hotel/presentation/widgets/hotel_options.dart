import 'package:flutter/material.dart';
import 'package:hotel_app/src/core/constants/app_icons_constants.dart';
import 'package:hotel_app/src/core/constants/app_text_constants.dart';
import 'package:hotel_app/src/features/hotel/presentation/widgets/hotel_options_card.dart';

class HotelOptions extends StatelessWidget {
  const HotelOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 186,
      margin: const EdgeInsets.only(top: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFfbfbfc),
        borderRadius: BorderRadius.circular(15),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          HotelOptionsCard(
            icon: AppIconsConst.emojiHappy,
            hotelCardText: AppTextConst.notIncluded,
          ),
          Divider(
            height: 20,
            color: Color(0x25828796),
            indent: 35,
          ),
          HotelOptionsCard(
            icon: AppIconsConst.tickIcon,
            hotelCardText: AppTextConst.notIncluded,
          ),
          Divider(
            height: 20,
            color: Color(0x25828796),
            indent: 35,
          ),
          HotelOptionsCard(
            icon: AppIconsConst.closeIcon,
            hotelCardText: AppTextConst.notIncluded,
          ),
        ],
      ),
    );
  }
}
