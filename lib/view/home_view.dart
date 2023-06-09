import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_with_mvvm/resources/app_routs.dart';

import '../utils/app_providers.dart';


class HomeView extends ConsumerWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(homeViewModelProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            onPressed: () async {
              await viewModel.logout();
              AppRoutes.showLogin(context);

              },
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: const Center(
        child: Text('Welcome!'),
      ),
    );
  }

}
