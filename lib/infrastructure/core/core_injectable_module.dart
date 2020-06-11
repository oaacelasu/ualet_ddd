import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:package_info/package_info.dart';

@module
abstract class CoreInjectableModule {
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  @preResolve
  Future<PackageInfo> get packageInfo => PackageInfo.fromPlatform();

  @LazySingleton(env: Environment.prod)
  Dio get dio =>
      Dio(BaseOptions(baseUrl: 'https://apiualetqa.azurewebsites.net'));

  @LazySingleton(env: Environment.dev)
  Dio get dioDev =>
      Dio(BaseOptions(baseUrl: 'https://apiualetqa.azurewebsites.net'));
}
