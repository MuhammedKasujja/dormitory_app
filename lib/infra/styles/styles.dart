import 'package:dormitory_app/infra/infra.dart';
import 'package:flutter/material.dart';

enum InputState { idle, focused, error, success }

class AppStyles {
  AppStyles._();

  static OutlineInputBorder buildInputBorder(
      {InputState state = InputState.idle}) {
    return OutlineInputBorder(
      gapPadding: 2,
      borderSide: BorderSide(
        color: state == InputState.focused
            ? AppColors.accent
            : state == InputState.error
                ? Colors.red
                : AppColors.divider,
      ),
      borderRadius: BorderRadius.circular(8.r),
    );
  }
}
