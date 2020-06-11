// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:ualet_ddd/infrastructure/core/core_injectable_module.dart';
import 'package:dio/dio.dart';
import 'package:ualet_ddd/infrastructure/auth/local_user_mapper.dart';
import 'package:package_info/package_info.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ualet_ddd/infrastructure/auth/local_auth_facade.dart';
import 'package:ualet_ddd/domain/auth/i_auth_facade.dart';
import 'package:ualet_ddd/infrastructure/splash/params_repository.dart';
import 'package:ualet_ddd/domain/splash/i_splash_repository.dart';
import 'package:ualet_ddd/application/splash/splash_bloc.dart';
import 'package:ualet_ddd/application/auth/auth_bloc.dart';
import 'package:get_it/get_it.dart';

Future<void> $initGetIt(GetIt g, {String environment}) async {
  final coreInjectableModule = _$CoreInjectableModule();
  g.registerLazySingleton<LocalUserMapper>(() => LocalUserMapper());
  final packageInfo = await coreInjectableModule.packageInfo;
  g.registerFactory<PackageInfo>(() => packageInfo);
  final sharedPreferences = await coreInjectableModule.prefs;
  g.registerFactory<SharedPreferences>(() => sharedPreferences);
  g.registerLazySingleton<IAuthFacade>(() => LocalAuthFacade(
        g<SharedPreferences>(),
        g<LocalUserMapper>(),
        g<Dio>(),
      ));
  g.registerLazySingleton<ISplashRepository>(
      () => ParamsRepository(g<SharedPreferences>(), g<Dio>()));
  g.registerFactory<SplashBloc>(() => SplashBloc(g<ISplashRepository>()));
  g.registerFactory<AuthBloc>(() => AuthBloc(g<IAuthFacade>()));

  //Register prod Dependencies --------
  if (environment == 'prod') {
    g.registerLazySingleton<Dio>(() => coreInjectableModule.dio);
  }

  //Register dev Dependencies --------
  if (environment == 'dev') {
    g.registerLazySingleton<Dio>(() => coreInjectableModule.dioDev);
  }
}

class _$CoreInjectableModule extends CoreInjectableModule {}
