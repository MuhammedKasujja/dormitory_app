import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

import '../calendar.dart';

class DateMoveInFilter extends StatelessWidget {
  const DateMoveInFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return const BaseBottomSheet(
      title: 'Move In Date',
      hasClose: false,
      content: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _MoveInDateOption(title: 'Tomorrow'),
              _MoveInDateOption(title: 'Next week'),
              _MoveInDateOption(title: 'Next month'),
            ],
          ),
          Calendar(),
        ],
      ),
    );
  }
}

class _MoveInDateOption extends StatelessWidget {
  final String title;
  const _MoveInDateOption({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 12.r,
        horizontal: 16.r,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: AppColors.divider),
        color: AppColors.backgroundLight,
      ),
      child: Text(
        title,
        style: TextStyle(
          color: AppColors.text400,
          fontSize: 14.sp,
          fontWeight: FontWeight.w600,
          height: 1.57,
        ),
      ),
    );
  }
}
