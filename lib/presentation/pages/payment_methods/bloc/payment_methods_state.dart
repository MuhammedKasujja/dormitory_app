part of 'payment_methods_bloc.dart';

class PaymentMethodsState extends Equatable {
  final List<PaymentCardModel> cards;
  final AppState state;
  final String? errorMessage;
  const PaymentMethodsState({
    this.cards = const[],
     this.state = AppState.initial,
    this.errorMessage,
  });

  PaymentMethodsState copyWith({
    List<PaymentCardModel>? cards,
    AppState? state,
    String? errorMessage,
  }) {
    return PaymentMethodsState(
      cards: cards ?? this.cards,
      state: state ?? this.state,
      errorMessage: errorMessage,
    );
  }

  @override
  List<Object?> get props => [cards, state, errorMessage];
}
