import 'package:dormitory_app/infra/infra.dart';
import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(3.sp),
        decoration: BoxDecoration(
          color: AppColors.background,
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: MaterialButton(
                minWidth: 160,
                height: 50,
                onPressed: () {
                  // model?.goToMobileLogin();
                },
                color: Colors.white,
                textColor: Colors.black,
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 14.sp),
                ),
              ),
            ),
            Expanded(
              child: MaterialButton(
                height: 50,
                minWidth: 175,
                onPressed: () {
                  // model?.goToEmailLogin();
                },
                elevation: 2,
                // color: model?.selectedLogin == model?.mobileLogin
                //     ? model?.selectedColor
                //     : model?.unavailableColor,
                textColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Text(
                  "Sign Up",
                  style: TextStyle(color: AppColors.textHint,fontSize: 14.sp),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
