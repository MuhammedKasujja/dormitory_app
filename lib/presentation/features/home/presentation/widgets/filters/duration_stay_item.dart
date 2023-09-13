import 'package:dormitory_app/infra/infra.dart';
import 'package:flutter/material.dart';

import '../../../domain/entities/dormitory_stay_duration.dart';

class DurationStayItem extends StatelessWidget {
  final DormitoryStayDuration stayDuration;
  const DurationStayItem({super.key, required this.stayDuration});

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
      child: Row(
        children: [
          Icon(
            Icons.access_time,
            size: 20.w,
            color: AppColors.text200,
          ),
          SizedBox(width: 12.w),
          Text(
            stayDuration.text,
            style: TextStyle(
              color: AppColors.text400,
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
              height: 1.57,
            ),
          ),
        ],
      ),
    );
  }
}
