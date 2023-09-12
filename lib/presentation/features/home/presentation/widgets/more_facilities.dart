import 'package:dormitory_app/infra/infra.dart';
import 'package:flutter/material.dart';

class FacilityMoreIcon extends StatelessWidget {
  final int count;
  const FacilityMoreIcon({super.key, required this.count});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 4.r,
        vertical: 2.r,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.r),
          border: Border.all(
            color: AppColors.divider,
          )),
      child: Text(
        '+ $count More',
        style: TextStyle(
          color: AppColors.text500,
          fontSize: 8.sp,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
