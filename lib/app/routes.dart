import 'package:clot/feature/authentication/screens/about_user_screen.dart';
import 'package:clot/feature/authentication/screens/forgot_password_screen.dart';
import 'package:clot/feature/authentication/screens/sent_email_screen.dart';
import 'package:clot/feature/authentication/screens/sign_in_screen.dart';
import 'package:clot/feature/authentication/screens/sign_up_screen.dart';
import 'package:clot/feature/home/screens/home_screen.dart';
import 'package:clot/feature/home/screens/sell_all_screen.dart';
import 'package:clot/feature/home/screens/product_categories_screen.dart';
import 'package:clot/feature/notification/screens/notification_screen.dart';
import 'package:clot/feature/orders/screens/order_details_screen.dart';
import 'package:clot/feature/orders/screens/order_screen.dart';
import 'package:clot/feature/profile/screens/profile_screen.dart';
import 'package:clot/shared/widgets/app_bottom_nav.dart';
import 'package:clot/splash/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String splash = '/';
  static const String signIn = '/SignIn';
  static const String signUp = '/signUp';
  static const String forgotPassword = '/forgotPassword';
  static const String sentEmail = '/sentEmail';
  static const String aboutUser = '/aboutUser';
  static const String appBottomNav = '/appBottomNav';
  static const String home = '/home';
  static const String seeAll = '/seeAll';
  static const String productCategory = '/productCategory';
  static const String notification = '/notification';
  static const String order = '/order';
  static const String orderDetails = '/orderDetails';
  static const String profileScreen = '/profileScreen';

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
      case appBottomNav:
        return MaterialPageRoute(builder: (_) => const AppBottomNav());
      case home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case seeAll:
        return MaterialPageRoute(builder: (_) => const SeeAllScreen());
      case productCategory:
        return MaterialPageRoute(
            builder: (_) => const ProductCategoriesScreen());
      case notification:
        return MaterialPageRoute(builder: (_) => const NotificationScreen());
      case order:
        return MaterialPageRoute(builder: (_) => const OrderScreen());
      case orderDetails:
        return MaterialPageRoute(builder: (_) => const OrderDetailsScreen());
      case profileScreen:
        return MaterialPageRoute(builder: (_) => const ProfileScreen());
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
