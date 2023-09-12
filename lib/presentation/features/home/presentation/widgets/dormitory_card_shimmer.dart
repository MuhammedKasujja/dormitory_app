import 'package:dormitory_app/infra/infra.dart';
import 'package:flutter/material.dart';

class DormitoryCardShimmer extends StatelessWidget {
  const DormitoryCardShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(15.r),
        border: Border.all(
          color: AppColors.divider,
        ),
      ),
    );
  }
}
