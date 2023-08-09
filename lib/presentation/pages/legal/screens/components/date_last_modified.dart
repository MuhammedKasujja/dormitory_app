import 'package:dormitory_app/infra/infra.dart';
import 'package:flutter/material.dart';

class DateLastModified extends StatelessWidget {
  const DateLastModified({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          LocaleKeys.dateLastModified.tr(),
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.text1,
          ),
        ),
        SizedBox(width: 8.w,),
        Text('15th May, 2023', style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            color: AppColors.text2,
          ),),
      ],
    );
  }
}
