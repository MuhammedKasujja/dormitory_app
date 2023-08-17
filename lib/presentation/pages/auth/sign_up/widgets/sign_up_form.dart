import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/presentation/router/router.dart';
import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextfield(
           onChange: (value){},
          label: 'First name',
          hint: 'Please enter you first name',
        ),
        const SizedBox().scaleHeight(10),
        CustomTextfield(
           onChange: (value){},
          label: 'Last name',
          hint: 'Please enter your last name',
        ),
        const SizedBox().scaleHeight(10),
        CustomTextfield(
          onChange: (value){},
          label: 'Eamil address',
          hint: 'Please enter email or phone number',
        ),
        const SizedBox().scaleHeight(10),
        const Text('Phone number').label(),
        Container(
          // change the textfiled position to hide empty label
          transform: Matrix4.translationValues(0.0, -12.h, 0.0),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 24.r, 16.r, 0),
                height: 48.h,
                width: 94.w,
                decoration: BoxDecoration(
                  color: AppColors.backgroundLight,
                  borderRadius: BorderRadius.circular(8.r),
                  border: Border.all(color: AppColors.divider),
                ),
              ),
              Flexible(
                child: CustomTextfield(
                  onChange: (value){},
                  label: '',
                  hint: '0000 000 0000',
                ),
              ),
            ],
          ),
        ),
        // const SizedBox().scaleHeight(10),
        CustomPasswordfield(
          onChange: (value){},
          label: 'Password',
          hint: 'Please enter password',
        ),
        const SizedBox().scaleHeight(25),
        CustomButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (ctx) => AppAlertDialog(
                btnText: 'Continue',
                icon: SvgPicture.string(Assets.otpCodeEmailSentIcon),
                title: 'OTP code sent to your email',
                body: 'We have just sent you an email with the OTP code.',
                onAction: () => Navigator.pushNamed(context, Routes.verifyOtp),
              ),
            );
          },
          label: 'Continue',
        ),
        const SizedBox().small(),
        Center(
          child: Text(
            'By continuing you agree to the Paramount Students',
            style: TextStyle(
              color: AppColors.text1,
              fontSize: 12.sp,
            ),
          ),
        ),
        Center(
          child: Text.rich(
            TextSpan(text: 'Terms of Service', children: [
              TextSpan(
                text: ' and ',
                style: TextStyle(
                  color: AppColors.text1,
                ),
              ),
              const TextSpan(
                text: 'Privacy Policy',
              )
            ]),
            style: TextStyle(
              color: Colors.blue,
              fontSize: 12.sp,
            ),
          ),
        ),
      ],
    );
  }
}
