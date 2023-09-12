import 'package:dormitory_app/app.dart';
import 'package:dormitory_app/infra/infra.dart';
import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
// import 'package:hive_flutter/hive_flutter.dart';
import 'di_container.dart' as di;

void main() async {
  await di.init();
  await ScreenUtil.ensureScreenSize();
  WidgetsFlutterBinding.ensureInitialized();
  // await Hive.initFlutter();
  // Hive.registerAdapter(DormitoryAdapter());
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
      child: const App(),
    ),
  );
}
