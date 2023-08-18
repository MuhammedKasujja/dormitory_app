import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';
import 'package:dormitory_app/validations/validations.dart';
part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginState()) {
    on<LoginUsernameChanged>(_onUsernameChanged);
    on<LoginPasswordChanged>(_onPasswordChanged);
    on<LoginRememberPasswordChanged>(_onRemeberPasswordToggled);
    on<LoginSubmitted>(_onSubmitted);
  }
  void _onUsernameChanged(
    LoginUsernameChanged event,
    Emitter<LoginState> emit,
  ) {
    final username = Username.dirty(event.username);
    emit(
      state.copyWith(
        username: username,
        isValid: Formz.validate(
            [state.password, state.isRememberPassword, username]),
      ),
    );
  }

  void _onPasswordChanged(
    LoginPasswordChanged event,
    Emitter<LoginState> emit,
  ) {
    final password = Password.dirty(event.password);
    emit(
      state.copyWith(
        password: password,
        isValid: Formz.validate(
            [password, state.username, state.isRememberPassword]),
      ),
    );
  }

  void _onRemeberPasswordToggled(
    LoginRememberPasswordChanged event,
    Emitter<LoginState> emit,
  ) {
    // TODO isRequired: true, is expensive when updating UI
    final isRememberPassword = BooleanField.dirty(
      value: !state.isRememberPassword.value,
    );
    // print(
    //     'isRememberPassword: $isRememberPassword ${state.isRememberPassword.value}');
    emit(
      state.copyWith(
        isRememberPassword: isRememberPassword,
        isValid: Formz.validate(
            [state.password, state.username, isRememberPassword]),
      ),
    );
  }

  Future<void> _onSubmitted(
    LoginSubmitted event,
    Emitter<LoginState> emit,
  ) async {
    if (state.isValid) {
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
}
