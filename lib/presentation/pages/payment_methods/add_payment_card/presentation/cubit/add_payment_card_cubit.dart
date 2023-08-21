import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'add_payment_card_state.dart';

class AddPaymentCardCubit extends Cubit<AddPaymentCardState> {
  AddPaymentCardCubit() : super(AddPaymentCardInitial());
}
