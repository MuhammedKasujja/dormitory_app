import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class VoucherTermsAndConditions extends StatelessWidget {
  final List<String> teramAndConditions;
  const VoucherTermsAndConditions({
    super.key,
    required this.teramAndConditions,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Terms and Conditions:',
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
            height: 1.25,
            letterSpacing: -0.16.sp,
            color: AppColors.text500,
          ),
        ),
        Spacing.small(),
        ...teramAndConditions
            .map(
              (tc) => Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.r),
                    child: Container(
                      width: 4.w,
                      height: 4.w,
                      decoration: BoxDecoration(
                        color: AppColors.text400,
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Text(
                      tc,
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        height: 1.57,
                        color: AppColors.text400,
                      ),
                    ),
                  ),
                ],
              ),
            )
            .toList()
      ],
    );
  }
}
