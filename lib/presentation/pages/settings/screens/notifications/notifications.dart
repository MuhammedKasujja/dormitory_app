import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/presentation/pages/base_page.dart';
import 'package:flutter/material.dart';

import 'components/notification_setting_item.dart';

class NotificationSettingsScreen extends StatelessWidget {
  const NotificationSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
      title: LocaleKeys.notifications.tr(),
      children: [
        NotificationSettingItem(title: LocaleKeys.email.tr().capitalize(),),
        NotificationSettingItem(title: 'SMS'),
        NotificationSettingItem(title: 'Push Notifications'),
        NotificationSettingItem(title: 'Promotions'),
      ],
    );
  }
}
