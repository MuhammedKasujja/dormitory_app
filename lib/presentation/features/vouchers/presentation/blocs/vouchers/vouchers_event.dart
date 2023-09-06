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

class ChangedSortOrder extends VouchersEvent {
  final VoucherSortType sortType;
  const ChangedSortOrder(this.sortType);

  @override
  List<Object> get props => [sortType];
}

class FetchSingleVourcher extends VouchersEvent {
  final String voucherCode;

  const FetchSingleVourcher(this.voucherCode);
  @override
  List<Object> get props => [voucherCode];
}

class VourcherFailure extends VouchersEvent {
  final String error;
  const VourcherFailure(this.error);
  @override
  List<Object> get props => [error];
}
