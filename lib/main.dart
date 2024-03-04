import 'package:dormitory_app/app.dart';
import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/presentation/features/home/home.dart';
import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'di_container.dart' as di;

void main() async {
  await ScreenUtil.ensureScreenSize();
  WidgetsFlutterBinding.ensureInitialized();
  final directory = await getApplicationDocumentsDirectory();
  Hive.defaultDirectory = directory.path;
  Hive.registerAdapter('saved_dorms', DormitoryModel.fromJson);
  await di.init();
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
