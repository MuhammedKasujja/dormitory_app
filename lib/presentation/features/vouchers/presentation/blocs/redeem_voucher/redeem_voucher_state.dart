part of 'redeem_voucher_cubit.dart';

class RedeemVoucherState extends Equatable {
  const RedeemVoucherState({
    this.status = FormzSubmissionStatus.initial,
    this.voucherCode = const RequiredField.pure(),
    this.isValid = false,
    this.errorMessage,
    this.vourcher,
  });

  final FormzSubmissionStatus status;
  final RequiredField voucherCode;
  final bool isValid;
  final String? errorMessage;
  final VourcherModel? vourcher;

  RedeemVoucherState copyWith({
    FormzSubmissionStatus? status,
    RequiredField? voucherCode,
    bool? isValid,
    String? errorMessage,
    VourcherModel? vourcher,
  }) {
    return RedeemVoucherState(
      status: status ?? this.status,
      voucherCode: voucherCode ?? this.voucherCode,
      isValid: isValid ?? this.isValid,
      errorMessage: errorMessage ?? this.errorMessage,
      vourcher: vourcher,
    );
  }

  @override
  List<Object?> get props => [
        status,
        voucherCode,
        isValid,
        errorMessage,
        vourcher,
      ];
}
