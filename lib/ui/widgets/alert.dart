import 'package:dormitory_app/infra/infra.dart';
import 'package:flutter/material.dart';

class Alert extends StatelessWidget {
  final String message;
  const Alert({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.r),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(6.r),
      ),
      child: Text(message),
    );
  }
}
