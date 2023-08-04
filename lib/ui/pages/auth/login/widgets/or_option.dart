import 'package:dormitory_app/infra/infra.dart';
import 'package:flutter/material.dart';

class ORWidget extends StatelessWidget {
  const ORWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: Divider(
            color: AppColors.divider,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child:  const Text('Or'),
        ),
        Expanded(
          child: Divider(
            color: AppColors.divider,
          ),
        ),
      ],
    );
  }
}
