import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ualet_ddd/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:ualet_ddd/generated/l10n.dart';
import 'package:ualet_ddd/presentation/core/design/app_dimens.dart';
import 'package:ualet_ddd/presentation/core/widgets/buttons/primary_button.dart';
import 'package:ualet_ddd/presentation/pages/sign_in/widgets/not_have_account_button.dart';

class SignInBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInFormBloc, SignInFormState>(
        builder: (context, state) {
      return Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: AppDimens.layoutMargin,
            vertical: AppDimens.layoutSpacerL),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            PrimaryButton(
              enabled: context
                      .bloc<SignInFormBloc>()
                      .state
                      .credential
                      .value
                      .fold((l) => l.failedValue.isNotEmpty,
                          (r) => r.isNotEmpty) &&
                  context.bloc<SignInFormBloc>().state.password.value.fold(
                      (l) => l.failedValue.isNotEmpty, (r) => r.isNotEmpty),
              text: S.of(context).signInButton,
              action: () => context.bloc<SignInFormBloc>().add(
                  const SignInFormEvent.signInWithEmailAndPasswordPressed()),
            ),
            const SizedBox(height: AppDimens.layoutSpacerM),
            NotHaveAccountButton(),
          ],
        ),
      );
    });
  }
}
