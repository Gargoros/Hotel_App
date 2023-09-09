import 'package:hotel_app/src/features/hotel/domain/entities/about_the_hotel_entity.dart';

class AboutTheHotelModel extends AboutTheHotelEntity {
  const AboutTheHotelModel({
    String? description,
    List<String>? peculiarities,
  });

  factory AboutTheHotelModel.fromJson(Map<String, dynamic> json) =>
      AboutTheHotelModel(
        description: json["description"],
        peculiarities: List<String>.from(json["peculiarities"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "description": description,
        "peculiarities": List<dynamic>.from(peculiarities!.map((x) => x)),
      };
}
