import 'package:dormitory_app/infra/infra.dart';
import 'package:flutter/material.dart';

class LanguageDropdown extends StatelessWidget {
  const LanguageDropdown({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 220.w,
        padding: EdgeInsets.all(16.r),
        decoration: BoxDecoration(
          color: AppColors.backgroundLight,
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(
            color: AppColors.divider,
            width: 1.r,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'English',
              style: TextStyle(color: AppColors.text3, fontSize: 14.sp),
            ),
            SizedBox(
              width: 16.w,
              height: 16.w,
              child: const Icon(Icons.arrow_drop_down),
            ),
          ],
        ),
      ),
    );
  }
}
