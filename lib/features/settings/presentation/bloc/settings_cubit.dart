import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:showcase/common/loading_status.dart';
import 'package:showcase/features/settings/domain/entities/image_entity.dart';
import 'package:showcase/features/settings/domain/usecases/fetch_images.dart';

part 'settings_state.dart';

part 'settings_cubit.freezed.dart';

@injectable
class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit(this.fetchImages) : super(const SettingsState());
  final FetchImagesUseCase fetchImages;

  Future<void> fetch() async {
    if (state.imageLoadingStatus.isLoading) {
      return;
    }

    final failureOrSuccess = await fetchImages();
    failureOrSuccess.fold((failure) {
      emit(state.copyWith(imageLoadingStatus: LoadingStatus.failed));
    }, (data) {
      emit(state.copyWith(imageLoadingStatus: LoadingStatus.success, images: data));
    });
  }
}
