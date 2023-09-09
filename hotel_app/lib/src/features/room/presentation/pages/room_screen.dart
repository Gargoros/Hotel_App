// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hotel_app/src/config/router/app_router.gr.dart';
import 'package:hotel_app/src/core/constants/app_image_constants.dart';
import 'package:hotel_app/src/core/constants/app_text_constants.dart';
import 'package:hotel_app/src/core/widgets/app_custom_app_bar.dart';
import 'package:hotel_app/src/features/room/presentation/widgets/about_room_card.dart';

@RoutePage()
class RoomScreen extends StatefulWidget {
  const RoomScreen({super.key});

  @override
  State<RoomScreen> createState() => _RoomScreenState();
}

class _RoomScreenState extends State<RoomScreen> {
  final String hotelName = "Steigenberger Makadi";

  final String roomName = "Стандартный номер с видом на бассейн";

  final List<String> rooms = ["room1", "room2"];

  final List<String> imageUrls = [
    AppImageConst.emptyImage,
    AppImageConst.emptyImage,
    AppImageConst.emptyImage,
    AppImageConst.emptyImage,
  ];

  final List<String> peculiarities = ["Включен только завтрак", "Кондиционер"];

  final String _buttonText = AppTextConst.moreRoomDetails;

  final int price = 124856;

  final String priceForIt = "за тур с перелётом";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBarBuilder(context),
      body: _bodyBuilder(),
    );
  }

  CustomAppBar _appBarBuilder(BuildContext context) {
    return CustomAppBar(
      appBarTitle: hotelName,
      preferredSize: const Size.fromHeight(60.0),
      firstSrceen: false,
    );
  }

  ListView _bodyBuilder() {
    return ListView.builder(
      itemCount: rooms.length,
      itemBuilder: (context, index) {
        return AboutRoomCard(
          imageUrls: imageUrls,
          roomName: roomName,
          peculiarities: peculiarities,
          buttonText: _buttonText,
          price: price,
          priceForIt: priceForIt,
          navigateTo: () => context.router.push(const BookingRoute()),
        );
      },
    );
  }
}
