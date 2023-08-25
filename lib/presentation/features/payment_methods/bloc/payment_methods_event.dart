part of 'payment_methods_bloc.dart';

class PaymentMethodsEvent extends Equatable {
  const PaymentMethodsEvent();

  @override
  List<Object> get props => [];
}

class PaymentMethodsFetchCards extends PaymentMethodsEvent{
  const PaymentMethodsFetchCards();
}

class PaymentMethodsFailure extends PaymentMethodsEvent{
  final String errorMessage;
  const PaymentMethodsFailure(this.errorMessage);
  @override
  List<Object> get props => [errorMessage];
}