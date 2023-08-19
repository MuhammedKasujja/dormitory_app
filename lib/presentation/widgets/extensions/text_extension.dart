import 'package:dormitory_app/infra/infra.dart';
import 'package:flutter/material.dart';

extension TextExtension on Text {
  Text label({bool hasError = false}) {
    return Text(
      data ?? '',
      style: TextStyle(
        color: hasError ? Colors.red : AppColors.text2,
        fontWeight: FontWeight.w400,
        fontSize: 14.sp,
      ),
    );
  }

  Text labelFromSize(double size) {
    return Text(
      data ?? '',
      style: TextStyle(
        color: AppColors.text2,
        fontWeight: FontWeight.w400,
        fontSize: size.sp,
      ),
    );
  }

  Text primary({bool hasError = false}) {
    return Text(
      data ?? '',
      style: TextStyle(
        color: hasError ? Colors.red : AppColors.text500,
        fontWeight: FontWeight.w600,
        fontSize: 14.sp,
        letterSpacing: 0.6,
        height: 1.5,
      ),
    );
  }

  Text secondary({bool hasError = false}) {
    return Text(
      data ?? '',
      style: TextStyle(
        color: hasError ? Colors.red : AppColors.text400,
        fontWeight: FontWeight.w400,
        fontSize: 14.sp,
        height: 1.57,
      ),
    );
  }

  Text title({
    bool hasError = false,
    double fontSize = 14,
    double lineHeight = 1.5,
    bool hasSpacing = true,
  }) {
    return Text(
      data ?? '',
      style: TextStyle(
        color: hasError ? Colors.red : AppColors.text500,
        fontWeight: FontWeight.w600,
        fontSize: fontSize.sp,
        letterSpacing: hasSpacing ? -0.2.sp : null,
        height: lineHeight,
      ),
    );
  }

  Text description({bool hasError = false}) {
    return Text(
      data ?? '',
      style: TextStyle(
        color: hasError ? Colors.red : AppColors.text400,
        fontWeight: FontWeight.w400,
        fontSize: 14.sp,
        height: 1.57,
      ),
    );
  }

  Text hint({bool hasError = false}) {
    return Text(
      data ?? '',
      style: TextStyle(
        color: hasError ? Colors.red : AppColors.textHint,
        fontWeight: FontWeight.w400,
        fontSize: 14.sp,
      ),
    );
  }
}
