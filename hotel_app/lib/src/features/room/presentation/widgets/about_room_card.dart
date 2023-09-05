import 'package:flutter/material.dart';
import 'package:hotel_app/src/core/constants/app_text_constants.dart';
import 'package:hotel_app/src/core/widgets/App_peculiarities_widget.dart';
import 'package:hotel_app/src/core/widgets/app_custom_button.dart';
import 'package:hotel_app/src/core/widgets/app_images_view.dart';
import 'package:hotel_app/src/core/widgets/app_price_row.dart';
import 'package:hotel_app/src/features/room/presentation/widgets/about_room_button.dart';

class AboutRoomCard extends StatelessWidget {
  const AboutRoomCard({
    super.key,
    required this.imageUrls,
    required this.roomName,
    required this.peculiarities,
    required String buttonText,
    required this.price,
    required this.priceForIt,
  }) : _buttonText = buttonText;

  final List<String> imageUrls;
  final String roomName;
  final List<String> peculiarities;
  final String _buttonText;
  final int price;
  final String priceForIt;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 8,
      ),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ScrollableImageWidget(
            imageUrls: imageUrls,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            roomName,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          AppPeculiaritiesWidget(peculiarities: peculiarities),
          const SizedBox(
            height: 8,
          ),
          AboutRoomButton(buttonText: _buttonText),
          const SizedBox(
            height: 16,
          ),
          AppPriceRow(price: price, priceForIt: priceForIt),
          const SizedBox(
            height: 16,
          ),
          AppCustomButton(
            buttonText: AppTextConst.roomSelect,
            navigatTo: () {},
          ),
        ],
      ),
    );
  }
}
