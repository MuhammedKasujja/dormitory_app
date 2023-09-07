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

  String get pay => '$amount$currency/${paymentPeriodType.label}';

  @override
  List<Object> get props => [amount, paymentPeriodType, currency];
}
