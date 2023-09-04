import 'package:flutter/material.dart';

class HotelRaitingWidget extends StatelessWidget {
  const HotelRaitingWidget({
    super.key,
    required this.rating,
    required this.ratingName,
  });

  final int rating;
  final String ratingName;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 30,
          margin: const EdgeInsets.only(left: 16, right: 16, bottom: 8),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: const Color(0xFFfff4cc),
          ),
          child: Row(
            children: [
              const Icon(
                Icons.star,
                color: Color(0xFFFFA800),
                size: 15,
              ),
              Text(
                "$rating $ratingName",
                style: Theme.of(context).textTheme.titleSmall,
              )
            ],
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
