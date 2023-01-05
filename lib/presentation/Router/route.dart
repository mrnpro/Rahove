import 'package:flutter/material.dart';
import 'package:rahove/presentation/Pages/Login/login_screen.dart';
import 'package:rahove/presentation/Pages/SplashScreen/splash_screen.dart';

import '../Pages/Register/register_screen.dart';

class GenerateRoute {
  static Route<dynamic> generate(RouteSettings settings) {
    switch (settings.name) {
      case RegisterScreen.route:
        return MaterialPageRoute(builder: (_) => const RegisterScreen());

      case LoginScreen.route:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case SplashScreen.route:
        return MaterialPageRoute(builder: (_) => const SplashScreen());

      default:
        return MaterialPageRoute(
            builder: (_) => const Text("no route defined"));
    }
  }
}
