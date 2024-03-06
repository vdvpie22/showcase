import 'package:flutter/material.dart';
import 'package:showcase/features/home/presentation/home_screen.dart';
import 'package:showcase/features/settings/presentation/settings_screen.dart';

class AppRouter {

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
            settings: settings,
            builder: (BuildContext context) {
              return const HomeScreen();
            });
      case '/settings':
        return MaterialPageRoute(
            settings: settings,
            builder: (BuildContext context) {
              return const SettingsScreen();
            });
    }
    return null;
  }
}
