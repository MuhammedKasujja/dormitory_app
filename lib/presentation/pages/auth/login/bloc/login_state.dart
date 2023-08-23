part of 'login_bloc.dart';

class LoginState extends Equatable {
  const LoginState({
    this.status = FormzSubmissionStatus.initial,
    this.username = const Username.pure(),
    this.password = const Password.pure(),
    this.isValid = false,
    this.isRememberPassword = const BooleanField.pure(),
    this.errorMessage,
  });

  final FormzSubmissionStatus status;
  final Username username;
  final Password password;
  final BooleanField isRememberPassword;
  final bool isValid;
  final String? errorMessage;

  LoginState copyWith({
    FormzSubmissionStatus? status,
    Username? username,
    Password? password,
    bool? isValid,
    BooleanField? isRememberPassword,
    String? errorMessage,
  }) {
    return LoginState(
      status: status ?? this.status,
      username: username ?? this.username,
      password: password ?? this.password,
      isValid: isValid ?? this.isValid,
      isRememberPassword: isRememberPassword ?? this.isRememberPassword,
      errorMessage: errorMessage,
    );
  }

  @override
  List<Object?> get props => [status, username, password, isRememberPassword, errorMessage,];
}
