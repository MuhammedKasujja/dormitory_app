import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ContactUsOption extends StatelessWidget {
  final String name;
  final String? value;
  final Widget icon;
  const ContactUsOption(
      {super.key, required this.name, this.value, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(child: icon,),
              SizedBox(width: 12.w),
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
          const SizedBox().scaleHeight(value == null ? 0 : 8),
          value != null ? Text(value!).description() : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
