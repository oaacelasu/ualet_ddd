import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ualet_ddd/domain/auth/value_objects.dart';
import 'package:ualet_ddd/domain/core/value_objects.dart';

part 'user.freezed.dart';

@freezed
abstract class User with _$User{
  const factory User({
    @required UniqueId session, 
      @required UniqueId id, 
    @required StringSingleLine name, 
    @required EmailAddress email, 
     @JsonKey(name: "fiscal_number") @required String fiscalNumber, 
     @JsonKey(name: "birthdate") @required String birthDate, 
  }) = _User;
}