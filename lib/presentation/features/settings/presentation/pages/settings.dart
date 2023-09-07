import 'package:dormitory_app/core/core.dart';
import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/presentation/router/router.dart';
import 'package:dormitory_app/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/settings_cubit.dart';
import '../widgets/widgets.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BasePage(
      title: LocaleKeys.settings.tr(),
      children: [
        const SettingsItem(
          title: 'Password',
          description: 'Change Password',
          route: Routes.changePassword,
        ),
        const Divider(height: 1),
        const SizedBox().small(),
        const SettingsItem(
          title: 'Notification',
          description: 'Get notified about availability, price and promotions',
          route: Routes.notificationSettings,
        ),
        const Divider(height: 1),
        const SizedBox().small(),
        SettingsItem(
          title: 'Time Zone',
          description: 'Sync all of details to your region automatically',
          child: BlocBuilder<SettingsCubit, SettingsState>(
            builder: (context, state) {
              return SwitchToggle(
                isActive: state.syncTimezones,
                onToggle: (value) => context
                    .read<SettingsCubit>()
                    .syncDetailsBasedOnTimezone(value),
              );
            },
          ),
        ),
        const Divider(height: 1),
        const SizedBox().small(),
        SettingsItem(
          title: 'Personalized Recommendation',
          description: 'Receive personalized recommendations',
          child: BlocBuilder<SettingsCubit, SettingsState>(
            builder: (context, state) {
              return SwitchToggle(
                isActive: state.receivePersonalizeNotifications,
                onToggle: (value) => context
                    .read<SettingsCubit>()
                    .receivePersonallisedRecommendations(value),
              );
            },
          ),
        ),
        const Divider(height: 1),
      ],
    );
  }
}
