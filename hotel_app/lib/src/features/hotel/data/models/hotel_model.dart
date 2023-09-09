import 'package:hotel_app/src/features/hotel/data/models/about_the_hotel_model.dart';
import 'package:hotel_app/src/features/hotel/domain/entities/hotel_entity.dart';

class HotelModel extends HotelEntity {
  const HotelModel({
    int? id,
    String? name,
    String? adress,
    int? minimalPrice,
    String? priceForIt,
    int? rating,
    String? ratingName,
    List<String>? imageUrls,
    AboutTheHotelModel? aboutTheHotelModel,
  });

  factory HotelModel.fromJson(Map<String, dynamic> json) => HotelModel(
        id: json["id"],
        name: json["name"],
        adress: json["adress"],
        minimalPrice: json["minimal_price"],
        priceForIt: json["price_for_it"],
        rating: json["rating"],
        ratingName: json["rating_name"],
        imageUrls: List<String>.from(json["image_urls"].map((x) => x)),
        aboutTheHotelModel:
            AboutTheHotelModel.fromJson(json["about_the_hotel"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "adress": adress,
        "minimal_price": minimalPrice,
        "price_for_it": priceForIt,
        "rating": rating,
        "rating_name": ratingName,
        "image_urls": List<dynamic>.from(imageUrls!.map((x) => x)),
        "about_the_hotel": aboutTheHotelModel!.toJson(),
      };
}
