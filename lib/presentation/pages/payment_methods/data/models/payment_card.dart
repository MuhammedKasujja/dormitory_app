import 'dart:convert';
import 'package:equatable/equatable.dart';

import 'enums.dart';

class PaymentCardModel extends Equatable {
  final String cardNumber;
  final String expiryDate;
  final String ccv;
  final String country;
  final String zipCode;
  final PaymentCardType type;
  const PaymentCardModel({
    required this.cardNumber,
    required this.expiryDate,
    required this.ccv,
    required this.country,
    required this.zipCode,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cardNumber': cardNumber,
      'expiryDate': expiryDate,
      'ccv': ccv,
      'country': country,
      'zipCode': zipCode,
      'type': type.index,
    };
  }

  factory PaymentCardModel.fromMap(Map<String, dynamic> map) {
    return PaymentCardModel(
      cardNumber: map['cardNumber'] as String,
      expiryDate: map['expiryDate'] as String,
      ccv: map['ccv'] as String,
      country: map['country'] as String,
      zipCode: map['zipCode'] as String,
      type: PaymentCardType.values[map['type']],
    );
  }

  String toJson() => json.encode(toMap());

  factory PaymentCardModel.fromJson(String source) => PaymentCardModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'PaymentCardModel(cardNumber: $cardNumber, expiryDate: $expiryDate, ccv: $ccv, country: $country, zipCode: $zipCode, type: $type)';
  }

  @override
  List<Object> get props {
    return [
      cardNumber,
      expiryDate,
      ccv,
      country,
      zipCode,
      type,
    ];
  }
}
