part of 'hotel_bloc.dart';

abstract class HotelState extends Equatable {
  const HotelState();  

  @override
  List<Object> get props => [];
}
class HotelInitial extends HotelState {}
