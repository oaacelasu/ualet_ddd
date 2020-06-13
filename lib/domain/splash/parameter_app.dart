import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ualet_ddd/domain/core/value_objects.dart';

part 'parameter_app.freezed.dart';
part 'parameter_app.g.dart';

@freezed
abstract class ParameterApp with _$ParameterApp {
  const factory ParameterApp({
    @JsonKey(name: 'Id') @required int id,
    @required String title,
    @required String description,
  }) = _ParameterApp;

  factory ParameterApp.fromJson(Map<String, dynamic> json) =>
      _$ParameterAppFromJson(json);
}
