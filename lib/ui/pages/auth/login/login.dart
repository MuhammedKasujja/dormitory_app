import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/ui/pages/auth/sign_up/widgets/sign_up_form.dart';
import 'package:dormitory_app/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'widgets/widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  int currentForm = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(16.r),
          children: [
            const SizedBox().small(),
            Center(
              child: SizedBox(
                height: 60.h,
                width: 205.w,
                child: Image.asset(Assets.logo),
              ),
            ),
            const SizedBox().medium(),
            LoginHeader(
              onToggle: (int selectedIndex) {
                setState(() {
                  currentForm = selectedIndex;
                });
              },
            ),
            const SizedBox().large(),
            currentForm == 0 ? const LoginForm() : const SignupForm(),
            const SizedBox().large(),
            const ORWidget(),
            const SizedBox().large(),
            LoginOptionButton(
              icon: SvgPicture.string(Assets.googleIcon),
              text: 'Continue with Google',
              onPressed: () {},
            ),
            const SizedBox().small(),
            LoginOptionButton(
              icon: SvgPicture.string(Assets.facebookIcon),
              text: 'Sign Up With Facebook',
              onPressed: () {},
            ),
            const SizedBox().small(),
            Center(
              child: Text.rich(
                TextSpan(text: 'Continue as a ', children: [
                  TextSpan(
                      text: 'Guest',
                      style: TextStyle(
                        color: AppColors.primary,
                      ))
                ]),
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: AppColors.text1,
                  fontSize: 12.sp,
                ),
              ),
            ),
            const SizedBox().medium(),
          ],
        ),
      ),
    );
  }
}
