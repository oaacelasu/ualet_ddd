import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ualet_ddd/application/auth/auth_bloc.dart';
import 'package:ualet_ddd/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:ualet_ddd/generated/l10n.dart';
import 'package:ualet_ddd/presentation/core/design/app_dimens.dart';
import 'package:ualet_ddd/presentation/core/design/app_text_styles.dart';
import 'package:ualet_ddd/presentation/core/misc/toast_helper.dart';
import 'package:ualet_ddd/presentation/core/widgets/app_icon/app_icon.dart';
import 'package:ualet_ddd/presentation/core/widgets/buttons/primary_button.dart';
import 'package:ualet_ddd/presentation/core/widgets/loading_in_progress_overlay/loading_in_progress_overlay.dart';
import 'package:ualet_ddd/presentation/pages/index/widgets/have_account_button.dart';
import 'package:ualet_ddd/presentation/pages/sign_in/widgets/sign_in_bottom_sheet.dart';
import 'package:ualet_ddd/presentation/routes/router.gr.dart';
import '../../../core/misc/build_context_x.dart';

class SignInForm extends StatelessWidget {
  SignInForm({Key key}) : super(key: key);
  final FocusNode _passwordFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) {
            either.fold(
              (failure) {
                ToastHelper.createError(
                  message: failure.map(
                      fromServer: (error) => error.message,
                      unexpectedError: (_) => S.of(context).notExpectedError),
                ).show(context);
              },
              (_) {
                ExtendedNavigator.rootNavigator
                    .pushReplacementNamed(Routes.homePage);
                context
                    .bloc<AuthBloc>()
                    .add(const AuthEvent.authCheckRequested());
              },
            );
          },
        );
      },
      builder: (context, state) {
        return Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Column(
              children: <Widget>[
                Expanded(
                  child: Form(
                    autovalidate: state.showErrorMessages,
                    child: ListView(
                      controller: ScrollController(),
                      padding: const EdgeInsets.symmetric(
                          horizontal: AppDimens.layoutMargin,
                          vertical: AppDimens.layoutSpacerL),
                      children: <Widget>[
                        AppIconWidget(),
                        const SizedBox(height: AppDimens.layoutSpacerL * 2),
                        TextFormField(
                          autocorrect: false,
                          textInputAction: TextInputAction.next,
                          onFieldSubmitted: (v) {
                            FocusScope.of(context).requestFocus(_passwordFocus);
                          },
                          decoration: InputDecoration(
                              hintText: S.of(context).hintCredentialField),
                          onChanged: (value) => context
                              .bloc<SignInFormBloc>()
                              .add(SignInFormEvent.credentialChanged(value)),
                          validator: (_) => context
                              .bloc<SignInFormBloc>()
                              .state
                              .credential
                              .value
                              .fold(
                                (f) => f.maybeMap(
                                  invalidEmail: (_) =>
                                      S.of(context).errorEmailField,
                                  invalidPhoneNumber: (_) =>
                                      S.of(context).errorPhoneField,
                                  phoneNumberNotStartsWith3: (_) => S
                                      .of(context)
                                      .errorPhoneNumberNotStartsWith3,
                                  orElse: () => null,
                                ),
                                (_) => null,
                              ),
                        ),
                        const SizedBox(height: AppDimens.layoutSpacerM),
                        TextFormField(
                          focusNode: _passwordFocus,
                          obscureText: true,
                          autocorrect: false,
                          decoration: InputDecoration(
                              hintText: S.of(context).hintPasswordField),
                          onChanged: (value) => context
                              .bloc<SignInFormBloc>()
                              .add(SignInFormEvent.passwordChanged(value)),
                          onFieldSubmitted: (value) => context
                              .bloc<SignInFormBloc>()
                              .add(const SignInFormEvent
                                  .signInWithEmailAndPasswordPressed()),
                          validator: (_) => context
                              .bloc<SignInFormBloc>()
                              .state
                              .password
                              .value
                              .fold(
                                (f) => f.maybeMap(
                                  invalidPassword: (_) =>
                                      S.of(context).errorPasswordField,
                                  orElse: () => null,
                                ),
                                (_) => null,
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
                SignInBottomSheet()
              ],
            ),
            LoadingInProgressOverlay(isLoading: state.isSubmitting)
          ],
        );
      },
    );
  }
}
