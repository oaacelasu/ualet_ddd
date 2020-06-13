// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:ualet_ddd/presentation/pages/splash/splash_page.dart';
import 'package:ualet_ddd/presentation/pages/sign_in/sign_in_page.dart';
import 'package:ualet_ddd/presentation/pages/sign_up/sign_up_page.dart';
import 'package:ualet_ddd/presentation/pages/index/index_page.dart';
import 'package:ualet_ddd/presentation/pages/home/home_page.dart';

abstract class Routes {
  static const splashPage = '/';
  static const signInPage = '/sign-in-page';
  static const signUpPage = '/sign-up-page';
  static const indexPage = '/index-page';
  static const homePage = '/home-page';
  static const all = {
    splashPage,
    signInPage,
    signUpPage,
    indexPage,
    homePage,
  };
}

class Router extends RouterBase {
  @override
  Set<String> get allRoutes => Routes.all;

  @Deprecated('call ExtendedNavigator.ofRouter<Router>() directly')
  static ExtendedNavigatorState get navigator =>
      ExtendedNavigator.ofRouter<Router>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashPage:
        return MaterialPageRoute<dynamic>(
          builder: (context) => SplashPage(),
          settings: settings,
        );
      case Routes.signInPage:
        return MaterialPageRoute<dynamic>(
          builder: (context) => SignInPage(),
          settings: settings,
        );
      case Routes.signUpPage:
        return MaterialPageRoute<dynamic>(
          builder: (context) => SignUpPage(),
          settings: settings,
        );
      case Routes.indexPage:
        return MaterialPageRoute<dynamic>(
          builder: (context) => IndexPage(),
          settings: settings,
        );
      case Routes.homePage:
        return MaterialPageRoute<dynamic>(
          builder: (context) => HomePage(),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}
