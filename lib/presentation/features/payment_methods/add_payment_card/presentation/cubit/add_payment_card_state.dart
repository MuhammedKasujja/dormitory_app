part of 'add_payment_card_cubit.dart';

class AddPaymentCardState extends Equatable {
  const AddPaymentCardState({
    this.cardNumber = const RequiredField.pure(),
    this.expiryDate = const RequiredField.pure(),
    this.ccv = const RequiredField.pure(),
    this.zipCode = const NormalField.pure(),
    this.countryCode = const NormalField.dirty(),
    this.status = FormzSubmissionStatus.initial,
    this.isValid = false,
    this.errorMessage,
  });

  final RequiredField cardNumber;
  final RequiredField expiryDate;
  final RequiredField ccv;
  final NormalField zipCode;
  final NormalField countryCode;
  final FormzSubmissionStatus status;
  final bool isValid;
  final String? errorMessage;

  AddPaymentCardState copyWith({
    RequiredField? cardNumber,
    RequiredField? expiryDate,
    RequiredField? ccv,
    NormalField? zipCode,
    NormalField? countryCode,
    FormzSubmissionStatus? status,
    bool? isValid,
    String? errorMessage,
  }) {
    return AddPaymentCardState(
      cardNumber: cardNumber ?? this.cardNumber,
      expiryDate: expiryDate ?? this.expiryDate,
      ccv: ccv ?? this.ccv,
      zipCode: zipCode ?? this.zipCode,
      countryCode: countryCode ?? this.countryCode,
      status: status ?? this.status,
      isValid: isValid ?? this.isValid,
      errorMessage: errorMessage,
    );
  }

  @override
  List<Object?> get props {
    return [
      cardNumber,
      expiryDate,
      ccv,
      zipCode,
      countryCode,
      status,
      isValid,
      errorMessage,
    ];
  }
}
