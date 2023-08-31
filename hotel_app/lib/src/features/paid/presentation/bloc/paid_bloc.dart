import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'paid_event.dart';
part 'paid_state.dart';

class PaidBloc extends Bloc<PaidEvent, PaidState> {
  PaidBloc() : super(PaidInitial()) {
    on<PaidEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
