import 'package:flutter/material.dart';
import 'package:hotel_app/src/features/hotel/presentation/widgets/particularity_card.dart';

class AppPeculiaritiesWidget extends StatelessWidget {
  const AppPeculiaritiesWidget({
    super.key,
    required this.peculiarities,
  });

  final List<String> peculiarities;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      direction: Axis.horizontal,
      children: List.generate(
        peculiarities.length,
        (index) => ParticularityCard(
          particularity: peculiarities[index],
        ),
      ),
    );
  }
}
