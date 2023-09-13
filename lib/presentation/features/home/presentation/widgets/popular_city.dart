import 'package:dormitory_app/infra/infra.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../domain/entities/city.dart';
import '../constants/constants.dart';

class PopularCity extends StatelessWidget {
  final City city;
  const PopularCity({super.key, required this.city});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(8.r),
      child: Container(
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
            SvgPicture.asset(universityIcon),
            SizedBox(width: 12.w),
            Text(
              city.name,
              style: TextStyle(
                color: AppColors.text400,
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                height: 1.57,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
