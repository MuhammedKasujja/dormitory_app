import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:dormitory_app/validations/validations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NewPasswordChecker extends StatelessWidget {
  final NewPasswordValidationError? validator;
  const NewPasswordChecker({super.key, required this.validator});

  @override
  Widget build(BuildContext context) {
    if (validator == null) return const SizedBox.shrink();
    return Column(
      children: [
        const SizedBox().scaleHeight(12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _CheckerMessage(
              message: 'Minimum of 8 characters',
              hasError: validator == NewPasswordValidationError.short,
            ),
            _CheckerMessage(
              message: 'Atleast one uppercase',
              hasError: validator == NewPasswordValidationError.noUppercase,
            ),
          ],
        ),
        const SizedBox().scaleHeight(8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _CheckerMessage(
              message: 'One special character',
              hasError: validator == NewPasswordValidationError.noSpecialChar,
            ),
            _CheckerMessage(
              message: 'At least one number',
              hasError: validator == NewPasswordValidationError.noNumber,
            ),
          ],
        )
      ],
    );
  }
}

class _CheckerMessage extends StatelessWidget {
  final String message;
  final bool hasError;
  // final NewPasswordValidationError validator;
  const _CheckerMessage({required this.message, required this.hasError});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Row(
        children: [
          SvgPicture.string(hasError ? Assets.errorIcon : Assets.okIcon),
          SizedBox(width: 8.w),
          Text(
            message,
            style: TextStyle(
              fontSize: 12.sp,
              height: 1.5,
              color: AppColors.text2,
            ),
          ),
        ],
      ),
    );
  }
}
