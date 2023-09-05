import 'package:flutter/material.dart';
import 'package:hotel_app/src/core/constants/app_image_constants.dart';
import 'package:hotel_app/src/core/constants/app_text_constants.dart';
import 'package:hotel_app/src/features/room/presentation/widgets/about_room_card.dart';

class RoomScreen extends StatelessWidget {
  RoomScreen({super.key});
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
      appBar: _appBuilder(context),
      body: _bodyBuilder(),
    );
  }

  AppBar _appBuilder(BuildContext context) {
    return AppBar(
      title: Text(
        hotelName,
        style: Theme.of(context).textTheme.titleMedium,
      ),
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
            priceForIt: priceForIt);
      },
    );
  }
}
