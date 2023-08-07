

import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/presentation/router/router.dart';
import 'package:flutter/material.dart';

import 'presentation/pages/pages.dart';

class AppPage extends StatefulWidget {
  const AppPage({super.key});

  @override
  State<AppPage> createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  
  @override
  Widget build(BuildContext _) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'DormitoryApp',
          debugShowCheckedModeBanner: false,
          // supportedLocales: context.supportedLocales,
          // locale: context.locale,
          theme: AppTheme.light(context),
          onGenerateRoute: onGenerateRoute,
          home: child,
        );
      },
      child: const LoginPage(),
    );
  }
}