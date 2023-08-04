import 'package:dormitory_app/infra/infra.dart';
import 'package:flutter/material.dart';

extension SizedBoxExtension on SizedBox {
  SizedBox scaleHeight(double height) {
    return SizedBox(
      height: height.h,
    );
  }

  SizedBox small() {
    return SizedBox(
      height: 16.h,
    );
  }

  SizedBox medium() {
    return SizedBox(
      height: 24.h,
    );
  }

  SizedBox large() {
    return SizedBox(
      height: 40.h,
    );
  }
}
