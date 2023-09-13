import 'package:dio/dio.dart';
import 'package:dormitory_app/presentation/features/features.dart';
import 'package:dormitory_app/presentation/features/home/domain/repositories/city_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';

import 'presentation/features/country_codes/country_codes.dart';

final sl = GetIt.I;

Future init() async {
  // Core
  // sl.registerLazySingleton(() => ApiClient(dio: sl()));

  // Box<Dormitory> dormitoryBox = await Hive.openBox<Dormitory>('dormitory_box');
  // sl.registerLazySingleton(() => dormitoryBox);

  // Repository
  sl.registerLazySingleton(() => AuthRepository());
  sl.registerLazySingleton(() => VourcherRepository());
  sl.registerLazySingleton<DormitoryRepository>(() => DormitoryRepositoryImp());
  sl.registerLazySingleton<UniversityRepo>(() => UniversityRepositoryImp());
  sl.registerLazySingleton<CityRepo>(() => CityRepositoryImp());
  // sl.registerLazySingleton<LocalDormitoryRepository>(
  //     () => LocalDormitoryRepositoryImp(dormitoryBox: sl()));

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
  sl.registerFactory(() => UniversityBloc(universityRepo: sl()));
  sl.registerFactory(() => CityBloc(cityRepo: sl()));
  sl.registerFactory(() => DormitoryBloc(dormitoryRepository: sl()));
  // sl.registerFactory(
  //   () => LocalDormitoryBloc(localDormitoryRepository: sl()),
  // );
  sl.registerFactory(() => RedeemVoucherCubit(vourcherRepository: sl()));

  // External
  sl.registerLazySingleton(() => Dio());
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
      // BlocProvider<LocalDormitoryBloc>(
      //     create: (context) => sl<LocalDormitoryBloc>()),
      BlocProvider<DormitoryBloc>(create: (context) => sl<DormitoryBloc>()),
      BlocProvider<UniversityBloc>(
          create: (context) =>
              sl<UniversityBloc>()..add(FetchPopularUniversities())),
      BlocProvider<CityBloc>(
          create: (context) => sl<CityBloc>()..add(const FetchPopularCities())),
    ];

Future resetBlocs() async {
  sl<AuthBloc>().add(const AuthUserUnknown());
}
