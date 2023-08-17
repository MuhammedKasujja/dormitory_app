// import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';

enum NewPasswordValidationError {
  empty,
  short,
  noSpecialChar,
  noNumber,
  noUppercase
}

// class NewPasswordValidationError extends Equatable {
//   final bool isEmpty;
//   final bool isShort;
//   final bool hasSpecialChar;
//   final bool hasNumber;
//   final bool hasUpperCase;

//   const NewPasswordValidationError({
//     required this.isEmpty,
//     required this.isShort,
//     required this.hasSpecialChar,
//     required this.hasNumber,
//     required this.hasUpperCase,
//   });

//   @override
//   List<Object> get props {
//     return [
//       isEmpty,
//       isShort,
//       hasSpecialChar,
//       hasNumber,
//       hasUpperCase,
//     ];
//   }
// }

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
    if (!_oneSpecialChar.hasMatch(value)) {
      return NewPasswordValidationError.noSpecialChar;
    }
    if (!_oneNumberChar.hasMatch(value)) {
      return NewPasswordValidationError.noNumber;
    }
    if (!_oneUppercaseChar.hasMatch(value)) {
      return NewPasswordValidationError.noUppercase;
    }
    if (value.length < _minPasswordLength) {
      return NewPasswordValidationError.short;
    }
    return null;
  }
}
