import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_with_mvvm/resources/app_routs.dart';

import '../utils/app_providers.dart';
import 'login_view.dart';


class HomeView extends ConsumerWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(homeViewModelProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(
            onPressed: () async {
              await viewModel.logout();
              Navigator.pushNamedAndRemoveUntil(context, AppRoutes.LOGIN_SCREEN_ROUTE, (Route<dynamic> route) => false);

              },
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: Center(
        child: Text('Welcome!'),
      ),
    );
  }
}
