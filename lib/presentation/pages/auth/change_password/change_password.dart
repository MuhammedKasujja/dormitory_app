import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/presentation/router/router.dart';
import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:dormitory_app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:formz/formz.dart';

import '../sign_up/widgets/password_checker.dart';
import 'bloc/change_password_bloc.dart';

class ChangePasswordPage extends StatelessWidget {
  const ChangePasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text('Change your password'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.r),
        child: SingleChildScrollView(
          child: BlocProvider(
            create: (context) => ChangePasswordBloc(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BlocBuilder<ChangePasswordBloc, ChangePasswordState>(
                  buildWhen: (previous, current) =>
                      previous.oldPassword != current.oldPassword,
                  builder: (context, state) {
                    return CustomPasswordfield(
                      isNewPassword: false,
                      onChange: (value) => context
                          .read<ChangePasswordBloc>()
                          .oldPasswordChanged(value),
                      label: 'Current Password',
                      hint: 'Current password',
                      errorText: state.oldPassword.displayError != null
                          ? 'invalid password'
                          : null,
                    );
                  },
                ),
                const SizedBox().medium(),
                BlocBuilder<ChangePasswordBloc, ChangePasswordState>(
                  buildWhen: (previous, current) =>
                      previous.password != current.password,
                  builder: (context, state) {
                    return CustomPasswordfield(
                      onChange: (value) => context
                          .read<ChangePasswordBloc>()
                          .newPasswordChanged(value),
                      label: 'New Password',
                      hint: 'Enter new password',
                    );
                  },
                ),
                BlocBuilder<ChangePasswordBloc, ChangePasswordState>(
                  builder: (context, state) {
                    return NewPasswordChecker(
                      validator: state.password.displayError,
                    );
                  },
                ),
                const SizedBox().medium(),
                BlocBuilder<ChangePasswordBloc, ChangePasswordState>(
                  buildWhen: (previous, current) =>
                      previous.password != current.password ||
                      previous.confirmedPassword != current.confirmedPassword,
                  builder: (context, state) {
                    return CustomPasswordfield(
                      hint: 'Re-enter password',
                      label: 'Confirm Password',
                      onChange: (value) => context
                          .read<ChangePasswordBloc>()
                          .confirmedPasswordChanged(value),
                      errorText: state.confirmedPassword.displayError != null
                          ? 'password do not match'
                          : null,
                    );
                  },
                ),
                const SizedBox().large(),
                BlocConsumer<ChangePasswordBloc, ChangePasswordState>(
                  listener: (context, state) {
                    if (state.status.isSuccess) {
                      showDialog(
                        context: context,
                        builder: (ctx) => AppAlertDialog(
                          btnText: 'Proceed to Login',
                          icon: SvgPicture.string(Assets.accountVerifiedIcon),
                          title: 'Password Updated Successfully',
                          onAction: () =>
                              Navigator.pushNamed(context, Routes.login),
                        ),
                      );
                    } else if (state.status.isFailure) {
                      Utility.showAlert(state.errorMessage);
                    }
                  },
                  builder: (context, state) {
                    return CustomButton(
                      loading: state.status.isInProgress,
                      label: 'Update',
                      onPressed: state.isValid
                          ? () {
                              context
                                  .read<ChangePasswordBloc>()
                                  .changePasswordFormSubmitted();
                            }
                          : null,
                    );
                  },
                ),
                const SizedBox().small(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
