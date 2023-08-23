import 'package:dormitory_app/logic/logic.dart';
import 'package:dormitory_app/presentation/pages/pages.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'presentation/pages/country_codes/cubit/country_codes_cubit.dart';

final sl = GetIt.I;

Future init() async {
  // Core
  // sl.registerLazySingleton(() => ApiClient(dio: sl()));

  // Repository
  sl.registerLazySingleton(() => AuthRepository());

  // Blocs
  sl.registerFactory(() => AuthBloc());
  sl.registerFactory(() => SettingsCubit());
  sl.registerFactory(() => CountryCodesCubit());

  // External
  // sl.registerLazySingleton(() => Dio());
}

List<BlocProvider> get blocs => [
      BlocProvider<AuthBloc>(create: (context) => sl<AuthBloc>()),
      BlocProvider<SettingsCubit>(create: (context) => SettingsCubit()),
      BlocProvider<CountryCodesCubit>(create: (context) => CountryCodesCubit()),
    ];

Future resetBlocs() async {
  sl<AuthBloc>().add(const AuthUserUnknown());
}
