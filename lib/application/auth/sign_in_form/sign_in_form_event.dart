part of 'sign_in_form_bloc.dart';

@freezed
abstract class SignInFormEvent with _$SignInFormEvent {
  const factory SignInFormEvent.credentialChanged(String credentialStr) =
      CredentialChanged;
  const factory SignInFormEvent.passwordChanged(String passwordStr) =
      PasswordChanged;
  const factory SignInFormEvent.signInWithEmailAndPasswordPressed() =
      SignInWithEmailAndPasswordPressed;
}
