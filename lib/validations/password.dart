import 'package:formz/formz.dart';

enum PasswordValidationError { empty, short }

class Password extends FormzInput<String, PasswordValidationError>
    // with FormzInputErrorCacheMixin 
    {
  const Password.pure() : super.pure('');
  const Password.dirty([super.value = '']) : super.dirty();

  @override
  PasswordValidationError? validator(String value) {
    if (value.isEmpty) return PasswordValidationError.empty;
    if (value.length < 8) return PasswordValidationError.short;
    return null;
  }
}