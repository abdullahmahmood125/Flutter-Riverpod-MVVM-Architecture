import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_with_mvvm/resources/app_routs.dart';
import 'package:flutter_riverpod_with_mvvm/view/home_view.dart';
import 'package:flutter_riverpod_with_mvvm/view/login_view.dart';


void main() {
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Riverpod MVVM Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        AppRoutes.LOGIN_SCREEN_ROUTE: (context) =>  LoginView(),
        AppRoutes.HOME_SCREEN_ROUTE: (context) =>   HomeView(),
    },
      home: LoginView(),
    );
  }
}
