import 'package:auto_route/auto_route_annotations.dart';
import 'package:ualet_ddd/presentation/pages/sign_in/sign_in_page.dart';
import 'package:ualet_ddd/presentation/pages/splash/splash_page.dart';

@MaterialAutoRouter()
class $Router {
  @initial
  SplashPage splashPage;
  SignInPage signInPage;
}
