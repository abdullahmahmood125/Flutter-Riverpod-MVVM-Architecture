import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../utils/app_state.dart';

class HomeViewModel extends StateNotifier<HomeState> {
  // final Reader _read;

  HomeViewModel() : super(HomeState(true));

  Future<void> logout() async {
    print("logout");
    state.copyWith(isLoggedIn: false);
    // final authService = _read(authServiceProvider);
    //
    // await authService.logout();
    // _read(appStateNotifierProvider).isLoggedIn = false;
    // _read(appRouterProvider).showLogin(_read(navigatorKeyProvider).
    }
}