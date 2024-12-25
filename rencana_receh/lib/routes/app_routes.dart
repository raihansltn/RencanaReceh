
import 'package:flutter/material.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart'; 
import '../presentation/change_password_one_screen/change_password_one_screen.dart'; 
import '../presentation/change_password_two_screen/change_password_two_screen.dart'; 
import '../presentation/forgot_password_four_screen/forgot_password_four_screen.dart'; 
import '../presentation/forgot_password_one_screen/forgot_password_one_screen.dart'; 
import '../presentation/forgot_password_three_screen/forgot_password_three_screen.dart'; 
import '../presentation/forgot_password_two_screen/forgot_password_two_screen.dart';
import '../presentation/home_screen/home_screen.dart';
import '../presentation/sign_in_screen/sign_in_screen.dart';
import '../presentation/sign_up_five_screen/sign_up_five_screen.dart'; 
import '../presentation/sign_up_four_screen/sign_up_four_screen.dart'; 
import '../presentation/sign_up_one_screen/sign_up_one_screen.dart'; 
import '../presentation/sign_up_six_screen/sign_up_six_screen.dart'; 
import '../presentation/sign_up_three_screen/sign_up_three_screen.dart'; 
import '../presentation/sign_up_two_screen/sign_up_two_screen.dart';
// ignore_for_file: must_be_immutable
class AppRoutes {
static const String signInScreen = '/sign_in_screen';
static const String signUpOneScreen
=
'/sign_up_one_screen';
static const String signUpTwoScreen = '/sign_up_two_screen';
static const String forgotPasswordOneScreen
=
'/forgot_password_one_screen';
static const String forgotPasswordTwoScreen = '/forgot_password_two_screen';
static const String signUpThreeScreen = '/sign_up_three_screen';

static const String forgotPasswordThreeScreen =
'/forgot_password_three_screen';
static const String forgotPasswordFourScreen = '/forgot_password_four_screen';
static const String changePasswordOneScreen
=
'/change_password_one_screen';
static const String changePasswordTwoScreen = '/change_password_two_screen';
static const String signUpFourScreen = '/sign_up_four_screen';
static const String signUpSixScreen = '/sign_up_six_screen';
static const String homeScreen = '/home_screen';
static const String homeInitialPage = '/home_initial_page';
static const String signUpFiveScreen
=
'/sign_up_five_screen';
static const String appNavigationScreen = '/app_navigation_screen';
static const String initialRoute = '/initialRoute';
static Map<String, WidgetBuilder> routes = {
signInScreen: (context) => SignInScreen(), signUpOneScreen: (context) => SignUpOneScreen(), signUpTwoScreen: (context) => SignUpTwoScreen(),
forgotPasswordOneScreen: (context) => ForgotPasswordOneScreen(), forgotPasswordTwoScreen: (context) => ForgotPasswordTwoScreen(),
signUpThreeScreen: (context) => SignUpThreeScreen(),
forgotPasswordThreeScreen: (context) => ForgotPasswordThreeScreen(), 
forgotPasswordFourScreen: (context) => ForgotPasswordFourScreen(), 
changePasswordOneScreen: (context) => ChangePasswordOneScreen(), 
changePasswordTwoScreen: (context) => ChangePasswordTwoScreen(), 
signUpFourScreen: (context) => SignUpFourScreen(), signUpSixScreen: (context) => SignUpSixScreen(),
homeScreen: (context) => HomeScreen(),
signUpFiveScreen: (context) => SignUpFiveScreen(), appNavigationScreen: (context) => AppNavigationScreen(), initialRoute: (context) => SignInScreen()
};
}