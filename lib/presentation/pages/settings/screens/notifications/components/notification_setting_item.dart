import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/logic/logic.dart';
import 'package:dormitory_app/models/models.dart';
import 'package:dormitory_app/presentation/pages/settings/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotificationSettingItem extends StatelessWidget {
  final String title;
  final bool isActive;
  final NotificationType type;
  const NotificationSettingItem({
    super.key,
    required this.title,
    required this.isActive,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(16.r),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            BlocBuilder<SettingsCubit, SettingsState>(
              builder: (context, state) {
                return SwitchToggle(
                  isActive: isActive,
                  onToggle: (value) => context
                      .read<SettingsCubit>()
                      .enableNotifications(value, type: type),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
