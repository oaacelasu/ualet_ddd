// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'sign_in_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SignInFormEventTearOff {
  const _$SignInFormEventTearOff();

  CredentialChanged credentialChanged(String credentialStr) {
    return CredentialChanged(
      credentialStr,
    );
  }

  PasswordChanged passwordChanged(String passwordStr) {
    return PasswordChanged(
      passwordStr,
    );
  }

  SignInWithEmailAndPasswordPressed signInWithEmailAndPasswordPressed() {
    return const SignInWithEmailAndPasswordPressed();
  }
}

// ignore: unused_element
const $SignInFormEvent = _$SignInFormEventTearOff();

mixin _$SignInFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result credentialChanged(String credentialStr),
    @required Result passwordChanged(String passwordStr),
    @required Result signInWithEmailAndPasswordPressed(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result credentialChanged(String credentialStr),
    Result passwordChanged(String passwordStr),
    Result signInWithEmailAndPasswordPressed(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result credentialChanged(CredentialChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required
        Result signInWithEmailAndPasswordPressed(
            SignInWithEmailAndPasswordPressed value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result credentialChanged(CredentialChanged value),
    Result passwordChanged(PasswordChanged value),
    Result signInWithEmailAndPasswordPressed(
        SignInWithEmailAndPasswordPressed value),
    @required Result orElse(),
  });
}

abstract class $SignInFormEventCopyWith<$Res> {
  factory $SignInFormEventCopyWith(
          SignInFormEvent value, $Res Function(SignInFormEvent) then) =
      _$SignInFormEventCopyWithImpl<$Res>;
}

class _$SignInFormEventCopyWithImpl<$Res>
    implements $SignInFormEventCopyWith<$Res> {
  _$SignInFormEventCopyWithImpl(this._value, this._then);

  final SignInFormEvent _value;
  // ignore: unused_field
  final $Res Function(SignInFormEvent) _then;
}

abstract class $CredentialChangedCopyWith<$Res> {
  factory $CredentialChangedCopyWith(
          CredentialChanged value, $Res Function(CredentialChanged) then) =
      _$CredentialChangedCopyWithImpl<$Res>;
  $Res call({String credentialStr});
}

class _$CredentialChangedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $CredentialChangedCopyWith<$Res> {
  _$CredentialChangedCopyWithImpl(
      CredentialChanged _value, $Res Function(CredentialChanged) _then)
      : super(_value, (v) => _then(v as CredentialChanged));

  @override
  CredentialChanged get _value => super._value as CredentialChanged;

  @override
  $Res call({
    Object credentialStr = freezed,
  }) {
    return _then(CredentialChanged(
      credentialStr == freezed ? _value.credentialStr : credentialStr as String,
    ));
  }
}

class _$CredentialChanged
    with DiagnosticableTreeMixin
    implements CredentialChanged {
  const _$CredentialChanged(this.credentialStr) : assert(credentialStr != null);

  @override
  final String credentialStr;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInFormEvent.credentialChanged(credentialStr: $credentialStr)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInFormEvent.credentialChanged'))
      ..add(DiagnosticsProperty('credentialStr', credentialStr));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CredentialChanged &&
            (identical(other.credentialStr, credentialStr) ||
                const DeepCollectionEquality()
                    .equals(other.credentialStr, credentialStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(credentialStr);

  @override
  $CredentialChangedCopyWith<CredentialChanged> get copyWith =>
      _$CredentialChangedCopyWithImpl<CredentialChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result credentialChanged(String credentialStr),
    @required Result passwordChanged(String passwordStr),
    @required Result signInWithEmailAndPasswordPressed(),
  }) {
    assert(credentialChanged != null);
    assert(passwordChanged != null);
    assert(signInWithEmailAndPasswordPressed != null);
    return credentialChanged(credentialStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result credentialChanged(String credentialStr),
    Result passwordChanged(String passwordStr),
    Result signInWithEmailAndPasswordPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (credentialChanged != null) {
      return credentialChanged(credentialStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result credentialChanged(CredentialChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required
        Result signInWithEmailAndPasswordPressed(
            SignInWithEmailAndPasswordPressed value),
  }) {
    assert(credentialChanged != null);
    assert(passwordChanged != null);
    assert(signInWithEmailAndPasswordPressed != null);
    return credentialChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result credentialChanged(CredentialChanged value),
    Result passwordChanged(PasswordChanged value),
    Result signInWithEmailAndPasswordPressed(
        SignInWithEmailAndPasswordPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (credentialChanged != null) {
      return credentialChanged(this);
    }
    return orElse();
  }
}

abstract class CredentialChanged implements SignInFormEvent {
  const factory CredentialChanged(String credentialStr) = _$CredentialChanged;

  String get credentialStr;
  $CredentialChangedCopyWith<CredentialChanged> get copyWith;
}

abstract class $PasswordChangedCopyWith<$Res> {
  factory $PasswordChangedCopyWith(
          PasswordChanged value, $Res Function(PasswordChanged) then) =
      _$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String passwordStr});
}

class _$PasswordChangedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $PasswordChangedCopyWith<$Res> {
  _$PasswordChangedCopyWithImpl(
      PasswordChanged _value, $Res Function(PasswordChanged) _then)
      : super(_value, (v) => _then(v as PasswordChanged));

  @override
  PasswordChanged get _value => super._value as PasswordChanged;

  @override
  $Res call({
    Object passwordStr = freezed,
  }) {
    return _then(PasswordChanged(
      passwordStr == freezed ? _value.passwordStr : passwordStr as String,
    ));
  }
}

class _$PasswordChanged
    with DiagnosticableTreeMixin
    implements PasswordChanged {
  const _$PasswordChanged(this.passwordStr) : assert(passwordStr != null);

  @override
  final String passwordStr;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInFormEvent.passwordChanged(passwordStr: $passwordStr)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInFormEvent.passwordChanged'))
      ..add(DiagnosticsProperty('passwordStr', passwordStr));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PasswordChanged &&
            (identical(other.passwordStr, passwordStr) ||
                const DeepCollectionEquality()
                    .equals(other.passwordStr, passwordStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(passwordStr);

  @override
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      _$PasswordChangedCopyWithImpl<PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result credentialChanged(String credentialStr),
    @required Result passwordChanged(String passwordStr),
    @required Result signInWithEmailAndPasswordPressed(),
  }) {
    assert(credentialChanged != null);
    assert(passwordChanged != null);
    assert(signInWithEmailAndPasswordPressed != null);
    return passwordChanged(passwordStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result credentialChanged(String credentialStr),
    Result passwordChanged(String passwordStr),
    Result signInWithEmailAndPasswordPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(passwordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result credentialChanged(CredentialChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required
        Result signInWithEmailAndPasswordPressed(
            SignInWithEmailAndPasswordPressed value),
  }) {
    assert(credentialChanged != null);
    assert(passwordChanged != null);
    assert(signInWithEmailAndPasswordPressed != null);
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result credentialChanged(CredentialChanged value),
    Result passwordChanged(PasswordChanged value),
    Result signInWithEmailAndPasswordPressed(
        SignInWithEmailAndPasswordPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements SignInFormEvent {
  const factory PasswordChanged(String passwordStr) = _$PasswordChanged;

  String get passwordStr;
  $PasswordChangedCopyWith<PasswordChanged> get copyWith;
}

abstract class $SignInWithEmailAndPasswordPressedCopyWith<$Res> {
  factory $SignInWithEmailAndPasswordPressedCopyWith(
          SignInWithEmailAndPasswordPressed value,
          $Res Function(SignInWithEmailAndPasswordPressed) then) =
      _$SignInWithEmailAndPasswordPressedCopyWithImpl<$Res>;
}

class _$SignInWithEmailAndPasswordPressedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res>
    implements $SignInWithEmailAndPasswordPressedCopyWith<$Res> {
  _$SignInWithEmailAndPasswordPressedCopyWithImpl(
      SignInWithEmailAndPasswordPressed _value,
      $Res Function(SignInWithEmailAndPasswordPressed) _then)
      : super(_value, (v) => _then(v as SignInWithEmailAndPasswordPressed));

  @override
  SignInWithEmailAndPasswordPressed get _value =>
      super._value as SignInWithEmailAndPasswordPressed;
}

class _$SignInWithEmailAndPasswordPressed
    with DiagnosticableTreeMixin
    implements SignInWithEmailAndPasswordPressed {
  const _$SignInWithEmailAndPasswordPressed();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInFormEvent.signInWithEmailAndPasswordPressed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'SignInFormEvent.signInWithEmailAndPasswordPressed'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignInWithEmailAndPasswordPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result credentialChanged(String credentialStr),
    @required Result passwordChanged(String passwordStr),
    @required Result signInWithEmailAndPasswordPressed(),
  }) {
    assert(credentialChanged != null);
    assert(passwordChanged != null);
    assert(signInWithEmailAndPasswordPressed != null);
    return signInWithEmailAndPasswordPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result credentialChanged(String credentialStr),
    Result passwordChanged(String passwordStr),
    Result signInWithEmailAndPasswordPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithEmailAndPasswordPressed != null) {
      return signInWithEmailAndPasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result credentialChanged(CredentialChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required
        Result signInWithEmailAndPasswordPressed(
            SignInWithEmailAndPasswordPressed value),
  }) {
    assert(credentialChanged != null);
    assert(passwordChanged != null);
    assert(signInWithEmailAndPasswordPressed != null);
    return signInWithEmailAndPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result credentialChanged(CredentialChanged value),
    Result passwordChanged(PasswordChanged value),
    Result signInWithEmailAndPasswordPressed(
        SignInWithEmailAndPasswordPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithEmailAndPasswordPressed != null) {
      return signInWithEmailAndPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class SignInWithEmailAndPasswordPressed implements SignInFormEvent {
  const factory SignInWithEmailAndPasswordPressed() =
      _$SignInWithEmailAndPasswordPressed;
}

class _$SignInFormStateTearOff {
  const _$SignInFormStateTearOff();

  _SignInFormState call(
      {@required Credential credential,
      @required Password password,
      @required bool showErrorMessages,
      @required bool isSubmitting,
      @required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) {
    return _SignInFormState(
      credential: credential,
      password: password,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
    );
  }
}

// ignore: unused_element
const $SignInFormState = _$SignInFormStateTearOff();

mixin _$SignInFormState {
  Credential get credential;
  Password get password;
  bool get showErrorMessages;
  bool get isSubmitting;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;

  $SignInFormStateCopyWith<SignInFormState> get copyWith;
}

abstract class $SignInFormStateCopyWith<$Res> {
  factory $SignInFormStateCopyWith(
          SignInFormState value, $Res Function(SignInFormState) then) =
      _$SignInFormStateCopyWithImpl<$Res>;
  $Res call(
      {Credential credential,
      Password password,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

class _$SignInFormStateCopyWithImpl<$Res>
    implements $SignInFormStateCopyWith<$Res> {
  _$SignInFormStateCopyWithImpl(this._value, this._then);

  final SignInFormState _value;
  // ignore: unused_field
  final $Res Function(SignInFormState) _then;

  @override
  $Res call({
    Object credential = freezed,
    Object password = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object authFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      credential:
          credential == freezed ? _value.credential : credential as Credential,
      password: password == freezed ? _value.password : password as Password,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

abstract class _$SignInFormStateCopyWith<$Res>
    implements $SignInFormStateCopyWith<$Res> {
  factory _$SignInFormStateCopyWith(
          _SignInFormState value, $Res Function(_SignInFormState) then) =
      __$SignInFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Credential credential,
      Password password,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

class __$SignInFormStateCopyWithImpl<$Res>
    extends _$SignInFormStateCopyWithImpl<$Res>
    implements _$SignInFormStateCopyWith<$Res> {
  __$SignInFormStateCopyWithImpl(
      _SignInFormState _value, $Res Function(_SignInFormState) _then)
      : super(_value, (v) => _then(v as _SignInFormState));

  @override
  _SignInFormState get _value => super._value as _SignInFormState;

  @override
  $Res call({
    Object credential = freezed,
    Object password = freezed,
    Object showErrorMessages = freezed,
    Object isSubmitting = freezed,
    Object authFailureOrSuccessOption = freezed,
  }) {
    return _then(_SignInFormState(
      credential:
          credential == freezed ? _value.credential : credential as Credential,
      password: password == freezed ? _value.password : password as Password,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

class _$_SignInFormState
    with DiagnosticableTreeMixin
    implements _SignInFormState {
  const _$_SignInFormState(
      {@required this.credential,
      @required this.password,
      @required this.showErrorMessages,
      @required this.isSubmitting,
      @required this.authFailureOrSuccessOption})
      : assert(credential != null),
        assert(password != null),
        assert(showErrorMessages != null),
        assert(isSubmitting != null),
        assert(authFailureOrSuccessOption != null);

  @override
  final Credential credential;
  @override
  final Password password;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SignInFormState(credential: $credential, password: $password, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SignInFormState'))
      ..add(DiagnosticsProperty('credential', credential))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('showErrorMessages', showErrorMessages))
      ..add(DiagnosticsProperty('isSubmitting', isSubmitting))
      ..add(DiagnosticsProperty(
          'authFailureOrSuccessOption', authFailureOrSuccessOption));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInFormState &&
            (identical(other.credential, credential) ||
                const DeepCollectionEquality()
                    .equals(other.credential, credential)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(credential) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(authFailureOrSuccessOption);

  @override
  _$SignInFormStateCopyWith<_SignInFormState> get copyWith =>
      __$SignInFormStateCopyWithImpl<_SignInFormState>(this, _$identity);
}

abstract class _SignInFormState implements SignInFormState {
  const factory _SignInFormState(
          {@required
              Credential credential,
          @required
              Password password,
          @required
              bool showErrorMessages,
          @required
              bool isSubmitting,
          @required
              Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) =
      _$_SignInFormState;

  @override
  Credential get credential;
  @override
  Password get password;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;
  @override
  _$SignInFormStateCopyWith<_SignInFormState> get copyWith;
}
