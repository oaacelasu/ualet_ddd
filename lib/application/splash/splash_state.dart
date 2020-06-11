part of 'splash_bloc.dart';

@freezed
abstract class SplashState with _$SplashState {
  const factory SplashState.initial() = Initial;
  const factory SplashState.loadInProgress() = DataTransferInProgress;
  const factory SplashState.loadSuccess(KtList<ParameterApp> params) =
      LoadSuccess;
  const factory SplashState.loadFailure(SplashFailure splashFailure) =
      LoadFailure;
}
