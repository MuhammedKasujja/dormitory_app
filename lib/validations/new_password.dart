import 'package:formz/formz.dart';

enum NewPasswordValidationError {
  empty,
  short,
  noSpecialChar,
  noNumber,
  noUppercase
}

class NewPassword extends FormzInput<String, NewPasswordValidationError>
    with FormzInputErrorCacheMixin {
  NewPassword.pure() : super.pure('');
  NewPassword.dirty([super.value = '']) : super.dirty();

  static final _oneSpecialChar = RegExp(r"(?=.*[!@#$&*%^])");

  static final _oneNumberChar = RegExp('(?=.*[0-9])');

  static final _oneUppercaseChar = RegExp('(?=.*[A-Z])');

  static const _minPasswordLength = 8;

  @override
  NewPasswordValidationError? validator(String value) {
    if (value.isEmpty) return NewPasswordValidationError.empty;
    if (value.length < _minPasswordLength) {
      return NewPasswordValidationError.short;
    }
    if (_oneSpecialChar.hasMatch(value)) {
      return NewPasswordValidationError.noSpecialChar;
    }
    if (_oneNumberChar.hasMatch(value)) {
      return NewPasswordValidationError.noNumber;
    }
    if (_oneUppercaseChar.hasMatch(value)) {
      return NewPasswordValidationError.noUppercase;
    }
    return null;
  }
}
