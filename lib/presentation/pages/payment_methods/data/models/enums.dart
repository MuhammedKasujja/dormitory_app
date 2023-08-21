enum PaymentCardType{
  visa,
  masterCard,
}

extension PaymentCardTypeExt on PaymentCardType{
  String get  title => index == 0 ? 'VISA' : 'Mastercard'; 
}