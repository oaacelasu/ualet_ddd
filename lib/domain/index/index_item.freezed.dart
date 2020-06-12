// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'index_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$IndexItemTearOff {
  const _$IndexItemTearOff();

  _IndexItem call(
      {@required String title,
      @required String description,
      String beforeTitle}) {
    return _IndexItem(
      title: title,
      description: description,
      beforeTitle: beforeTitle,
    );
  }
}

// ignore: unused_element
const $IndexItem = _$IndexItemTearOff();

mixin _$IndexItem {
  String get title;
  String get description;
  String get beforeTitle;

  $IndexItemCopyWith<IndexItem> get copyWith;
}

abstract class $IndexItemCopyWith<$Res> {
  factory $IndexItemCopyWith(IndexItem value, $Res Function(IndexItem) then) =
      _$IndexItemCopyWithImpl<$Res>;
  $Res call({String title, String description, String beforeTitle});
}

class _$IndexItemCopyWithImpl<$Res> implements $IndexItemCopyWith<$Res> {
  _$IndexItemCopyWithImpl(this._value, this._then);

  final IndexItem _value;
  // ignore: unused_field
  final $Res Function(IndexItem) _then;

  @override
  $Res call({
    Object title = freezed,
    Object description = freezed,
    Object beforeTitle = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      beforeTitle:
          beforeTitle == freezed ? _value.beforeTitle : beforeTitle as String,
    ));
  }
}

abstract class _$IndexItemCopyWith<$Res> implements $IndexItemCopyWith<$Res> {
  factory _$IndexItemCopyWith(
          _IndexItem value, $Res Function(_IndexItem) then) =
      __$IndexItemCopyWithImpl<$Res>;
  @override
  $Res call({String title, String description, String beforeTitle});
}

class __$IndexItemCopyWithImpl<$Res> extends _$IndexItemCopyWithImpl<$Res>
    implements _$IndexItemCopyWith<$Res> {
  __$IndexItemCopyWithImpl(_IndexItem _value, $Res Function(_IndexItem) _then)
      : super(_value, (v) => _then(v as _IndexItem));

  @override
  _IndexItem get _value => super._value as _IndexItem;

  @override
  $Res call({
    Object title = freezed,
    Object description = freezed,
    Object beforeTitle = freezed,
  }) {
    return _then(_IndexItem(
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      beforeTitle:
          beforeTitle == freezed ? _value.beforeTitle : beforeTitle as String,
    ));
  }
}

class _$_IndexItem with DiagnosticableTreeMixin implements _IndexItem {
  const _$_IndexItem(
      {@required this.title, @required this.description, this.beforeTitle})
      : assert(title != null),
        assert(description != null);

  @override
  final String title;
  @override
  final String description;
  @override
  final String beforeTitle;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'IndexItem(title: $title, description: $description, beforeTitle: $beforeTitle)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'IndexItem'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('beforeTitle', beforeTitle));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _IndexItem &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.beforeTitle, beforeTitle) ||
                const DeepCollectionEquality()
                    .equals(other.beforeTitle, beforeTitle)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(beforeTitle);

  @override
  _$IndexItemCopyWith<_IndexItem> get copyWith =>
      __$IndexItemCopyWithImpl<_IndexItem>(this, _$identity);
}

abstract class _IndexItem implements IndexItem {
  const factory _IndexItem(
      {@required String title,
      @required String description,
      String beforeTitle}) = _$_IndexItem;

  @override
  String get title;
  @override
  String get description;
  @override
  String get beforeTitle;
  @override
  _$IndexItemCopyWith<_IndexItem> get copyWith;
}
