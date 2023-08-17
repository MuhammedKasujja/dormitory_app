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
}
