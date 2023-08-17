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
          // const SizedBox().small(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: CustomCheckbox(
                    child: Text(
                  'Remember this password',
                  style: TextStyle(color: AppColors.text2, fontSize: 12.sp),
                )),
              ),
              InkWell(
                child: Text(
                  'Forgot password?',
                  style: TextStyle(color: AppColors.text1, fontSize: 14.sp),
                ),
                onTap: () =>
                    Navigator.pushNamed(context, Routes.changePassword),
              )
            ],
          ),
          const SizedBox().scaleHeight(25),
          BlocConsumer<LoginBloc, LoginState>(
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
}
