import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/presentation/pages/auth/sign_up/widgets/password_checker.dart';
import 'package:dormitory_app/presentation/router/router.dart';
import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:formz/formz.dart';

import '../bloc/sign_up_bloc.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpBloc(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BlocBuilder<SignUpBloc, SignUpState>(
            builder: (context, state) {
              return CustomTextfield(
                onChange: (firstname) => context
                    .read<SignUpBloc>()
                    .add(SignupFirstnameChanged(firstname)),
                label: 'First name',
                hint: 'Please enter you first name',
                errorText: state.firstname.displayError != null
                    ? 'firstname is required'
                    : null,
              );
            },
          ),
          const SizedBox().scaleHeight(10),
          BlocBuilder<SignUpBloc, SignUpState>(
            builder: (context, state) {
              return CustomTextfield(
                onChange: (lastname) => context
                    .read<SignUpBloc>()
                    .add(SignupLastnameChanged(lastname)),
                label: 'Last name',
                hint: 'Please enter your last name',
                errorText: state.lastname.displayError != null
                    ? 'lastname is required'
                    : null,
              );
            },
          ),
          const SizedBox().scaleHeight(10),
          BlocBuilder<SignUpBloc, SignUpState>(
            builder: (context, state) {
              return CustomTextfield(
                inputType: TextInputType.emailAddress,
                onChange: (email) =>
                    context.read<SignUpBloc>().add(SignupEmailChanged(email)),
                label: 'Eamil address',
                hint: 'Please enter email or phone number',
                errorText: state.email.displayError != null
                    ? 'Please use a valid email'
                    : null,
              );
            },
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
                  child: BlocBuilder<SignUpBloc, SignUpState>(
                    builder: (context, state) {
                      return CustomTextfield(
                        onChange: (telephone) => context
                            .read<SignUpBloc>()
                            .add(SignupTelephoneChanged(telephone)),
                        label: '',
                        hint: '0000 000 0000',
                        inputType: TextInputType.phone,
                        errorText: state.lastname.displayError != null
                            ? 'field is required'
                            : null,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          // const SizedBox().scaleHeight(10),
          BlocBuilder<SignUpBloc, SignUpState>(
            buildWhen: (previous, current) =>
                previous.password != current.password,
            builder: (context, state) {
              return CustomPasswordfield(
                onChange: (password) => context
                    .read<SignUpBloc>()
                    .add(SignupPasswordChanged(password)),
                label: 'Password',
                hint: 'Please enter password',
              );
            },
          ),
          BlocBuilder<SignUpBloc, SignUpState>(
            buildWhen: (previous, current) =>
                previous.password != current.password,
            builder: (context, state) {
              print('PasswordChecker: ${state.password.displayError}');
              if (!state.password.isPure) {
                return NewPasswordChecker(
                  validator: state.password.displayError,
                );
              }
              return SizedBox.shrink();
            },
          ),
          const SizedBox().scaleHeight(25),
          BlocConsumer<SignUpBloc, SignUpState>(
            listener: (context, state) {
              if (state.status.isSuccess) {
                showDialog(
                  context: context,
                  builder: (ctx) => AppAlertDialog(
                    btnText: 'Continue',
                    icon: SvgPicture.string(Assets.otpCodeEmailSentIcon),
                    title: 'OTP code sent to your email',
                    body: 'We have just sent you an email with the OTP code.',
                    onAction: () =>
                        Navigator.pushNamed(context, Routes.verifyOtp),
                  ),
                );
              }
            },
            builder: (context, state) {
              return CustomButton(
                loading: state.status.isInProgress,
                label: 'Continue',
                onPressed: state.isValid
                    ? () {
                        context.read<SignUpBloc>().add(const SignupSubmitted());
                      }
                    : null,
              );
            },
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
      ),
    );
  }
}
