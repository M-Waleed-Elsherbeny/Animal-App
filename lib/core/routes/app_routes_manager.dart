import 'package:animal_app/core/routes/unkown_page.dart';
import 'package:animal_app/features/auth/view/login_page.dart';
import 'package:animal_app/features/auth/view/signup_page.dart';
import 'package:flutter/material.dart';

class AppRoutesManager {
  
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    Widget widgets;
    switch (settings.name) {
      case AppRoutes.login:
        widgets = const LoginPage();
      case AppRoutes.signup:
        widgets = const SignupPage();
      default:
        widgets = const UnkownPage();
    }
    return MaterialPageRoute(builder: (context) => widgets, settings: settings);
  }
}

class AppRoutes {
  static const String login = '/';
  static const String signup = '/signup';
  static const String unkown = '/unkown';
}

