import 'package:dormitory_app/infra/infra.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final bool loading;
  final void Function()? onPressed;
  final String label;
  final bool isLogin;
  const CustomButton({
    Key? key,
    this.loading = false,
    required this.onPressed,
    required this.label,
    this.isLogin = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size.fromHeight(42),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6.r),
          ),
          backgroundColor: AppColors.primary,
        ),
        onPressed: onPressed,
        child: loading
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 18.h,
                    width: 28.w,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10.0).r,
                      child: CircularProgressIndicator(
                        color: Colors.white,
                        strokeWidth: 2.r,
                      ),
                    ),
                  ),
                  isLogin
                      ? Text(
                          "Signing in...",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      : const SizedBox.shrink(),
                ],
              )
            : Text(
                label,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
      ),
    );
  }
}
