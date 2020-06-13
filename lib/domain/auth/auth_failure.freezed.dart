// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AuthFailureTearOff {
  const _$AuthFailureTearOff();

  FromServer fromServer(String message) {
    return FromServer(
      message,
    );
  }

  UnexpectedError unexpectedError() {
    return const UnexpectedError();
  }
}

// ignore: unused_element
const $AuthFailure = _$AuthFailureTearOff();

mixin _$AuthFailure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fromServer(String message),
    @required Result unexpectedError(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fromServer(String message),
    Result unexpectedError(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fromServer(FromServer value),
    @required Result unexpectedError(UnexpectedError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fromServer(FromServer value),
    Result unexpectedError(UnexpectedError value),
    @required Result orElse(),
  });
}

abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
}

class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;
}

abstract class $FromServerCopyWith<$Res> {
  factory $FromServerCopyWith(
          FromServer value, $Res Function(FromServer) then) =
      _$FromServerCopyWithImpl<$Res>;
  $Res call({String message});
}

class _$FromServerCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $FromServerCopyWith<$Res> {
  _$FromServerCopyWithImpl(FromServer _value, $Res Function(FromServer) _then)
      : super(_value, (v) => _then(v as FromServer));

  @override
  FromServer get _value => super._value as FromServer;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(FromServer(
      message == freezed ? _value.message : message as String,
    ));
  }
}

class _$FromServer implements FromServer {
  const _$FromServer(this.message) : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthFailure.fromServer(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FromServer &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  $FromServerCopyWith<FromServer> get copyWith =>
      _$FromServerCopyWithImpl<FromServer>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fromServer(String message),
    @required Result unexpectedError(),
  }) {
    assert(fromServer != null);
    assert(unexpectedError != null);
    return fromServer(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fromServer(String message),
    Result unexpectedError(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fromServer != null) {
      return fromServer(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fromServer(FromServer value),
    @required Result unexpectedError(UnexpectedError value),
  }) {
    assert(fromServer != null);
    assert(unexpectedError != null);
    return fromServer(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fromServer(FromServer value),
    Result unexpectedError(UnexpectedError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fromServer != null) {
      return fromServer(this);
    }
    return orElse();
  }
}

abstract class FromServer implements AuthFailure {
  const factory FromServer(String message) = _$FromServer;

  String get message;
  $FromServerCopyWith<FromServer> get copyWith;
}

abstract class $UnexpectedErrorCopyWith<$Res> {
  factory $UnexpectedErrorCopyWith(
          UnexpectedError value, $Res Function(UnexpectedError) then) =
      _$UnexpectedErrorCopyWithImpl<$Res>;
}

class _$UnexpectedErrorCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $UnexpectedErrorCopyWith<$Res> {
  _$UnexpectedErrorCopyWithImpl(
      UnexpectedError _value, $Res Function(UnexpectedError) _then)
      : super(_value, (v) => _then(v as UnexpectedError));

  @override
  UnexpectedError get _value => super._value as UnexpectedError;
}

class _$UnexpectedError implements UnexpectedError {
  const _$UnexpectedError();

  @override
  String toString() {
    return 'AuthFailure.unexpectedError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UnexpectedError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result fromServer(String message),
    @required Result unexpectedError(),
  }) {
    assert(fromServer != null);
    assert(unexpectedError != null);
    return unexpectedError();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result fromServer(String message),
    Result unexpectedError(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unexpectedError != null) {
      return unexpectedError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result fromServer(FromServer value),
    @required Result unexpectedError(UnexpectedError value),
  }) {
    assert(fromServer != null);
    assert(unexpectedError != null);
    return unexpectedError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result fromServer(FromServer value),
    Result unexpectedError(UnexpectedError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unexpectedError != null) {
      return unexpectedError(this);
    }
    return orElse();
  }
}

abstract class UnexpectedError implements AuthFailure {
  const factory UnexpectedError() = _$UnexpectedError;
}
