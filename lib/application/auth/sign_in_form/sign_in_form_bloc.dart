import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:ualet_ddd/domain/auth/auth_failure.dart';
import 'package:ualet_ddd/domain/auth/i_auth_repository.dart';
import 'package:ualet_ddd/domain/auth/value_objects.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter/foundation.dart';

part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';

part 'sign_in_form_bloc.freezed.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthRepository _authFacade;

  SignInFormBloc(this._authFacade);

  @override
  SignInFormState get initialState => SignInFormState.initial();

  @override
  Stream<SignInFormState> mapEventToState(
    SignInFormEvent event,
  ) async* {
    yield* event.map(
      credentialChanged: (e) async* {
        yield state.copyWith(
          credential: Credential(e.credentialStr),
          authFailureOrSuccessOption: none(),
        );
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
          password: Password(e.passwordStr),
          authFailureOrSuccessOption: none(),
        );
      },
      signInWithEmailAndPasswordPressed: (e) async* {
        yield* _performActionOnAuthFacadeWithEmailAndPassword(
          _authFacade.signInWithEmailAndPassword,
        );
      },
    );
  }

  Stream<SignInFormState> _performActionOnAuthFacadeWithEmailAndPassword(
    Future<Either<AuthFailure, Unit>> Function({
      @required Credential credential,
      @required Password password,
    })
        forwardedCall,
  ) async* {
    Either<AuthFailure, Unit> failureOrSuccess;

    final isCredentialValid = state.credential.isValid();
    final isPasswordValid = state.password.isValid();

    if (isCredentialValid && isPasswordValid) {
      yield state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      );

      failureOrSuccess = await forwardedCall(
        credential: state.credential,
        password: state.password,
      );
    }

    yield state.copyWith(
      isSubmitting: false,
      showErrorMessages: true,
      authFailureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }
}
