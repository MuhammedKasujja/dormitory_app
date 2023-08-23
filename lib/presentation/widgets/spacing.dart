import 'package:dormitory_app/infra/infra.dart';
import 'package:flutter/material.dart';

class Spacing {
  Spacing._();

  static final small = SizedBox(height: 16.h);

  static final medium = SizedBox(height: 24.h);

  static final large = SizedBox(height: 40.h);

  static fromHeight(double height) => SizedBox(height: height.h);
}
