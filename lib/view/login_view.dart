import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_with_mvvm/resources/app_routs.dart';

import '../utils/app_providers.dart';

class LoginView extends ConsumerWidget {
  const LoginView({super.key});


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var viewModel = ref.read(loginViewModelProvider.notifier);
    final state = ref.watch(loginViewModelProvider);
    return Scaffold(

      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Consumer(
        builder: (cxt, ref, child){
          if(state.isLoading){
            return const Center(child: CircularProgressIndicator());
          }
          if(state.isSuccess){
             AppRoutes.showHome(context);
          }
          return Center(
               child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  onChanged: viewModel.setUsername,
                  decoration: const InputDecoration(
                    labelText: 'Username',
                  ),
                ),
                TextField(
                  onChanged: viewModel.setPassword,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                  ),
                ),
                SizedBox(height: 24),
                ElevatedButton(
                  onPressed: state.canSubmit ? viewModel.login : null,
                  child: const Text('Login'),
                ),
                if (state.errorMessage.isNotEmpty)
                  Text(
                    state.errorMessage,
                    style: const TextStyle(
                      color: Colors.red,
                    ),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}
