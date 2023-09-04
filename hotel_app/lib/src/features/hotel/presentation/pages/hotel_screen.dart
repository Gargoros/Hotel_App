// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:hotel_app/src/core/constants/app_image_constants.dart';
import 'package:hotel_app/src/core/constants/app_text_constants.dart';
import 'package:hotel_app/src/core/widgets/app_bottom_button_container.dart';
import 'package:hotel_app/src/core/widgets/app_images_view.dart';
import 'package:hotel_app/src/features/hotel/presentation/widgets/about_hotel_card.dart';
import 'package:hotel_app/src/features/hotel/presentation/widgets/hotel_adress_button.dart';
import 'package:hotel_app/src/features/hotel/presentation/widgets/hotel_name_row.dart';
import 'package:hotel_app/src/core/widgets/app_price_row.dart';
import 'package:hotel_app/src/features/hotel/presentation/widgets/hotel_raiting_widget.dart';

class HotelScreen extends StatelessWidget {
  HotelScreen({super.key});

  // make sort list!!!!
  final List<String> peculiarities = [
    "Бесплатный Wifi на всей территории отеля",
    "1 км до пляжа",
    "Бесплатный фитнес-клуб",
    "20 км до аэропорта"
  ];
  final String priceForIt = "за тур с перелётом";
  final String hotelAdress = "Madinat Makadi, Safaga Road, Makadi Bay, Египет";
  final String hotelName = "Steigenberger Makadi";
  final String ratingName = "Превосходно";
  final String hotelDescription =
      "Отель VIP-класса с собственными гольф полями. Высокий уровнь сервиса. Рекомендуем для респектабельного отдыха. Отель принимает гостей от 18 лет!Отель VIP-класса с собственными гольф полями. Высокий уровнь сервиса.";
  final int price = 124856;
  final int rating = 5;

  final List<String> imageUrls = [
    AppImageConst.emptyImage,
    AppImageConst.emptyImage,
    AppImageConst.emptyImage,
    AppImageConst.emptyImage,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppTextConst.hotelTitle,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Stack(
                      children: [
                        ScrollableImageWidget(
                          imageUrls: imageUrls,
                        ),
                        Positioned(
                          left: 130,
                          right: 130,
                          bottom: 8,
                          child: Container(
                            height: 17,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: const Color(0xFFffffff),
                            ),
                            child: const Row(
                              children: [Text("data")],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  HotelRaitingWidget(rating: rating, ratingName: ratingName),
                  HotelNameRow(hotelName: hotelName),
                  HotelAdressButton(
                    hotelAdress: hotelAdress,
                    navigatTo: () {},
                  ),
                  AppPriceRow(
                    price: price,
                    priceForIt: priceForIt,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            AboutHotelCard(
              peculiarities: peculiarities,
              hotelDescription: hotelDescription,
            ),
            const SizedBox(
              height: 12,
            ),
            CustonBottomButtonContainer(
              navigatTo: () {},
              buttonText: AppTextConst.goToRoomsButton,
            ),
          ],
        ),
      ),
    );
  }
}
