import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:showcase/features/home/presentation/home_screen.dart';
import 'package:showcase/features/settings/presentation/bloc/settings_cubit.dart';
import 'package:showcase/features/settings/presentation/settings_screen.dart';
import 'package:showcase/service_locator.dart';

class AppRouter {

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
            settings: settings,
            builder: (BuildContext context) {
              return HomeScreen();
            });
      case '/settings':
        return MaterialPageRoute(
            settings: settings,
            builder: (BuildContext context) {
              return BlocProvider(create: (BuildContext context) => getIt<SettingsCubit>()..fetch(),
              child: const SettingsScreen());
            });
    }
    return null;
  }
}
