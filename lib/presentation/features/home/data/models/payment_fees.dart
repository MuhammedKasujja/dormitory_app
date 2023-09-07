import 'dart:convert';

import '../../domain/entities/enums.dart';
import '../../domain/entities/payment_fees.dart';

class PaymentFeeModel extends PaymentFee {
  const PaymentFeeModel({
    required super.amount,
    required super.paymentPeriodType,
    required super.currency,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amount': amount,
      'paymentPeriodType': paymentPeriodType.index,
      'currency': currency,
    };
  }

  factory PaymentFeeModel.fromMap(Map<String, dynamic> map) {
    return PaymentFeeModel(
      amount: map['amount'],
      paymentPeriodType: PaymentPeriodType.values[map['paymentPeriodType']],
      currency: map['currency'],
    );
  }

  String toJson() => json.encode(toMap());

  factory PaymentFeeModel.fromJson(String source) =>
      PaymentFeeModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
