import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ualet_ddd/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:ualet_ddd/generated/l10n.dart';
import 'package:ualet_ddd/injection.dart';
import 'package:ualet_ddd/presentation/core/design/app_dimens.dart';
import 'package:ualet_ddd/presentation/core/design/app_images.dart';
import 'package:ualet_ddd/presentation/core/widgets/buttons/primary_button.dart';
import 'package:ualet_ddd/presentation/pages/index/widgets/have_account_button.dart';
import 'package:ualet_ddd/presentation/pages/sign_in/widgets/not_have_account_button.dart';
import 'package:ualet_ddd/presentation/pages/sign_in/widgets/sign_in_bottom_sheet.dart';

import 'package:ualet_ddd/presentation/pages/sign_in/widgets/sign_in_form.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SignInFormBloc>(),
      child: Scaffold(
        body: SignInForm(),
      ),
    );
  }
}
