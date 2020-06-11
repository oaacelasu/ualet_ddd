import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_failures.freezed.dart';

@freezed
abstract class SplashFailure with _$SplashFailure {
  const factory SplashFailure.unableToFetch() = UnableToFetch;
  const factory SplashFailure.unexpected() = Unexpected;
  const factory SplashFailure.fromServer(String message) = FromServer;
}
