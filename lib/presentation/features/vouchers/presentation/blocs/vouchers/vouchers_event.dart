part of 'vouchers_bloc.dart';

abstract class VouchersEvent extends Equatable {
  const VouchersEvent();

  @override
  List<Object> get props => [];
}

class AddVourcher extends VouchersEvent {
  final VourcherModel vourcher;

  const AddVourcher({required this.vourcher});

  @override
  List<Object> get props => [vourcher];
}

class FetchMyVourchers extends VouchersEvent {
  const FetchMyVourchers();
}

class AddActiveVoucher extends VouchersEvent {
  final VourcherModel vourcher;
  const AddActiveVoucher({required this.vourcher});
  @override
  List<Object> get props => [vourcher];
}

class VourcherFailure extends VouchersEvent {
  final String error;
  const VourcherFailure(this.error);
  @override
  List<Object> get props => [error];
}
