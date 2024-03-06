import 'package:flutter/material.dart';
import 'package:showcase/common/locale_text.dart';
import 'package:showcase/core/app_scaffold.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      child: Center(
        child: Text(LocaleText.of(context)!.appTitle),
      ),
    );
  }
}
