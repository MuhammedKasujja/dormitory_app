import 'package:dormitory_app/infra/infra.dart';
import 'package:flutter/material.dart';

class NotificationSettingItem extends StatelessWidget {
  final String title;
  final bool isActive;
  const NotificationSettingItem({
    super.key,
    required this.title,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(16.r),
        child: Row(
          children: [
            Flexible(
              child: Text(
                title,
                style: TextStyle(
                  color: AppColors.text2,
                  fontSize: 16.sp,
                ),
              ),
            ),
            SizedBox(width: 24.w),
          ],
        ),
      ),
    );
  }
}
