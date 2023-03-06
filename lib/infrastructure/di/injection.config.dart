// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;
import 'package:localstorage/localstorage.dart' as _i6;
import 'package:shared_preferences/shared_preferences.dart' as _i7;
import 'package:sqflite/sqflite.dart' as _i5;

import '../../app/blocs/login_bloc/bloc.dart' as _i15;
import '../../data/hive/user_hive.dart' as _i8;
import '../../data/remote/clients/base/base_client.dart' as _i10;
import '../../data/remote/clients/http_client.dart' as _i11;
import '../../data/remote/services/authentication_api_provider.dart' as _i12;
import '../../data/repositories/authentication_repository_impl.dart' as _i14;
import '../../data/repositories/user_repository.dart' as _i9;
import '../../domain/repositories/authentication_repository.dart' as _i13;
import '../routing/router.gr.dart' as _i3;
import 'app.module.dart' as _i16; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final appModule = _$AppModule();
  gh.factory<_i3.AppRouter>(() => appModule.appRouter);
  gh.singleton<_i4.Client>(appModule.client);
  gh.factoryAsync<_i5.Database>(() => appModule.database);
  gh.factory<_i6.LocalStorage>(() => appModule.storage);
  gh.factoryAsync<_i7.SharedPreferences>(() => appModule.prefs);
  gh.factory<_i8.UserHive>(() => appModule.userHive);
  gh.factoryAsync<_i9.UserRepository>(
      () async => _i9.UserRepository(await get.getAsync<_i5.Database>()));
  gh.factory<_i10.BaseClient>(() => _i11.HttpClient(get<_i4.Client>()));
  gh.factory<_i12.AuthenticationApiProvider>(
      () => _i12.AuthenticationApiProvider(get<_i10.BaseClient>()));
  gh.factory<_i13.AuthenticationRepository>(() =>
      _i14.AuthenticationRepositoryImpl(get<_i12.AuthenticationApiProvider>()));
  gh.factory<_i15.LoginBloc>(
      () => _i15.LoginBloc(get<_i13.AuthenticationRepository>()));
  return get;
}

class _$AppModule extends _i16.AppModule {}
