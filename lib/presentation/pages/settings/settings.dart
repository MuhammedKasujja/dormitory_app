import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

import '../base_page.dart';
import 'widgets/settings_item.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
      title: LocaleKeys.settings.tr(),
      children: [
        const SettingsItem(title: 'Password', description: 'Change Password'),
        const Divider(height: 1),
        const SizedBox().small(),
        const SettingsItem(
          title: 'Notification',
          description: 'Get notified about availability, price and promotions',
        ),
        const Divider(height: 1),
        const SizedBox().small(),
        const SettingsItem(
          title: 'Time Zone',
          description: 'Sync all of details to your region automatically',
        ),
        const Divider(height: 1),
        const SizedBox().small(),
        const SettingsItem(
          title: 'Personalized Recommendation',
          description: 'Receive personalized recommendations',
        ),
        const Divider(height: 1),
      ],
    );
  }
}
