import 'package:clot/feature/authentication/screens/about_user_screen.dart';
import 'package:clot/feature/authentication/screens/forgot_password_screen.dart';
import 'package:clot/feature/authentication/screens/sent_email_screen.dart';
import 'package:clot/feature/authentication/screens/sign_in_screen.dart';
import 'package:clot/feature/authentication/screens/sign_up_screen.dart';
import 'package:clot/splash/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String splash = '/';
  static const String signIn = '/SignIn';
  static const String signUp = '/signUp';
  static const String forgotPassword = '/forgotPassword';
  static const String sentEmail = '/sentEmail';
  static const String aboutUser = '/aboutUser';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case signIn:
        return MaterialPageRoute(builder: (_) => const SignInScreen());
      case signUp:
        return MaterialPageRoute(builder: (_) => const SignUpScreen());
      case forgotPassword:
        return MaterialPageRoute(builder: (_) => const ForgotPasswordScereen());
      case sentEmail:
        return MaterialPageRoute(builder: (_) => const SentEmailScreen());
      case aboutUser:
        return MaterialPageRoute(builder: (_) => const AboutUserScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
