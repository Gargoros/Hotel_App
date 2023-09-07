import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hotel_app/src/config/router/app_router.gr.dart';
import 'package:hotel_app/src/core/constants/app_text_constants.dart';
import 'package:hotel_app/src/core/widgets/app_bottom_button_container.dart';
import 'package:hotel_app/src/features/booking/presentation/widgets/booking_data_card.dart';
import 'package:hotel_app/src/features/booking/presentation/widgets/buyer_info_card.dart';
import 'package:hotel_app/src/features/booking/presentation/widgets/registration_card.dart';
import 'package:hotel_app/src/features/booking/presentation/widgets/registration_row.dart';
import 'package:hotel_app/src/features/booking/presentation/widgets/small_hotel_info_card.dart';
import 'package:hotel_app/src/features/booking/presentation/widgets/total_price_card.dart';

@RoutePage()
class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  final int rating = 5;

  final int price = 123;

  final String ratingName = "Превосходно";

  final String hotelName = "Steigenberger Makadi";

  final String hotelAdress = "Madinat Makadi, Safaga Road, Makadi Bay, Египет";

  final String departureFrom = "Санкт-Петербург";

  final String hotelLocation = "Египет, Хургада";

  final String date1 = "19.09.2023";

  final String date2 = "27.09.2023";

  final int numberOfNights = 7;

  final String roomType = "Люкс номер с видом на море";

  final String foodType = "Все включено";

  final String labelText = "Phone Number";

  final String buyerPhoneNumber = "+7 (951) 555-99-00";

  final String buttonText = "1234123";

  final String registrationCardName = AppTextConst.firstTourist;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppTextConst.bookingTitle,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 8,
            ),
            SmallHotelInfoCard(
                rating: rating,
                ratingName: ratingName,
                hotelName: hotelName,
                hotelAdress: hotelAdress),
            const SizedBox(
              height: 8,
            ),
            BookingDataCard(
                departureFrom: departureFrom,
                hotelLocation: hotelLocation,
                date1: date1,
                date2: date2,
                numberOfNights: numberOfNights,
                hotelName: hotelName,
                roomType: roomType,
                foodType: foodType),
            const SizedBox(
              height: 8,
            ),
            BuyerInfoCard(
              labelText: labelText,
              buyerPhoneNumber: buyerPhoneNumber,
            ),
            const SizedBox(
              height: 8,
            ),
            RegistrationCard(registrationCardName: registrationCardName),
            const SizedBox(
              height: 8,
            ),
            AddNewTourist(registrationCardName: registrationCardName),
            const SizedBox(
              height: 8,
            ),
            TotalPriceCard(price: price),
            const SizedBox(
              height: 10,
            ),
            CustonBottomButtonContainer(
              navigatTo: () => context.router.push(const PaidRoute()),
              buttonText:
                  "${AppTextConst.toPayButton} $buttonText ${AppTextConst.cashSign}",
            ),
          ],
        ),
      ),
    );
  }
}

class AddNewTourist extends StatelessWidget {
  const AddNewTourist({
    super.key,
    required this.registrationCardName,
  });

  final String registrationCardName;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.all(16),
      child: RegistrationRow(registrationCardName: registrationCardName),
    );
  }
}
