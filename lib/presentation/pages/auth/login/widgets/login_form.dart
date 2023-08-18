import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/presentation/router/router.dart';
import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

import '../bloc/login_bloc.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(),
      child: Column(
        children: [
          BlocBuilder<LoginBloc, LoginState>(
            buildWhen: (previous, current) =>
                previous.username != current.username,
            builder: (context, state) {
              return CustomTextfield(
                onChange: (username) => context
                    .read<LoginBloc>()
                    .add(LoginUsernameChanged(username)),
                label: 'Phone number or Email Address',
                errorText: state.username.displayError != null
                    ? 'invalid username'
                    : null,
              );
            },
          ),
          const SizedBox().scaleHeight(10),
          BlocBuilder<LoginBloc, LoginState>(
            buildWhen: (previous, current) =>
                previous.password != current.password,
            builder: (context, state) {
              return CustomPasswordfield(
                label: 'Password',
                onChange: (password) => context.read<LoginBloc>().add(
                      LoginPasswordChanged(password),
                    ),
                errorText: state.password.displayError != null
                    ? 'invalid password'
                    : null,
              );
            },
          ),
          const SizedBox().small(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildRememberPassword(),
              InkWell(
                child: Text(
                  'Forgot password?',
                  style: TextStyle(
                    color: AppColors.text1,
                    fontSize: 12.sp,
                    height: 1.5,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                onTap: () =>
                    Navigator.pushNamed(context, Routes.forgotPassword),
              )
            ],
          ),
          const SizedBox().scaleHeight(25),
          BlocConsumer<LoginBloc, LoginState>(
            // buildWhen: (previous, current) => current.isValid,
            listener: (context, state) {
              if (state.status.isSuccess) {
                Navigator.pushNamed(context, Routes.home);
              }
            },
            builder: (context, state) {
              return CustomButton(
                loading: state.status.isInProgress,
                label: 'Login',
                onPressed: state.isValid
                    ? () {
                        context.read<LoginBloc>().add(const LoginSubmitted());
                      }
                    : null,
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildRememberPassword() {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return Flexible(
          child: InkWell(
            splashColor: Colors.transparent,
            onTap: () => context
                .read<LoginBloc>()
                .add(const LoginRememberPasswordChanged()),
            child: Row(
              children: [
                Container(
                  width: 18.w,
                  height: 18.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.r),
                    border: Border.all(
                      color: AppColors.text2,
                    ),
                  ),
                  child: state.isRememberPassword.value
                      ? Center(
                          child: Icon(
                            Icons.check,
                            size: 15.r,
                            color: Colors.green,
                          ),
                        )
                      : const SizedBox.shrink(),
                ),
                SizedBox(width: 4.w),
                Flexible(
                  child: Text(
                    'Remember this password',
                    style: TextStyle(
                      fontSize: 12.sp,
                      height: 1.5,
                      color: AppColors.text2,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
