import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_with_mvvm/resources/app_routs.dart';
import 'package:flutter_riverpod_with_mvvm/utils/app_state.dart';
import 'package:flutter_riverpod_with_mvvm/viewmodel/login_view_model.dart';

import '../utils/app_providers.dart';
import 'home_view.dart';

class LoginView extends ConsumerWidget {

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
            // return const Center(child: Text("Login Successful!"));
            // Navigator.of(context).push(
            //     MaterialPageRoute(
            //         builder: (context) =>
            //             const HomeView()));
             AppRoutes.showHome(context);
          }
          return Center(
               child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  onChanged: viewModel.setUsername,
                  decoration: InputDecoration(
                    labelText: 'Username',
                  ),
                ),
                TextField(
                  onChanged: viewModel.setPassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                  ),
                ),
                SizedBox(height: 24),
                ElevatedButton(
                  onPressed: state.canSubmit ? viewModel.login : null,
                  child: Text('Login'),
                ),
                if (state.errorMessage.isNotEmpty)
                  Text(
                    state.errorMessage,
                    style: TextStyle(
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
