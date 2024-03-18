import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:showcase/common/loading_status.dart';
import 'package:showcase/common/locale_text.dart';
import 'package:showcase/core/app_scaffold.dart';
import 'package:showcase/features/settings/presentation/bloc/settings_cubit.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      child: BlocBuilder<SettingsCubit, SettingsState>(
        builder: (BuildContext context, state) {
          if (state.imageLoadingStatus.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (state.imageLoadingStatus.isFailed) {
            return Center(
              child: Text(LocaleText.of(context)!.commonError),
            );
          }

          if (state.imageLoadingStatus.isSuccess) {
            return ListView.builder(
              itemCount: state.images.length,
              itemBuilder: (BuildContext context, int index) {
              return Text(state.images[index].path);
            },);
          }

          return const SizedBox.shrink();
        },
      ),
    );
  }
}
