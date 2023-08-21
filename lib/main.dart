import 'package:dormitory_app/app.dart';
import 'package:dormitory_app/infra/infra.dart';
import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('en'),
        Locale('tr'),
        ...FormBuilderLocalizations.supportedLocales
      ],
      path: Assets.translations, // path of the translation files
      fallbackLocale: const Locale('en'),
      startLocale: const Locale('en'),
      useFallbackTranslations: true,
      child: const AppPage(),
    ),
  );
}
