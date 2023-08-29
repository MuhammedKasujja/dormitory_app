part of 'vouchers_bloc.dart';

class VouchersState extends Equatable {
  const VouchersState({
    this.status = AppState.initial,
    this.data = const [],
    this.errorMessage,
  });

  final List<VourcherModel> data;
  final AppState status;
  final String? errorMessage;
  @override
  List<Object?> get props => [
        status,
        data,
        errorMessage,
      ];

  VouchersState copyWith({
    List<VourcherModel>? data,
    AppState? status,
    String? errorMessage,
  }) {
    return VouchersState(
      data: data ?? this.data,
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
