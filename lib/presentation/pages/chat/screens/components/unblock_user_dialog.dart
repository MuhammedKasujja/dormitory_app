import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;

class UnBlockDialog extends StatelessWidget {
  final Function(types.User user) onBlock;
  final types.User user;
  const UnBlockDialog({
    super.key,
    required this.onBlock,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      contentPadding: EdgeInsets.all(20.r),
      titlePadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.r),
      ),
      content: Column(
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
              height: 1.2,
            ),
          ),
          const SizedBox().scaleHeight(24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.all(2.r),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: AppColors.primary),
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                    ),
                    onPressed: () => Navigator.pop(context),
                    child: Text(
                      'Cancel',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: AppColors.text1,
                        fontWeight: FontWeight.w600,
                        height: 1.8,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 12.w),
              Flexible(
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                      onBlock(user);
                    },
                    child: Text(
                      'Unblock',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: AppColors.text1,
                        fontWeight: FontWeight.w600,
                        height: 1.8,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
