import 'package:flutter/material.dart';
import 'package:hotel_app/src/features/hotel/presentation/widgets/hotel_adress_button.dart';
import 'package:hotel_app/src/features/hotel/presentation/widgets/hotel_name_row.dart';
import 'package:hotel_app/src/features/hotel/presentation/widgets/hotel_raiting_widget.dart';

class SmallHotelInfoCard extends StatelessWidget {
  const SmallHotelInfoCard({
    super.key,
    required this.rating,
    required this.ratingName,
    required this.hotelName,
    required this.hotelAdress,
  });

  final int rating;
  final String ratingName;
  final String hotelName;
  final String hotelAdress;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 16,
          ),
          HotelRaitingWidget(
            rating: rating,
            ratingName: ratingName,
          ),
          HotelNameRow(
            hotelName: hotelName,
          ),
          HotelAdressButton(
            hotelAdress: hotelAdress,
            navigatTo: () {},
          )
        ],
      ),
    );
  }
}
