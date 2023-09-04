import 'package:flutter/material.dart';
import 'package:hotel_app/src/core/constants/app_text_constants.dart';
import 'package:hotel_app/src/features/hotel/presentation/widgets/hotel_options.dart';
import 'package:hotel_app/src/features/hotel/presentation/widgets/particularity_card.dart';

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
          Wrap(
            spacing: 8,
            runSpacing: 8,
            direction: Axis.horizontal,
            children: List.generate(
              peculiarities.length,
              (index) => ParticularityCard(
                particularity: peculiarities[index],
              ),
            ),
          ),
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
