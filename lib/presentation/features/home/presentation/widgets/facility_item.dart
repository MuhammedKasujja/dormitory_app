import 'package:dormitory_app/infra/infra.dart';
import 'package:flutter/material.dart';

import '../../domain/entities/dormitory_facility.dart';

class DormitoryFacilityItem extends StatelessWidget {
  final DormitoryFacility facilityItem;
  const DormitoryFacilityItem({super.key, required this.facilityItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 8.r),
      padding: EdgeInsets.symmetric(
        horizontal: 4.r,
        vertical: 2.r,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.r),
        border: Border.all(
          color: AppColors.divider,
        ),
      ),
      child: Text(
        facilityItem.name,
        style: TextStyle(
          color: AppColors.text500,
          fontSize: 8.sp,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
