part of 'paid_bloc.dart';

abstract class PaidState extends Equatable {
  const PaidState();  

  @override
  List<Object> get props => [];
}
class PaidInitial extends PaidState {}
