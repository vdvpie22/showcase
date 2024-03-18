// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/db/db.dart' as _i3;
import 'core/platform/network_info.dart' as _i6;
import 'core/platform/network_info_impl.dart' as _i7;
import 'features/settings/data/datasources/image_local_datasource.dart' as _i4;
import 'features/settings/data/datasources/image_local_datasource_impl.dart'
    as _i5;
import 'features/settings/data/repositories/image_repository_impl.dart' as _i9;
import 'features/settings/domain/repositories/image_repository.dart' as _i8;
import 'features/settings/domain/usecases/fetch_images.dart' as _i10;
import 'features/settings/presentation/bloc/settings_cubit.dart' as _i11;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    await gh.singletonAsync<_i3.DbProvider>(
      () {
        final i = _i3.DbImpl();
        return i.init().then((_) => i);
      },
      preResolve: true,
    );
    gh.factory<_i4.ImageLocalDataSource>(
        () => _i5.ImageDbDataSource(db: gh<_i3.DbProvider>()));
    gh.lazySingleton<_i6.NetworkInfo>(() => _i7.NetworkInfoImpl());
    gh.factory<_i8.ImageRepository>(() => _i9.ImageRepositoryImpl(
          localDataSource: gh<_i4.ImageLocalDataSource>(),
          networkInfo: gh<_i6.NetworkInfo>(),
        ));
    gh.factory<_i10.FetchImagesUseCase>(
        () => _i10.FetchImagesUseCase(repository: gh<_i8.ImageRepository>()));
    gh.factory<_i11.SettingsCubit>(
        () => _i11.SettingsCubit(gh<_i10.FetchImagesUseCase>()));
    return this;
  }
}
