import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ChangePasswordPage extends StatelessWidget {
  const ChangePasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.close),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.r),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Change your password',
                style: TextStyle(
                  fontSize: 28.sp,
                  color: AppColors.text1,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox().large(),
              CustomPasswordfield(
                isNewPassword: false,
                onChange: (value){},
                label: 'Current Password',
                hint: 'Current password',
              ),
              const SizedBox().medium(),
              CustomPasswordfield(
                onChange: (value){},
                label: 'New Password',
                hint: 'Enter new password',
              ),
              const SizedBox().medium(),
              CustomPasswordfield(
                hint: 'Re-enter password',
                onChange: (value){},
                label: 'Confirm Password',
              ),
              const SizedBox().large(),
              CustomButton(
                label: 'Update',
                onPressed: () {},
              ),
              const SizedBox().small(),
            ],
          ),
        ),
      ),
    );
  }
}
