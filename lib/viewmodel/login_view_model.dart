import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_with_mvvm/resources/app_routs.dart';
import 'package:flutter_riverpod_with_mvvm/utils/app_providers.dart';

import '../utils/app_state.dart';

class LoginViewModel extends StateNotifier<LoginState> {
  //final Reader _read;

  LoginViewModel() : super(LoginState());

  void setUsername(String value) {
    state = state.copyWith(username: value.trim());
  }

  void setPassword(String value) {
    state = state.copyWith(password: value.trim());
  }

  Future<void> login() async {
    state = state.copyWith(isLoading: true);

    //final authService = _read(authServiceProvider);
    await Future<void>.delayed(const Duration(milliseconds: 2000));
    state = state.copyWith(isLoading: false);
    state = state.copyWith(isSuccess: true);
    // final result = await authService.login(
    //   state.username,
    //   state.password,
    // );
    //
    // result.fold(
    //       (error) {
    //     state = state.copyWith(
    //       isLoading: false,
    //       errorMessage: error,
    //     );
    //   },
    //       (_) {
    //     _read(appStateNotifierProvider).isLoggedIn = true;
    //     _read(appRouterProvider).showHome(_read(navigatorKeyProvider).currentContext!);
    //   },
    // );
  }
}

