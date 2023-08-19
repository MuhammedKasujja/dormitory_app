import 'package:dormitory_app/infra/infra.dart';
import 'package:flutter/material.dart';

class ContactUsOption extends StatelessWidget {
  final String name;
  final String? value;
  final Widget icon;
  const ContactUsOption({super.key, required this.name, this.value, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical:24.r),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            name,
            style: TextStyle(
              fontSize: 20.sp,
              color: AppColors.text1,
              height: 1.15,
              letterSpacing: -0.2.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
