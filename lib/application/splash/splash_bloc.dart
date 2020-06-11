import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:meta/meta.dart';
import 'package:ualet_ddd/domain/splash/i_splash_repository.dart';
import 'package:ualet_ddd/domain/splash/parameter_app.dart';
import 'package:ualet_ddd/domain/splash/splash_failures.dart';

part 'splash_event.dart';
part 'splash_state.dart';

part 'splash_bloc.freezed.dart';

@injectable
class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final ISplashRepository _splashRepository;

  SplashBloc(this._splashRepository);

  @override
  SplashState get initialState => SplashState.initial();

  @override
  Stream<SplashState> mapEventToState(
    SplashEvent event,
  ) async* {
    Either<SplashFailure, KtList<ParameterApp>> failureOrParams;

    yield SplashState.loadInProgress();
    failureOrParams = await _splashRepository?.getParamsApp();
    yield failureOrParams.fold(
        (l) => SplashState.loadFailure(l), (r) => SplashState.loadSuccess(r));
  }
}
