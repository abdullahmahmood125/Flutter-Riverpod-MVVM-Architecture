import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../resources/app_routs.dart';
import '../viewmodel/home_view_model.dart';
import '../viewmodel/login_view_model.dart';

import 'app_state.dart';

//final appStateNotifierProvider = StateNotifierProvider<bool>((ref) => false);

final loginViewModelProvider = StateNotifierProvider.autoDispose<LoginViewModel, LoginState>((ref) => LoginViewModel());

final homeViewModelProvider =  StateNotifierProvider.autoDispose<HomeViewModel, HomeState>((ref) => HomeViewModel());

class AppProviders {
  // static final providers = <SingleChildWidget>[
  //   ...independentServices,
  //   ...dependentServices,
  //   ...uiConsumableProviders,
  //   ...stateManagementProviders,
  // ];
  //
  // static final independentServices = <SingleChildWidget>[
  //   Provider((ref) => ApiService()),
  // ];
  //
  // static final dependentServices = <SingleChildWidget>[
  //   Provider(
  //         (ref) => StorageService(ref.read),
  //   ),
  //   Provider(
  //         (ref) => AuthService(ref.read, ref.read, ref.read),
  //   ),
  // ];
  //
  // static final uiConsumableProviders = <SingleChildWidget>[
  //   Provider((ref) => AppRouter()),
  // ];
  //
  // static final stateManagementProviders = <SingleChildWidget>[
  //   appStateNotifierProvider,
  //   loginViewModelProvider,
  //   homeViewModelProvider,
  // ];
}