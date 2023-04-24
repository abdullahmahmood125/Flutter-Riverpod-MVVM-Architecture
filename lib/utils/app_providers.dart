import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../viewmodel/home_view_model.dart';
import '../viewmodel/login_view_model.dart';
import 'app_state.dart';

final loginViewModelProvider =
    StateNotifierProvider.autoDispose<LoginViewModel, LoginState>(
        (ref) => LoginViewModel());

final homeViewModelProvider =
    StateNotifierProvider.autoDispose<HomeViewModel, HomeState>(
        (ref) => HomeViewModel());
