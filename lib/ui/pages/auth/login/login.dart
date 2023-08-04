import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(16.r),
          children: [
            Center(
              child: SizedBox(
                height: 60.h,
                width: 205.w,
                child: Image.asset(Assets.logo),
              ),
            ),
            const SizedBox().medium(),
            const LoginHeader(),
            const SizedBox().large(),
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
                  onTap: () {},
                )
              ],
            ),
            const SizedBox().scaleHeight(25),
            CustomButton(onPressed: () {}, label: 'Login'),
            const SizedBox().large(),
            const ORWidget(),
            const SizedBox().large(),
            LoginOptionButton(
              icon: Icons.abc,
              text: 'Continue with Google',
              onPressed: () {},
            ),
            const SizedBox().small(),
            LoginOptionButton(
              icon: Icons.abc,
              text: 'Sign Up With Facebook',
              onPressed: () {},
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
