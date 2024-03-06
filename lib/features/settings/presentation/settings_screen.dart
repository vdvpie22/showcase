import 'package:flutter/material.dart';
import 'package:showcase/core/app_scaffold.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
      child: Center(
        child: Text('Settings'),
      ),
    );
  }
}
