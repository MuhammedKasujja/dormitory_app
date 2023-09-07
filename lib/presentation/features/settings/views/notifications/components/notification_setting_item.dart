import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/models/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../presentation/cubit/settings_cubit.dart';
import '../../../presentation/widgets/widgets.dart';

class NotificationSettingItem extends StatelessWidget {
  final String title;
  final bool isActive;
  final NotificationType notificationType;
  const NotificationSettingItem({
    super.key,
    required this.title,
    required this.isActive,
    required this.notificationType,
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
                      .enableNotifications(value, type: notificationType),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
