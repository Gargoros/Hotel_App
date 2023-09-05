import 'package:flutter/material.dart';
import 'package:hotel_app/src/core/constants/app_text_constants.dart';
import 'package:hotel_app/src/core/widgets/app_peculiarities_widget.dart';
import 'package:hotel_app/src/features/hotel/presentation/widgets/hotel_options.dart';

class AboutHotelCard extends StatelessWidget {
  const AboutHotelCard({
    super.key,
    required this.peculiarities,
    required this.hotelDescription,
  });

  final List<String> peculiarities;
  final String hotelDescription;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppTextConst.aboutTheHotel,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(
            height: 16,
          ),
          AppPeculiaritiesWidget(peculiarities: peculiarities),
          const SizedBox(
            height: 12,
          ),
          Text(
            hotelDescription,
            style: Theme.of(context).textTheme.bodySmall,
          ),
          const HotelOptions(),
        ],
      ),
    );
  }
}
