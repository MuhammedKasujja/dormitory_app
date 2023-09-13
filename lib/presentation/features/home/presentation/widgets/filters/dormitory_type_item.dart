import 'package:dormitory_app/infra/infra.dart';
import 'package:flutter/material.dart';

import '../../../data/models/models.dart';

class DormitoryTypeFilterItem extends StatelessWidget {
  final DormitoryType dormitoryType;
  const DormitoryTypeFilterItem({super.key, required this.dormitoryType});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: 16.r,
        vertical: 12.r,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: AppColors.divider),
        color: AppColors.backgroundLight,
      ),
      child: Text(
        '${dormitoryType.label} dormitories',
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
