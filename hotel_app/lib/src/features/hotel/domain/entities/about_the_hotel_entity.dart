// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class AboutTheHotelEntity extends Equatable {
  final String? description;
  final List<String>? peculiarities;
  const AboutTheHotelEntity({
    this.description,
    this.peculiarities,
  });

  @override
  List<Object?> get props => [description, peculiarities];
}
