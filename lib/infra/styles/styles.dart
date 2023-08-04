import 'package:dormitory_app/infra/infra.dart';
import 'package:flutter/material.dart';

enum InputState {
  idle,
  focused,
  error,
}

class AppStyles {
  AppStyles._();

  static OutlineInputBorder buildInputBorder(
      {InputState state = InputState.idle}) {
    return OutlineInputBorder(
      gapPadding: 2,
      borderSide: BorderSide(
        color:
            state == InputState.focused ? AppColors.accent : AppColors.divider,
      ),
      borderRadius: BorderRadius.circular(8.r),
    );
  }
}
