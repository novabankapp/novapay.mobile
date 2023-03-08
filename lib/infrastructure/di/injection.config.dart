// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i7;
import 'package:injectable/injectable.dart' as _i2;
import 'package:localstorage/localstorage.dart' as _i9;
import 'package:shared_preferences/shared_preferences.dart' as _i10;
import 'package:sqflite/sqflite.dart' as _i8;

import '../../app/blocs/login_bloc/bloc.dart' as _i18;
import '../../data/graphQL/bank_graphql.dart' as _i4;
import '../../data/hive/user_hive.dart' as _i11;
import '../../data/remote/clients/base/base_client.dart' as _i13;
import '../../data/remote/clients/http_client.dart' as _i14;
import '../../data/remote/services/authentication_api_provider.dart' as _i15;
import '../../data/repositories/authentication_repository_impl.dart' as _i17;
import '../../data/repositories/bank_repository_impl.dart' as _i6;
import '../../data/repositories/user_repository.dart' as _i12;
import '../../domain/repositories/authentication_repository.dart' as _i16;
import '../../domain/repositories/bank_repository.dart' as _i5;
import '../routing/router.gr.dart' as _i3;
import 'app.module.dart' as _i19; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final appModule = _$AppModule();
  gh.factory<_i3.AppRouter>(() => appModule.appRouter);
  gh.factory<_i4.BankGraphQLService>(() => appModule.bankGraphQLService);
  gh.factory<_i5.BankRepository>(
      () => _i6.BankRepositoryImpl(get<_i4.BankGraphQLService>()));
  gh.singleton<_i7.Client>(appModule.client);
  gh.factoryAsync<_i8.Database>(() => appModule.database);
  gh.factory<_i9.LocalStorage>(() => appModule.storage);
  gh.factoryAsync<_i10.SharedPreferences>(() => appModule.prefs);
  gh.factory<_i11.UserHive>(() => appModule.userHive);
  gh.factoryAsync<_i12.UserRepository>(
      () async => _i12.UserRepository(await get.getAsync<_i8.Database>()));
  gh.factory<_i13.BaseClient>(() => _i14.HttpClient(get<_i7.Client>()));
  gh.factory<_i15.AuthenticationApiProvider>(
      () => _i15.AuthenticationApiProvider(get<_i13.BaseClient>()));
  gh.factory<_i16.AuthenticationRepository>(() =>
      _i17.AuthenticationRepositoryImpl(get<_i15.AuthenticationApiProvider>()));
  gh.factory<_i18.LoginBloc>(
      () => _i18.LoginBloc(get<_i16.AuthenticationRepository>()));
  return get;
}

class _$AppModule extends _i19.AppModule {}
