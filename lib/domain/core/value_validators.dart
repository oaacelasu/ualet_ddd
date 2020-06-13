import 'package:dartz/dartz.dart';
import 'package:ualet_ddd/domain/core/failures.dart';

Either<ValueFailure<String>, String> validateMaxStringLength(
  String input,
  int maxLength,
) {
  if (input.length <= maxLength) {
    return right(input);
  } else {
    return left(ValueFailure.exceedingLength(
      failedValue: input,
      max: maxLength,
    ));
  }
}

Either<ValueFailure<String>, String> validateStringNotEmpty(String input) {
  if (input.isEmpty) {
    return left(ValueFailure.empty(failedValue: input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validateSingleLine(String input) {
  if (input.contains('\n')) {
    return left(ValueFailure.multiline(failedValue: input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validatePhoneNumber(String input) {
  const phoneNumberRegex = r'^\d\d\d\d\d\d\d\d\d\d$';

  if (RegExp(phoneNumberRegex).hasMatch(input)) {
    if (input[0] == '3')
      return right(input);
    else
      return left(ValueFailure.phoneNumberNotStartsWith3(failedValue: input));
  } else {
    return left(ValueFailure.invalidPhoneNumber(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateCredential(String input) {
  const numberRegex = r'^[0-9]+$';
  if (RegExp(numberRegex).hasMatch(input)) {
    return validatePhoneNumber(input);
  } else {
    return validateEmailAddress(input);
  }
}

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex = "[a-zA-Z0-9\+\.\_\%\-\+]{1,256}" +
      "\\@" +
      "[a-zA-Z0-9][a-zA-Z0-9\\-]{0,64}" +
      "(" +
      "\\." +
      "[a-zA-Z0-9][a-zA-Z0-9\\-]{0,25}" +
      ")+";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  const passwordRegex =
      r"^(?=.*\d)(?=.*[\u0021-\u002b\u003c-\u0040])(?=.*[A-Z])(?=.*[a-z])\S{8,16}$";

  if (RegExp(passwordRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidPassword(failedValue: input));
  }
}
