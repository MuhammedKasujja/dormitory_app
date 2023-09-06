part of 'vouchers_bloc.dart';

class VouchersState extends Equatable {
  const VouchersState({
    this.status = AppState.initial,
    this.data,
    this.activeVoucher,
    this.errorMessage,
    this.filterType = VoucherFilterType.latest,
  });

  final List<VourcherModel>? data;
  final AppState status;
  final VourcherModel? activeVoucher;
  final String? errorMessage;
  final VoucherFilterType filterType;
  @override
  List<Object?> get props => [
        status,
        data,
        errorMessage,
        activeVoucher,
        filterType,
      ];

  VouchersState copyWith({
    List<VourcherModel>? data,
    AppState? status,
    String? errorMessage,
    VourcherModel? activeVoucher,
    VoucherFilterType? filterType,
  }) {
    return VouchersState(
      data: data ?? this.data,
      status: status ?? this.status,
      activeVoucher: activeVoucher,
      errorMessage: errorMessage ?? this.errorMessage,
      filterType: filterType ?? this.filterType,
    );
  }
}
