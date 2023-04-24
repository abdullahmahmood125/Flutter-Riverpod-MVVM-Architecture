import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../utils/app_state.dart';

class LoginViewModel extends StateNotifier<LoginState> {
  LoginViewModel() : super(LoginState());

  void setUsername(String value) {
    state = state.copyWith(username: value.trim());
  }

  void setPassword(String value) {
    state = state.copyWith(password: value.trim());
  }

  Future<void> login() async {
    state = state.copyWith(isLoading: true);
    await Future<void>.delayed(const Duration(milliseconds: 2000));
    state = state.copyWith(isLoading: false);
    state = state.copyWith(isSuccess: true);
  }
}
