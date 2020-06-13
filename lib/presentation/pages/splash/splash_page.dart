import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:package_info/package_info.dart';
import 'package:ualet_ddd/application/auth/auth_bloc.dart';
import 'package:ualet_ddd/application/splash/splash_bloc.dart';
import 'package:ualet_ddd/generated/l10n.dart';
import 'package:ualet_ddd/injection.dart';
import 'package:ualet_ddd/presentation/core/design/app_colors.dart';
import 'package:ualet_ddd/presentation/core/design/app_text_styles.dart';
import 'package:ualet_ddd/presentation/core/misc/toast_helper.dart';
import 'package:ualet_ddd/presentation/core/widgets/loading_in_progress_overlay/loading_in_progress_overlay.dart';
import 'package:ualet_ddd/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ualet_ddd/presentation/core/misc/build_context_x.dart';
import 'package:ualet_ddd/domain/splash/kt_list_x.dart';
import 'package:cached_network_image/cached_network_image.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          authenticated: (_) => print('Authenticated'),
          unauthenticated: (_) => ExtendedNavigator.rootNavigator
              .pushReplacementNamed(Routes.indexPage),
        );
      },
      child: _PageWidget(),
    );
  }
}

class _PageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SplashBloc, SplashState>(
      listener: (context, state) {
        state.maybeMap(
            loadSuccess: (_) => Future.delayed(Duration(seconds: 2),
                () => context.bloc<AuthBloc>().add(AuthCheckRequested())),
            loadFailure: (state) {
              return ToastHelper.createError(
                message: state.splashFailure.map(
                    fromServer: (state) => state.message,
                    unableToFetch: (_) => 'Unable to fetch',
                    unexpected: (_) => 'Unexpected'),
              ).show(context);
            },
            orElse: () {});
      },
      builder: (context, state) => Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                AppColors.backgroundSplashTopColor,
                AppColors.backgroundSplashBottomColor
              ],
                  stops: [
                0.3,
                0.9
              ],
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomCenter)),
          child: state.maybeMap(
              loadSuccess: (state) => Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Positioned(
                        top: context.screenHeight(dividedBy: 4),
                        child: CachedNetworkImage(
                          imageUrl: state.params
                              .getParameterAppByTitle("imagen_ualet_splah")
                              .description,
                          width: context.screenWidth(dividedBy: 2),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: CachedNetworkImage(
                            imageUrl: state.params
                                .getParameterAppByTitle("imagen_fondo_splah")
                                .description,
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
                              S.of(context).splashPageVersionLabel(
                                  getIt<PackageInfo>().version,
                                  state.params
                                      .getParameterAppByTitle("Copyright_splah")
                                      .description),
                              textAlign: TextAlign.center,
                              style: AppTextStyles.normal1
                                  .copyWith(color: AppColors.whiteColor)),
                        ),
                      ),
                    ],
                  ),
              loadInProgress: (_) => LoadingInProgressOverlay(isLoading: true),
              orElse: () => Container()),
        ),
      ),
    );
  }
}
