import 'package:hotel_app/src/features/room/data/models/room_model.dart';
import 'package:hotel_app/src/features/room/domain/entities/rooms_list_entity.dart';

class RoomsListModel extends RoomsListEntity {
  const RoomsListModel({
    List<RoomModel>? rooms,
  });
  factory RoomsListModel.fromJson(Map<String, dynamic> json) => RoomsListModel(
        rooms: List<RoomModel>.from(
            json["rooms"].map((x) => RoomModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "rooms": List<dynamic>.from(rooms!.map((x) => x.toJson())),
      };
}
