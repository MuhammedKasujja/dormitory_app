// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'settings_cubit.dart';

class SettingsState extends Equatable {
  final String lang;
  const SettingsState({this.lang = 'en'});

  SettingsState copyWith({
    String? lang,
  }) {
    return SettingsState(
      lang: lang ?? this.lang,
    );
  }

  @override
  List<Object> get props => [lang];
}
