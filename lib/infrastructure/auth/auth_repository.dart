import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:ualet_ddd/domain/auth/auth_failure.dart';
import 'package:ualet_ddd/domain/auth/i_auth_repository.dart';
import 'package:ualet_ddd/domain/auth/user.dart';
import 'package:ualet_ddd/domain/auth/value_objects.dart';
import '../core/dio_response_x.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:dio/dio.dart';

@LazySingleton(as: IAuthRepository)
class LocalAuthFacade implements IAuthRepository {
  final SharedPreferences _sharedPreferences;
  final Dio _dio;
  LocalAuthFacade(this._sharedPreferences, this._dio);

  static const LOGIN_END_POINT = '/User/Login2_0';
  static const PREFS_USER_KEY = 'user_key';
  @override
  Option<User> getSignedInUser() {
    final userPrefs = _sharedPreferences.getString(PREFS_USER_KEY);
    if (userPrefs != null) {
      return optionOf(User.fromJson(jsonDecode(userPrefs)));
    } else {
      return none();
    }
  }

  @override
  Future<void> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {Credential credential, Password password}) async {
    try {
      final Response response = await _dio.post(LOGIN_END_POINT, data: {
        "UserName": credential.getOrCrash(),
        "Password": password.getOrCrash(),
        "platformId": 1,
        "deviceId": "FIREBASE"
      });

      if (response.getResult) {
        final user = User.fromJson(response.getData);
        _sharedPreferences.setString(PREFS_USER_KEY, jsonEncode(user));
        return right(unit);
      } else {
        return left(AuthFailure.fromServer(response.getMessage));
      }
    } on DioError catch (e) {
      return left(AuthFailure.fromServer(e.response.getMessage));
    }
  }
}
