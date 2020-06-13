import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:ualet_ddd/domain/auth/auth_failure.dart';
import 'package:ualet_ddd/domain/auth/user.dart';
import 'package:ualet_ddd/domain/auth/value_objects.dart';

abstract class IAuthRepository {
  Option<User> getSignedInUser();
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    @required Credential credential,
    @required Password password,
  });
  Future<void> signOut();
}
