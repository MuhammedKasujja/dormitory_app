import 'package:dormitory_app/infra/infra.dart';
import 'package:flutter/material.dart';

class LoginOptionButton extends StatelessWidget {
  final Widget icon;
  final String text;
  final VoidCallback onPressed;
  const LoginOptionButton(
      {super.key,
      required this.icon,
      required this.text,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          side: BorderSide(color: AppColors.divider),
          shape: RoundedRectangleBorder 
          (borderRadius: BorderRadius.circular(8.r))
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon,
              SizedBox(
                width: 16.w,
              ),
              Text(
                text,
                style: TextStyle(
                  color: AppColors.text2,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
