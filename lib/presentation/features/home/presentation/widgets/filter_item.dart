import 'package:dormitory_app/infra/infra.dart';
import 'package:flutter/material.dart';

class FilterItem extends StatelessWidget {
  final String hint;
  final IconData icon;
  const FilterItem({super.key, required this.hint, required this.icon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(16.r),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(color: AppColors.divider),
          color: AppColors.backgroundLight,
        ),
        child: Row(
          children: [
            Icon(
              icon,
              size: 16.w,
              color: AppColors.text200,
            ),
            SizedBox(width: 16.w),
            Text(
              hint,
              style: TextStyle(
                color: AppColors.text200,
                fontSize: 14.sp,
                height: 1.57,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
