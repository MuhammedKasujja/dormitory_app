import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/presentation/pages/auth/auth.dart';
import 'package:dormitory_app/presentation/pages/country_codes/country_codes.dart';
import 'package:dormitory_app/presentation/pages/profile/complete_profile/presentation/cubit/complete_profile_cubit.dart';
import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VerifyOtpScreen extends StatelessWidget {
  const VerifyOtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Verify Phone Number',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 28.sp,
                  height: 1.21,
                  letterSpacing: -0.56.sp,
                  color: AppColors.text500,
                ),
              ),
              const Spacing(12),
              Text(
                'Enhance Account Security, Verify Phone Number',
                style: TextStyle(
                  color: AppColors.text400,
                  fontWeight: FontWeight.w400,
                  fontSize: 12.sp,
                  height: 1.5,
                ),
              ),
              Spacing.large(),
              const Text('Phone number').label(),
              Container(
                // change the textfiled position to hide empty label
                transform: Matrix4.translationValues(0.0, -12.h, 0.0),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 24.r, 16.r, 0),
                      child: const CountryCodesDropdown(),
                    ),
                    Flexible(
                      child: CustomTextfield(
                        onChange: (telephone) {},
                        label: '',
                        hint: '0000 000 0000',
                        inputType: TextInputType.phone,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        CustomButton(
          label: 'Continue',
          onPressed: () {
            _showAppDialog(context);
          },
        ),
      ],
    );
  }

  _showAppDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (ctx) => AppAlertDialog(
        btnText: 'Continue',
        icon: SvgPicture.string(Assets.optCodePhoneSentIcon),
        title: 'OTP code sent to your phone number',
        body: 'We have just sent you an sms with the OTP code.',
        onAction: () {
          _showVerifyOtpBottomSheet(context);
        },
      ),
    );
  }

  _showVerifyOtpBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(16.r),
        ),
      ),
      builder: (context) {
        return BaseBottomSheet(
          title: 'OTP Verification',
          content: Column(
            children: [
              const OTPVerificationForm(),
              const Spacing(120),
              CustomButton(
                label: 'Continue',
                onPressed: () {
                  Navigator.pop(context);
                  _showSuccessVerifiedOtpBottomSheet(context);
                },
              )
            ],
          ),
        );
      },
    );
  }

  _showSuccessVerifiedOtpBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(16.r),
        ),
      ),
      builder: (context) {
        return BaseBottomSheet(
          title: 'OTP Verification',
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.string(
                Assets.accountVerifiedIcon,
                width: 80,
                height: 80,
              ),
              Spacing.medium(),
              Text(
                'Phone number verified successfully',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20.sp,
                  height: 1.15,
                  color: AppColors.text500,
                ),
              ),
              Spacing.xs(),
              Text(
                'Your code is valid and you can proceed ',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12.sp,
                  height: 1.5,
                  color: AppColors.text400,
                ),
              ),
              const Spacing(80),
              CustomButton(
                onPressed: () {
                  Navigator.pop(context);
                  context
                      .read<CompleteProfileCubit>()
                      .activatedAddititionalInforSection();
                },
                label: 'Continue',
              )
            ],
          ),
        );
      },
    );
  }
}
