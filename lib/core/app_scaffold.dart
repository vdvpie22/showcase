import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: child,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (ModalRoute.of(context)?.settings.name != '/settings') {
            Navigator.of(context).pushNamed('/settings');
          }
        },
        child: const Icon(Icons.settings),
      ),
    );
  }
}
