import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:ualet_ddd/domain/auth/user.dart';
import 'package:ualet_ddd/domain/auth/value_objects.dart';
import 'package:ualet_ddd/domain/core/value_objects.dart';

@lazySingleton
class LocalUserMapper {
  User toDomain(String _) {
    if(_ != null && _.isNotEmpty){
      final jsonMap = json.decode(_);
         return User(
            session: UniqueId.fromUniqueString(jsonMap['session'] as String),
            id: UniqueId.fromUniqueString(jsonMap['id'] as String),
            name: StringSingleLine((jsonMap['name'] ??'')as String),
            email: EmailAddress((jsonMap['email'] ??'')as String),
            fiscalNumber: (jsonMap['fiscal_number'] ??'') as String,
            birthDate: (jsonMap['birthdate'] ??'') as String,
          );

    }else{
      return null;
    }
  }
}
