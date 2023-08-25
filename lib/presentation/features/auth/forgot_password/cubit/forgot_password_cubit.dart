import 'package:bloc/bloc.dart';
import 'package:dormitory_app/validations/validations.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';

part 'forgot_password_state.dart';

class ForgotPasswordCubit extends Cubit<ForgotPasswordState> {
  ForgotPasswordCubit() : super(ForgotPasswordState(email: Email.pure()));

  void emailChanged(String value) {
    final email = Email.dirty(value);
    emit(state.copyWith(email: email, isValid: Formz.validate([email])));
  }

  Future<void> submittedForgotPassword() async {
    if (!state.isValid) return;
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
    try {
      // make api call
      emit(state.copyWith(status: FormzSubmissionStatus.success));
    } catch (_) {
      emit(state.copyWith(status: FormzSubmissionStatus.failure));
    }
  }
}
