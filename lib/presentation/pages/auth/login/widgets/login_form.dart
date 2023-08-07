import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/presentation/router/router.dart';
import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextfield(
          controller: _emailController,
          label: 'Phone number or Email Address',
        ),
        const SizedBox().scaleHeight(10),
        CustomPasswordfield(
          controller: _passwordController,
          label: 'Password',
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
              onTap: () => Navigator.pushNamed(context, Routes.changePassword),
            )
          ],
        ),
        const SizedBox().scaleHeight(25),
        CustomButton(
          label: 'Login',
          onPressed: () {
            Navigator.pushNamed(context, Routes.home);
          },
        ),
      ],
    );
  }
}
