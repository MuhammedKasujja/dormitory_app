import 'package:bloc/bloc.dart';
import 'package:dormitory_app/models/models.dart';
import 'package:equatable/equatable.dart';

part 'settings_state.dart';

class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit() : super(const SettingsState());

  void changeLocale(String lang) {
    emit(state.copyWith(lang: lang));
  }

  void enableNotifications(bool value, {required NotificationType type}) {
    if (type == NotificationType.sms) {
      emit(state.copyWith(enabledSmsNotifications: value));
    }
    if (type == NotificationType.email) {
      emit(state.copyWith(enabledEmailNotifications: value));
    }
    if (type == NotificationType.promotions) {
      emit(state.copyWith(enabledPromotionNotifications: value));
    }
    if (type == NotificationType.pushNotifications) {
      emit(state.copyWith(enabledPushNotifications: value));
    }
  }

  void syncDetailsBasedOnTimezone(bool value) {
    emit(state.copyWith(syncTimezones: value));
  }

  void receivePersonallisedRecommendations(bool value) {
    emit(state.copyWith(receivePersonalizeNotifications: value));
  }
}
