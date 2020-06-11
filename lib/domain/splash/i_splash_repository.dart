import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'package:ualet_ddd/domain/splash/parameter_app.dart';
import 'package:ualet_ddd/domain/splash/splash_failures.dart';

abstract class ISplashRepository {
  Future<Either<SplashFailure, KtList<ParameterApp>>> getParamsApp();
}
