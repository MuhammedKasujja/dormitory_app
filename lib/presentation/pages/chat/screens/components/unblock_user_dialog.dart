import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;

class UnBlockDialog extends StatelessWidget {
  final Function onAction;
  final types.User user;
  const UnBlockDialog({
    super.key,
    required this.onAction,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.transparent,
      content: Container(
        padding: EdgeInsets.all(20.r),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Unblock ${user.firstName} ${user.lastName}?',
              style: TextStyle(
                fontSize: 16.sp,
                color: AppColors.text1,
                fontWeight: FontWeight.w600,
                letterSpacing: -0.16.sp,
                height: 20.sp,
              ),
            ),
            const SizedBox().large(),
            Row(
              children: [
                Flexible(
                  child: TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text(
                      'Cancel',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: AppColors.text1,
                        fontWeight: FontWeight.w600,
                        height: 22.sp,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 12.w),
                Flexible(
                  child: CustomButton(
                    onPressed: () {
                      Navigator.pop(context);
                      onAction();
                    },
                    label: 'Unblock',
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
