import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ContactUsOption extends StatelessWidget {
  final String name;
  final String? value;
  final String iconPath;
  const ContactUsOption(
      {super.key, required this.name, this.value, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 24.w,
                height: 24.w,
                child: SvgPicture.string(
                  iconPath,
                  colorFilter: ColorFilter.mode(
                    AppColors.primary,
                    BlendMode.srcIn,
                  ),
                ),
              ),
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
