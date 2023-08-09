import 'package:dormitory_app/infra/infra.dart';
import 'package:flutter/material.dart';

class SettingsItem extends StatelessWidget {
  final String title;
  final String description;
  final Widget? child;
  final String? route;
  const SettingsItem({
    super.key,
    required this.title,
    required this.description,
    this.child,
    this.route,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (route != null) {
          Navigator.pushNamed(context, route!);
        }
      },
      child: Container(
        padding: EdgeInsets.all(16.r),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: AppColors.text1,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Text(
                    description,
                    style: TextStyle(
                      color: AppColors.textHint,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(width: 24.w),
            child ??
                Icon(Icons.arrow_forward_ios,
                    size: 16.w, color: AppColors.iconLight),
          ],
        ),
      ),
    );
  }
}
