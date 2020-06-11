import 'package:dartz/dartz.dart';
import 'package:ualet_ddd/domain/auth/user.dart';

abstract class IAuthFacade {
  Future<Option<User>> getSignedInUser();
  Future<void> signOut();
}
