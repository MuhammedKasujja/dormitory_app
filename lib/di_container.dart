import 'package:dormitory_app/presentation/features/features.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'presentation/features/country_codes/country_codes.dart';

final sl = GetIt.I;

Future init() async {
  // Core
  // sl.registerLazySingleton(() => ApiClient(dio: sl()));

  // Repository
  sl.registerLazySingleton(() => AuthRepository());
  sl.registerLazySingleton(() => VourcherRepository());
  sl.registerLazySingleton<DormitoryRepository>(() => DormitoryRepositoryImp());
  sl.registerLazySingleton<LocalDormitoryRepository>(
      () => LocalDormitoryRepositoryImp());

  // Blocs
  sl.registerFactory(() => AuthBloc());
  sl.registerFactory(() => SettingsCubit());
  sl.registerFactory(() => CountryCodesCubit());
  sl.registerFactory(() => CompleteProfileCubit());
  sl.registerFactory(
    () => VouchersBloc(
      vourcherRepository: sl(),
      redeemVoucherCubit: sl(),
    ),
  );
  sl.registerFactory(
    () => DormitoryBloc(dormitoryRepository: sl()),
  );
  sl.registerFactory(
    () => LocalDormitoryBloc(localDormitoryRepository: sl()),
  );
  sl.registerFactory(() => RedeemVoucherCubit(vourcherRepository: sl()));

  // External
  // sl.registerLazySingleton(() => Dio());
}

List<BlocProvider> get blocs => [
      BlocProvider<AuthBloc>(create: (context) => sl<AuthBloc>()),
      BlocProvider<SettingsCubit>(create: (context) => sl<SettingsCubit>()),
      BlocProvider<CountryCodesCubit>(
          create: (context) => sl<CountryCodesCubit>()),
      BlocProvider<VouchersBloc>(
        create: (context) => sl<VouchersBloc>()..add(const FetchMyVourchers()),
      ),
      BlocProvider<RedeemVoucherCubit>(
          create: (context) => sl<RedeemVoucherCubit>()),
      BlocProvider<CompleteProfileCubit>(
          create: (context) => CompleteProfileCubit()),
      BlocProvider<LocalDormitoryBloc>(
          create: (context) => sl<LocalDormitoryBloc>()),
      BlocProvider<DormitoryBloc>(create: (context) => sl<DormitoryBloc>()),
    ];

Future resetBlocs() async {
  sl<AuthBloc>().add(const AuthUserUnknown());
}
