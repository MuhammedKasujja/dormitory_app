
import 'package:equatable/equatable.dart';

part of 'settings_cubit.dart';

class SettingsState extends Equatable {
  final String lang;
  final bool enabledEmailNotifications;
  final bool enabledSmsNotifications;
  final bool syncTimezones;
  final bool receivePersonalizeNotifications;
  final bool enabledPushNotifications;
  final bool enabledPromotionNotifications;

  const SettingsState({
    this.enabledEmailNotifications = false,
    this.enabledSmsNotifications = false,
    this.syncTimezones = false,
    this.receivePersonalizeNotifications = false,
    this.enabledPushNotifications = false,
    this.enabledPromotionNotifications = false,
    this.lang = 'en',
  });

  SettingsState copyWith({
    String? lang,
    bool? enabledEmailNotifications,
    bool? enabledSmsNotifications,
    bool? syncTimezones,
    bool? receivePersonalizeNotifications,
    bool? enabledPushNotifications,
    bool? enabledPromotionNotifications,
  }) {
    return SettingsState(
      lang: lang ?? this.lang,
      enabledEmailNotifications:
          enabledEmailNotifications ?? this.enabledEmailNotifications,
      enabledSmsNotifications:
          enabledSmsNotifications ?? this.enabledSmsNotifications,
      syncTimezones: syncTimezones ?? this.syncTimezones,
      receivePersonalizeNotifications:
          receivePersonalizeNotifications ?? this.receivePersonalizeNotifications,
      enabledPushNotifications:
          enabledPushNotifications ?? this.enabledPushNotifications,
      enabledPromotionNotifications:
          enabledPromotionNotifications ?? this.enabledPromotionNotifications,
    );
  }

  @override
  List<Object> get props {
    return [
      lang,
      enabledEmailNotifications,
      enabledSmsNotifications,
      syncTimezones,
      receivePersonalizeNotifications,
      enabledPushNotifications,
      enabledPromotionNotifications,
    ];
  }
}
