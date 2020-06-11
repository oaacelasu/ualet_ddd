import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ualet_ddd/domain/splash/i_splash_repository.dart';
import 'package:ualet_ddd/domain/splash/parameter_app.dart';
import 'package:ualet_ddd/domain/splash/splash_failures.dart';

import '../core/dio_response_x.dart';

@LazySingleton(as: ISplashRepository)
class ParamsRepository implements ISplashRepository {
  final SharedPreferences _sharedPreferences;
  final Dio _dio;
  static const GET_VERSION_PARAMS_END_POINT = '/User/versionParameterApp';
  static const GET_PARAMS_END_POINT = '/User/getParameterApp';
  static const PREFS_PARAMETERS_VERSION_KEY = 'parameters_version_key';
  static const PREFS_PARAMETERS_LIST_KEY = 'parameters_parameters_list_key';

  ParamsRepository(this._sharedPreferences, this._dio);

  @override
  Future<Either<SplashFailure, KtList<ParameterApp>>> getParamsApp() async {
    try {
      final version =
          _sharedPreferences.getString(PREFS_PARAMETERS_VERSION_KEY);
      final Response responseVersion =
          await _dio.get(GET_VERSION_PARAMS_END_POINT);

      if (version == responseVersion.getData) {
        final encoded = _sharedPreferences.getString(PREFS_PARAMETERS_LIST_KEY);
        final result = (jsonDecode(encoded) as List)
            .map((value) => ParameterApp.fromJson(value))
            .toImmutableList();
        return right(result);
      } else {
        final Response response = await _dio.get(GET_PARAMS_END_POINT);
        if (response.getResult) {
          final result = (response.getData as List)
              .map((value) => ParameterApp.fromJson(value))
              .toImmutableList();
          _sharedPreferences.setString(
              PREFS_PARAMETERS_VERSION_KEY, responseVersion.getData);
          _sharedPreferences.setString(
              PREFS_PARAMETERS_LIST_KEY, jsonEncode(result.asList()));
          return right(result);
        } else {
          return left(SplashFailure.fromServer(response.getMessage));
        }
      }
    } catch (e) {
      return left(SplashFailure.unexpected());
    }
  }
}
