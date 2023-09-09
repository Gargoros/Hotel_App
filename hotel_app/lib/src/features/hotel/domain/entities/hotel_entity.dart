// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:hotel_app/src/features/hotel/data/models/about_the_hotel_model.dart';

class HotelEntity extends Equatable {
  final int? id;
  final String? name;
  final String? adress;
  final int? minimalPrice;
  final String? priceForIt;
  final int? rating;
  final String? ratingName;
  final List<String>? imageUrls;
  final AboutTheHotelModel? aboutTheHotelModel;
  const HotelEntity({
    this.id,
    this.name,
    this.adress,
    this.minimalPrice,
    this.priceForIt,
    this.rating,
    this.ratingName,
    this.imageUrls,
    this.aboutTheHotelModel,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        adress,
        minimalPrice,
        priceForIt,
        rating,
        imageUrls,
        aboutTheHotelModel,
      ];
}
