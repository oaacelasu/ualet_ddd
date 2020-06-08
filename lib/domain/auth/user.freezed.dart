// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$UserTearOff {
  const _$UserTearOff();

  _User call(
      {@required UniqueId session,
      @required UniqueId id,
      @required StringSingleLine name,
      @required EmailAddress email,
      @required @JsonKey(name: 'fiscal_number') String fiscalNumber,
      @required @JsonKey(name: 'birthdate') String birthDate}) {
    return _User(
      session: session,
      id: id,
      name: name,
      email: email,
      fiscalNumber: fiscalNumber,
      birthDate: birthDate,
    );
  }
}

// ignore: unused_element
const $User = _$UserTearOff();

mixin _$User {
  UniqueId get session;
  UniqueId get id;
  StringSingleLine get name;
  EmailAddress get email;
  @JsonKey(name: 'fiscal_number')
  String get fiscalNumber;
  @JsonKey(name: 'birthdate')
  String get birthDate;

  $UserCopyWith<User> get copyWith;
}

abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {UniqueId session,
      UniqueId id,
      StringSingleLine name,
      EmailAddress email,
      @JsonKey(name: 'fiscal_number') String fiscalNumber,
      @JsonKey(name: 'birthdate') String birthDate});
}

class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object session = freezed,
    Object id = freezed,
    Object name = freezed,
    Object email = freezed,
    Object fiscalNumber = freezed,
    Object birthDate = freezed,
  }) {
    return _then(_value.copyWith(
      session: session == freezed ? _value.session : session as UniqueId,
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as StringSingleLine,
      email: email == freezed ? _value.email : email as EmailAddress,
      fiscalNumber: fiscalNumber == freezed
          ? _value.fiscalNumber
          : fiscalNumber as String,
      birthDate: birthDate == freezed ? _value.birthDate : birthDate as String,
    ));
  }
}

abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId session,
      UniqueId id,
      StringSingleLine name,
      EmailAddress email,
      @JsonKey(name: 'fiscal_number') String fiscalNumber,
      @JsonKey(name: 'birthdate') String birthDate});
}

class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object session = freezed,
    Object id = freezed,
    Object name = freezed,
    Object email = freezed,
    Object fiscalNumber = freezed,
    Object birthDate = freezed,
  }) {
    return _then(_User(
      session: session == freezed ? _value.session : session as UniqueId,
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as StringSingleLine,
      email: email == freezed ? _value.email : email as EmailAddress,
      fiscalNumber: fiscalNumber == freezed
          ? _value.fiscalNumber
          : fiscalNumber as String,
      birthDate: birthDate == freezed ? _value.birthDate : birthDate as String,
    ));
  }
}

class _$_User with DiagnosticableTreeMixin implements _User {
  const _$_User(
      {@required this.session,
      @required this.id,
      @required this.name,
      @required this.email,
      @required @JsonKey(name: 'fiscal_number') this.fiscalNumber,
      @required @JsonKey(name: 'birthdate') this.birthDate})
      : assert(session != null),
        assert(id != null),
        assert(name != null),
        assert(email != null),
        assert(fiscalNumber != null),
        assert(birthDate != null);

  @override
  final UniqueId session;
  @override
  final UniqueId id;
  @override
  final StringSingleLine name;
  @override
  final EmailAddress email;
  @override
  @JsonKey(name: 'fiscal_number')
  final String fiscalNumber;
  @override
  @JsonKey(name: 'birthdate')
  final String birthDate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'User(session: $session, id: $id, name: $name, email: $email, fiscalNumber: $fiscalNumber, birthDate: $birthDate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'User'))
      ..add(DiagnosticsProperty('session', session))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('fiscalNumber', fiscalNumber))
      ..add(DiagnosticsProperty('birthDate', birthDate));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.session, session) ||
                const DeepCollectionEquality()
                    .equals(other.session, session)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.fiscalNumber, fiscalNumber) ||
                const DeepCollectionEquality()
                    .equals(other.fiscalNumber, fiscalNumber)) &&
            (identical(other.birthDate, birthDate) ||
                const DeepCollectionEquality()
                    .equals(other.birthDate, birthDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(session) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(fiscalNumber) ^
      const DeepCollectionEquality().hash(birthDate);

  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);
}

abstract class _User implements User {
  const factory _User(
      {@required UniqueId session,
      @required UniqueId id,
      @required StringSingleLine name,
      @required EmailAddress email,
      @required @JsonKey(name: 'fiscal_number') String fiscalNumber,
      @required @JsonKey(name: 'birthdate') String birthDate}) = _$_User;

  @override
  UniqueId get session;
  @override
  UniqueId get id;
  @override
  StringSingleLine get name;
  @override
  EmailAddress get email;
  @override
  @JsonKey(name: 'fiscal_number')
  String get fiscalNumber;
  @override
  @JsonKey(name: 'birthdate')
  String get birthDate;
  @override
  _$UserCopyWith<_User> get copyWith;
}
