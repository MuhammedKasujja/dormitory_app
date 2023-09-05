import 'package:dormitory_app/infra/infra.dart';
import 'package:flutter/material.dart';

class VoucherValidity extends StatelessWidget {
  final String startTime;
  final String endTime;
  const VoucherValidity({
    super.key,
    required this.startTime,
    required this.endTime,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 4.r,
        horizontal: 12.r,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFF4F5F7),
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Text(
        'Valid From $startTime - $endTime',
        style: TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.w600,
          height: 1.5,
          color: AppColors.text400,
        ),
      ),
    );
  }
}
