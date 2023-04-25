// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i7;
import 'package:injectable/injectable.dart' as _i2;
import 'package:localstorage/localstorage.dart' as _i9;
import 'package:shared_preferences/shared_preferences.dart' as _i13;
import 'package:sqflite/sqflite.dart' as _i8;

import '../../app/blocs/bank_bloc/bloc.dart' as _i19;
import '../../app/blocs/login_bloc/bloc.dart' as _i29;
import '../../app/blocs/merchants/bloc.dart' as _i23;
import '../../app/blocs/transactions/generate_trn_cubit.dart' as _i22;
import '../../app/blocs/transactions/transaction_bloc.dart' as _i25;
import '../../data/graphQL/bank_graphql.dart' as _i4;
import '../../data/graphQL/merchant_graphql.dart' as _i10;
import '../../data/graphQL/transaction_graphql.dart' as _i14;
import '../../data/hive/user_hive.dart' as _i17;
import '../../data/remote/clients/base/base_client.dart' as _i20;
import '../../data/remote/clients/http_client.dart' as _i21;
import '../../data/remote/services/authentication_api_provider.dart' as _i26;
import '../../data/remote/services/transaction_api_provider.dart' as _i24;
import '../../data/repositories/authentication_repository_impl.dart' as _i28;
import '../../data/repositories/mocks/bank_repository_test_impl.dart' as _i6;
import '../../data/repositories/mocks/service_repository_test_impl.dart'
    as _i12;
import '../../data/repositories/mocks/transaction_repository_test_impl.dart'
    as _i16;
import '../../data/repositories/user_repository.dart' as _i18;
import '../../domain/repositories/authentication_repository.dart' as _i27;
import '../../domain/repositories/bank_repository.dart' as _i5;
import '../../domain/repositories/service_repository.dart' as _i11;
import '../../domain/repositories/transaction_repository.dart' as _i15;
import '../routing/router.dart' as _i3;
import 'app.module.dart' as _i30; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final appModule = _$AppModule();
  gh.factory<_i3.AppRouter>(() => appModule.appRouter);
  gh.factory<_i4.BankGraphQLService>(() => appModule.bankGraphQLService);
  gh.factory<_i5.BankRepository>(() => _i6.BankRepositoryTestImpl());
  gh.singleton<_i7.Client>(appModule.client);
  gh.factoryAsync<_i8.Database>(() => appModule.database);
  gh.factory<_i9.LocalStorage>(() => appModule.storage);
  gh.factory<_i10.MerchantGraphQLService>(
      () => appModule.merchantGraphQLService);
  gh.factory<_i11.ServiceRepository>(() => _i12.ServiceRepositoryTestImpl());
  gh.factoryAsync<_i13.SharedPreferences>(() => appModule.prefs);
  gh.factory<_i14.TransactionGraphQLService>(
      () => appModule.transGraphQLService);
  gh.factory<_i15.TransactionRepository>(
      () => _i16.TransactionRepositoryTestImpl());
  gh.factory<_i17.UserHive>(() => appModule.userHive);
  gh.factoryAsync<_i18.UserRepository>(
      () async => _i18.UserRepository(await get.getAsync<_i8.Database>()));
  gh.factory<_i19.BankBloc>(() => _i19.BankBloc(get<_i5.BankRepository>()));
  gh.factory<_i20.BaseClient>(() => _i21.HttpClient(get<_i7.Client>()));
  gh.factory<_i22.GenerateTRNCubit>(
      () => _i22.GenerateTRNCubit(get<_i15.TransactionRepository>()));
  gh.factory<_i23.MerchantBloc>(
      () => _i23.MerchantBloc(get<_i11.ServiceRepository>()));
  gh.factory<_i24.TransactionApiProvider>(
      () => _i24.TransactionApiProvider(get<_i20.BaseClient>()));
  gh.factory<_i25.TransactionBloc>(
      () => _i25.TransactionBloc(get<_i15.TransactionRepository>()));
  gh.factory<_i26.AuthenticationApiProvider>(
      () => _i26.AuthenticationApiProvider(get<_i20.BaseClient>()));
  gh.factory<_i27.AuthenticationRepository>(() =>
      _i28.AuthenticationRepositoryImpl(get<_i26.AuthenticationApiProvider>()));
  gh.factory<_i29.LoginBloc>(
      () => _i29.LoginBloc(get<_i27.AuthenticationRepository>()));
  return get;
}

class _$AppModule extends _i30.AppModule {}
