import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../utils/app_state.dart';

class HomeViewModel extends StateNotifier<HomeState> {
  HomeViewModel() : super(HomeState(true));

  Future<void> logout() async {
    print("logout");
    state.copyWith(isLoggedIn: false);
  }
}
