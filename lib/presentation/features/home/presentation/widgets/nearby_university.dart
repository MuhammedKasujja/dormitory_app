import 'package:dormitory_app/infra/infra.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../domain/entities/university.dart';
import '../constants/constants.dart';

class NearbyUniversity extends StatelessWidget {
  final University university;
  const NearbyUniversity({super.key, required this.university});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(8.r),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(color: AppColors.divider),
          color: AppColors.backgroundLight,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16.r,
            vertical: 12.r,
          ),
          child: Row(
            children: [
              SvgPicture.asset(universityIcon),
              SizedBox(width: 12.w),
              Text(
                university.name,
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
      ),
    );
  }
}
