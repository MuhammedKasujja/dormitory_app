import 'package:bloc/bloc.dart';
import 'package:dormitory_app/models/models.dart';
import 'package:equatable/equatable.dart';

import '../data/models/models.dart';

part 'payment_methods_event.dart';
part 'payment_methods_state.dart';

class PaymentMethodsBloc
    extends Bloc<PaymentMethodsEvent, PaymentMethodsState> {
  PaymentMethodsBloc() : super(const PaymentMethodsState()) {
    on<PaymentMethodsFetchCards>((event, emit) async {
      emit(state.copyWith(state: AppState.loading));
      try {
        final List<PaymentCardModel> cards = [
          const PaymentCardModel(
            cardNumber: '**** ***** **** 3567',
            expiryDate: '12/24',
            ccv: '567',
            country: '256',
            zipCode: '467',
            type: PaymentCardType.visa,
          ),
          const PaymentCardModel(
            cardNumber: '**** ***** **** 3567',
            expiryDate: '12/25',
            ccv: '234',
            country: '5678',
            zipCode: '979',
            type: PaymentCardType.masterCard,
          ),
        ];
        emit(state.copyWith(cards: cards, state: AppState.success));
      } catch (e) {
        add(const PaymentMethodsFailure('Could not fetch payment methods'));
      }
    });

    on<PaymentMethodsFailure>((event, emit) {
      emit(state.copyWith(errorMessage: event.errorMessage));
    });
  }
}
