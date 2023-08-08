

import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/presentation/router/router.dart';
import 'package:flutter/material.dart';

class AppPage extends StatelessWidget {
  const AppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'DormitoryApp',
          debugShowCheckedModeBanner: false,
          // supportedLocales: context.supportedLocales,
          // locale: context.locale,
          theme: AppTheme.light(context),
          onGenerateRoute: onGenerateRoute,
          home: child,
          initialRoute: Routes.login,
        );
      },
    );
  }
}