import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:ualet_ddd/domain/auth/i_auth_facade.dart';
import 'package:ualet_ddd/domain/auth/user.dart';
import 'package:ualet_ddd/infrastructure/auth/local_user_mapper.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:dio/dio.dart';

@LazySingleton(as: IAuthFacade)
class LocalAuthFacade implements IAuthFacade {
  final SharedPreferences _sharedPreferences;
  final Dio _dio;
  final LocalUserMapper _localUserMapper;
  LocalAuthFacade(this._sharedPreferences, this._localUserMapper, this._dio);

  @override
  Future<Option<User>> getSignedInUser() {
    final userPref = _sharedPreferences.getString("prefs_user");
    return Future.delayed(Duration(seconds: 3),
        () => optionOf(_localUserMapper.toDomain(userPref)));
  }

  @override
  Future<void> signOut() {
    // TODO: implement signOut
    throw UnimplementedError();
  }
}
