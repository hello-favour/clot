import 'package:clot/feature/Screens/orders/screens/order_success_screen.dart';
import 'package:clot/feature/Screens/profile/screens/wishlist_screen.dart';
import 'package:clot/feature/authentication/screens/about_user_screen.dart';
import 'package:clot/feature/authentication/screens/forgot_password_screen.dart';
import 'package:clot/feature/authentication/screens/sent_email_screen.dart';
import 'package:clot/feature/authentication/screens/sign_in_ps_screen.dart';
import 'package:clot/feature/authentication/screens/sign_in_screen.dart';
import 'package:clot/feature/authentication/screens/sign_up_screen.dart';
import 'package:clot/feature/Screens/home/screens/home_screen.dart';
import 'package:clot/feature/Screens/home/screens/sell_all_screen.dart';
import 'package:clot/feature/Screens/home/screens/product_categories_screen.dart';
import 'package:clot/feature/Screens/notification/screens/notification_screen.dart';
import 'package:clot/feature/Screens/orders/screens/order_details_screen.dart';
import 'package:clot/feature/Screens/orders/screens/order_screen.dart';
import 'package:clot/feature/cart/screens/cart_screen.dart';
import 'package:clot/feature/cart/screens/checkout_screen.dart';
import 'package:clot/feature/payment/screens/add_card_screen.dart';
import 'package:clot/feature/payment/screens/payement_screen.dart';
import 'package:clot/feature/Screens/profile/screens/add_address_screen.dart';
import 'package:clot/feature/Screens/profile/screens/address_screen.dart';
import 'package:clot/feature/Screens/profile/screens/profile_screen.dart';
import 'package:clot/feature/search/screens/search_details_screen.dart';
import 'package:clot/feature/search/screens/search_product_screen.dart';
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
  static const String addressScreen = '/addressScreen';
  static const String addAddressScreen = '/addAddressScreen';
  static const String payment = '/paymentScreen';
  static const String addCard = '/addCard';
  static const String signInPs = '/signInPs';
  static const String searchProduct = '/searchProduct';
  static const String searchDetail = '/searchDetail';
  static const String cartScreen = '/cartScreen';
  static const String checkOutScreen = '/checkOutScreen';
  static const String orderSuccess = '/orderSuccess';
  static const String addAddress = '/addAddress';
  static const String wishList = '/wishList';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case signIn:
        return MaterialPageRoute(builder: (_) => const SignInScreen());
      case signInPs:
        return MaterialPageRoute(builder: (_) => const SignInPsScreen());
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
      case addressScreen:
        return MaterialPageRoute(builder: (_) => const AddressScreen());
      case addAddressScreen:
        return MaterialPageRoute(builder: (_) => const AddAddressScreen());
      case payment:
        return MaterialPageRoute(builder: (_) => const PaymentScreen());
      case addCard:
        return MaterialPageRoute(builder: (_) => const AddCardScreen());
      case searchProduct:
        return MaterialPageRoute(builder: (_) => const SearchProductScreen());
      case searchDetail:
        return MaterialPageRoute(builder: (_) => const SearchDetailScreen());
      case cartScreen:
        return MaterialPageRoute(builder: (_) => const CartScreen());
      case checkOutScreen:
        return MaterialPageRoute(builder: (_) => const CheckOutScreen());
      case orderSuccess:
        return MaterialPageRoute(builder: (_) => const OrderSuccessScreen());
      case addAddress:
        return MaterialPageRoute(builder: (_) => const AddAddressScreen());
      case wishList:
        return MaterialPageRoute(builder: (_) => const WishListScreen());
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
