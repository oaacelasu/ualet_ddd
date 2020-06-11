// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'parameter_app.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ParameterApp _$ParameterAppFromJson(Map<String, dynamic> json) {
  return _ParameterApp.fromJson(json);
}

class _$ParameterAppTearOff {
  const _$ParameterAppTearOff();

  _ParameterApp call(
      {@required @JsonKey(name: 'Id') int id,
      @required String title,
      @required String description}) {
    return _ParameterApp(
      id: id,
      title: title,
      description: description,
    );
  }
}

// ignore: unused_element
const $ParameterApp = _$ParameterAppTearOff();

mixin _$ParameterApp {
  @JsonKey(name: 'Id')
  int get id;
  String get title;
  String get description;

  Map<String, dynamic> toJson();
  $ParameterAppCopyWith<ParameterApp> get copyWith;
}

abstract class $ParameterAppCopyWith<$Res> {
  factory $ParameterAppCopyWith(
          ParameterApp value, $Res Function(ParameterApp) then) =
      _$ParameterAppCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'Id') int id, String title, String description});
}

class _$ParameterAppCopyWithImpl<$Res> implements $ParameterAppCopyWith<$Res> {
  _$ParameterAppCopyWithImpl(this._value, this._then);

  final ParameterApp _value;
  // ignore: unused_field
  final $Res Function(ParameterApp) _then;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object description = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
    ));
  }
}

abstract class _$ParameterAppCopyWith<$Res>
    implements $ParameterAppCopyWith<$Res> {
  factory _$ParameterAppCopyWith(
          _ParameterApp value, $Res Function(_ParameterApp) then) =
      __$ParameterAppCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'Id') int id, String title, String description});
}

class __$ParameterAppCopyWithImpl<$Res> extends _$ParameterAppCopyWithImpl<$Res>
    implements _$ParameterAppCopyWith<$Res> {
  __$ParameterAppCopyWithImpl(
      _ParameterApp _value, $Res Function(_ParameterApp) _then)
      : super(_value, (v) => _then(v as _ParameterApp));

  @override
  _ParameterApp get _value => super._value as _ParameterApp;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object description = freezed,
  }) {
    return _then(_ParameterApp(
      id: id == freezed ? _value.id : id as int,
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
    ));
  }
}

@JsonSerializable()
class _$_ParameterApp with DiagnosticableTreeMixin implements _ParameterApp {
  const _$_ParameterApp(
      {@required @JsonKey(name: 'Id') this.id,
      @required this.title,
      @required this.description})
      : assert(id != null),
        assert(title != null),
        assert(description != null);

  factory _$_ParameterApp.fromJson(Map<String, dynamic> json) =>
      _$_$_ParameterAppFromJson(json);

  @override
  @JsonKey(name: 'Id')
  final int id;
  @override
  final String title;
  @override
  final String description;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ParameterApp(id: $id, title: $title, description: $description)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ParameterApp'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ParameterApp &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description);

  @override
  _$ParameterAppCopyWith<_ParameterApp> get copyWith =>
      __$ParameterAppCopyWithImpl<_ParameterApp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ParameterAppToJson(this);
  }
}

abstract class _ParameterApp implements ParameterApp {
  const factory _ParameterApp(
      {@required @JsonKey(name: 'Id') int id,
      @required String title,
      @required String description}) = _$_ParameterApp;

  factory _ParameterApp.fromJson(Map<String, dynamic> json) =
      _$_ParameterApp.fromJson;

  @override
  @JsonKey(name: 'Id')
  int get id;
  @override
  String get title;
  @override
  String get description;
  @override
  _$ParameterAppCopyWith<_ParameterApp> get copyWith;
}
