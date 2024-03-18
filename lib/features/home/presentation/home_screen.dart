import 'package:flutter/material.dart';
import 'package:showcase/common/locale_text.dart';
import 'package:showcase/core/app_scaffold.dart';
import 'package:showcase/core/db/db.dart';
import 'package:showcase/service_locator.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final dbProvider = getIt<DbProvider>();

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      child: Center(
        child: Text(LocaleText.of(context)!.appTitle),
      ),
    );
  }
}
