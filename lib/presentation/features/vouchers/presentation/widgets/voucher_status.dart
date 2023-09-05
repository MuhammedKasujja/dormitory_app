import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/presentation/features/vouchers/data/models/models.dart';
import 'package:flutter/material.dart';

class VoucherStatusWidget extends StatelessWidget {
  final VoucherStatus status;
  const VoucherStatusWidget({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        children: [
          Container(
            width: 12.w,
            height: 12.w,
            decoration: BoxDecoration(
              color: status.isActive
                  ? Colors.green
                  : status.isExpired
                      ? AppColors.error500
                      : AppColors.text100,
              borderRadius: BorderRadius.circular(50.r),
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          Text(
            status.label,
            style: TextStyle(
              fontSize: 12.sp,
              height: 1.5,
              color: AppColors.text300,
            ),
          ),
        ],
      ),
    );
  }
}
