import 'package:bloc/bloc.dart';
import 'package:dormitory_app/validations/validations.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';

part 'add_payment_card_state.dart';

class AddPaymentCardCubit extends Cubit<AddPaymentCardState> {
  AddPaymentCardCubit() : super(const AddPaymentCardState());

  void onCardNumberChanged(String value) {
    final cardNumber = RequiredField.dirty(value);
    emit(
      state.copyWith(
        cardNumber: cardNumber,
        isValid: Formz.validate(
          [
            state.countryCode,
            state.ccv,
            state.expiryDate,
            state.zipCode,
            cardNumber,
          ],
        ),
      ),
    );
  }

  void onCountryCodeChanged(String value) {
    final countryCode = NormalField.dirty(value);
    emit(
      state.copyWith(
        countryCode: countryCode,
        isValid: Formz.validate(
          [
            state.cardNumber,
            state.ccv,
            state.expiryDate,
            state.zipCode,
            countryCode,
          ],
        ),
      ),
    );
  }

  void onCCVChanged(String value) {
    final ccv = RequiredField.dirty(value);
    emit(
      state.copyWith(
        ccv: ccv,
        isValid: Formz.validate(
          [
            state.countryCode,
            state.cardNumber,
            state.expiryDate,
            state.zipCode,
            ccv,
          ],
        ),
      ),
    );
  }

  void onExpiryDateChanged(String value) {
    final expiryDate = RequiredField.dirty(value);
    emit(
      state.copyWith(
        expiryDate: expiryDate,
        isValid: Formz.validate(
          [
            state.countryCode,
            state.ccv,
            state.cardNumber,
            state.zipCode,
            expiryDate,
          ],
        ),
      ),
    );
  }

  void onZipCodeChanged(String value) {
    final zipCode = NormalField.dirty(value);
    emit(
      state.copyWith(
        zipCode: zipCode,
        isValid: Formz.validate(
          [
            state.countryCode,
            state.ccv,
            state.expiryDate,
            state.cardNumber,
            zipCode,
          ],
        ),
      ),
    );
  }

  void onAddPaymentCardSubmitted() {
    if (!state.isValid) return;
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
    try {
      // await _authenticationRepository.logIn(
      //   username: state.username.value,
      //   password: state.password.value,
      // );
      emit(state.copyWith(status: FormzSubmissionStatus.success));
    } catch (_) {
      emit(state.copyWith(status: FormzSubmissionStatus.failure));
    }
  }
}
