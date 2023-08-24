import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

import 'opt_code_input.dart';

class OTPVerificationForm extends StatelessWidget {
  const OTPVerificationForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Enter OTP',
          style: TextStyle(
            fontSize: 28.sp,
            color: AppColors.text1,
            fontWeight: FontWeight.w700,
          ),
        ),
        const Spacing(12),
        const Text(
          'We’ve sent to your email victoremok****@gmail.com a verification code, please enter the code:',
        ).labelFromSize(12),
        Spacing.large(),
        const Center(child: OtpCodeInput()),
        Spacing.large(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const Text("Didn't receive any code? Resend in ")
                    .labelFromSize(12),
                SizedBox(width: 8.w),
                Text(
                  '0:30',
                  style: TextStyle(color: Colors.green, fontSize: 12.sp),
                )
              ],
            ),
            Text(
              'Resend OTP',
              style: TextStyle(
                color: AppColors.text1,
                fontWeight: FontWeight.w400,
                fontSize: 12.sp,
                decoration: TextDecoration.underline,
              ),
            )
          ],
        ),
      ],
    );
  }
}
