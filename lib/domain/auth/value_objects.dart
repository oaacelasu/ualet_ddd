import 'package:dartz/dartz.dart';
import 'package:ualet_ddd/domain/core/failures.dart';
import 'package:ualet_ddd/domain/core/value_objects.dart';
import 'package:ualet_ddd/domain/core/value_validators.dart';

class Credential extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Credential(String input) {
    assert(input != null);

    return Credential._(
      validateCredential(input),
    );
  }
  const Credential._(this.value);
}

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    assert(input != null);
    return EmailAddress._(
      validateEmailAddress(input),
    );
  }

  const EmailAddress._(this.value);
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    assert(input != null);
    return Password._(
      validatePassword(input),
    );
  }

  const Password._(this.value);
}
