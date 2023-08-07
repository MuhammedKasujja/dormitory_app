import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'widgets/opt_code_input.dart';

class VerifyOtpPage extends StatefulWidget {
  const VerifyOtpPage({super.key});

  @override
  State<VerifyOtpPage> createState() => _VerifyOtpCodeState();
}

class _VerifyOtpCodeState extends State<VerifyOtpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.r),
        child: Column(
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
              const SizedBox().scaleHeight(12),
              const Text(
                'We’ve sent to your email victoremok****@gmail.com a verification code, please enter the code:',
              ).labelFromSize(12),
              const SizedBox().large(),
              const Center(child: OtpCodeInput()),
              const SizedBox().large(),
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
              const Spacer(),
              CustomButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (ctx) => AppAlertDialog(
                        btnText: 'Continue',
                        icon: SvgPicture.string(Assets.accountVerifiedIcon),
                        title: 'Email verified successfully',
                        body: 'Your code is valid and you can proceed ',
                        onAction: () {
                          Navigator.pop(context);
                        },
                      ),
                    );
                  },
                  label: 'Confirm Code'),
              const SizedBox().small(),
            ]),
      ),
    );
  }
}
