import 'package:equatable/equatable.dart';

import 'enums.dart';

class PaymentFee extends Equatable {
  final String amount;
  final PaymentPeriodType paymentPeriodType;
  final String currency;
  const PaymentFee({
    required this.amount,
    required this.paymentPeriodType,
    required this.currency,
  });

  @override
  List<Object> get props => [amount, paymentPeriodType, currency];
}
