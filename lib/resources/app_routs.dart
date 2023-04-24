import 'package:flutter/material.dart';

import '../view/home_view.dart';
import '../view/login_view.dart';

class AppRoutes {
  static const LOGIN_SCREEN_ROUTE = '/login';
  static const HOME_SCREEN_ROUTE = '/home';

  static Future<void> showLogin(BuildContext context) async {
    await Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => const LoginView()),
    );
  }

  static Future<void> showHome(BuildContext context) async {
    Future.delayed(Duration.zero, () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const HomeView()),
      );
    });
  }
}
