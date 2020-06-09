import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:ualet_ddd/application/auth/auth_bloc.dart';
import 'package:ualet_ddd/presentation/core/design/app_theme.dart';
import 'package:ualet_ddd/presentation/routes/router.gr.dart';
import 'package:ualet_ddd/injection.dart';
import 'package:ualet_ddd/generated/l10n.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        ),
      ],
      child: MaterialApp(
          title: 'Ualet',
          debugShowCheckedModeBanner: false,
          localizationsDelegates: [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
          theme: AppTheme.primaryTheme,
          builder: ExtendedNavigator<Router>(router: Router())),
    );
  }
}
