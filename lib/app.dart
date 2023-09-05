import 'package:dormitory_app/infra/infra.dart';
import 'package:dormitory_app/presentation/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'di_container.dart' as di;

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: di.blocs,
      child: ScreenUtilInit(
        useInheritedMediaQuery: true,
        designSize: const Size(428, 926),
        minTextAdapt: true,
        builder: (context, child) {
          return MaterialApp(
            title: 'DormitoryApp',
            debugShowCheckedModeBanner: false,
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            theme: AppTheme.light(context),
            onGenerateRoute: onGenerateRoute,
            home: child,
            initialRoute: Routes.login,
          );
        },
      ),
    );
  }
}
