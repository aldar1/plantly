import 'package:flutter/material.dart';
import 'package:login_1/screens/screens.dart';

class AppRoute {
  static const String initialRoute = 'welcome';

  static final Map<String, Widget Function(BuildContext context)> routes = {
    'welcome' : (context) => const WelcomeScreen(),
    'login'   :(context) => const LoginScreen(),
    'register'   :(context) => const RegisterScreen(),
  };
}
