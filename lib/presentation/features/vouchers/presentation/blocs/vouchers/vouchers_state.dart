part of 'vouchers_bloc.dart';

class VouchersState extends Equatable {
  const VouchersState({
    this.status = AppState.initial,
    this.data,
    this.activeVoucher,
    this.errorMessage,
    this.sortBy = VoucherSortType.latest,
  });

  final List<VourcherModel>? data;
  final AppState status;
  final VourcherModel? activeVoucher;
  final String? errorMessage;
  final VoucherSortType sortBy;
  @override
  List<Object?> get props => [
        status,
        data,
        errorMessage,
        activeVoucher,
        sortBy,
      ];

  VouchersState copyWith({
    List<VourcherModel>? data,
    AppState? status,
    String? errorMessage,
    VourcherModel? activeVoucher,
    VoucherSortType? sortBy,
  }) {
    return VouchersState(
      data: data ?? this.data,
      status: status ?? this.status,
      activeVoucher: activeVoucher,
      errorMessage: errorMessage ?? this.errorMessage,
      sortBy: sortBy ?? this.sortBy,
    );
  }
}
