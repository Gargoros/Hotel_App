// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:hotel_app/src/features/room/data/models/room_model.dart';

class RoomsListEntity extends Equatable {
  final List<RoomModel>? rooms;
  const RoomsListEntity({
    this.rooms,
  });

  @override
  List<Object?> get props => [rooms];
}
