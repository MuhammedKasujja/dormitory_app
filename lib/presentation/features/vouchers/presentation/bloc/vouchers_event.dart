// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'vouchers_bloc.dart';

abstract class VouchersEvent extends Equatable {
  const VouchersEvent();

  @override
  List<Object> get props => [];
}

class FetchMyVourchers extends VouchersEvent {
  const FetchMyVourchers();
}

class VourcherFailure extends VouchersEvent {
  final String error;
  const VourcherFailure(this.error);
  @override
  List<Object> get props => [error];
}
