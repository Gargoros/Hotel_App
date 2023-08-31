import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'room_event.dart';
part 'room_state.dart';

class RoomBloc extends Bloc<RoomEvent, RoomState> {
  RoomBloc() : super(RoomInitial()) {
    on<RoomEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
