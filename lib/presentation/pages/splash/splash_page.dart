import 'package:auto_route/auto_route.dart';
import 'package:package_info/package_info.dart';
import 'package:ualet_ddd/application/auth/auth_bloc.dart';
import 'package:ualet_ddd/generated/l10n.dart';
import 'package:ualet_ddd/injection.dart';
import 'package:ualet_ddd/presentation/core/design/app_colors.dart';
import 'package:ualet_ddd/presentation/core/design/app_images.dart';
import 'package:ualet_ddd/presentation/core/design/app_text_styles.dart';
import 'package:ualet_ddd/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ualet_ddd/presentation/core/misc/build_context_x.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          authenticated: (_) => print('Authenticated'),
          unauthenticated: (_) => ExtendedNavigator.rootNavigator
              .pushReplacementNamed(Routes.signInPage),
        );
      },
      child: _PageWidget(),
    );
  }
}

class _PageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Positioned(
            top: context.screenHeight(dividedBy: 4),
            child: Image.asset(
              AppImages.appLogo,
              width: context.screenWidth(dividedBy: 2),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Image.asset(
                AppImages.splashVigilatedLogo,
                height: 150.0,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: context.screenWidth(dividedBy: 1.5),
              padding: const EdgeInsets.only(bottom: 80.0),
              child: Text(
                  S
                      .of(context)
                      .splashPageVersionLabel(getIt<PackageInfo>().version),
                  textAlign: TextAlign.center,
                  style: AppTextStyles.normal1
                      .copyWith(color: AppColors.whiteColor)),
            ),
          ),
        ],
      ),
    );
  }
}
