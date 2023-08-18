import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/logic/logic.dart';
import 'package:dormitory_app/models/models.dart';
import 'package:dormitory_app/presentation/pages/base_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'components/notification_setting_item.dart';

class NotificationSettingsScreen extends StatelessWidget {
  const NotificationSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsCubit, SettingsState>(
      builder: (context, state) {
        return BasePage(
          title: LocaleKeys.notifications.tr(),
          children: [
            NotificationSettingItem(
              title: LocaleKeys.email.tr().capitalize(),
              isActive: state.enabledEmailNotifications,
              notificationType: NotificationType.email,
            ),
            NotificationSettingItem(
              title: 'SMS',
              isActive: state.enabledSmsNotifications,
              notificationType: NotificationType.sms,
            ),
            NotificationSettingItem(
              isActive: state.enabledPushNotifications,
              title: 'Push Notifications',
              notificationType: NotificationType.pushNotifications,
            ),
            NotificationSettingItem(
              title: 'Promotions',
              isActive: state.enabledPromotionNotifications,
              notificationType: NotificationType.promotions,
            ),
          ],
        );
      },
    );
  }
}
