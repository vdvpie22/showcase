part of 'settings_cubit.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState({
    @Default([]) List<ImageEntity> images,
    @Default(LoadingStatus.pure) LoadingStatus imageLoadingStatus,
  }) = _Initial;
}
