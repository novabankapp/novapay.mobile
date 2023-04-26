// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i9;
import 'package:injectable/injectable.dart' as _i2;
import 'package:localstorage/localstorage.dart' as _i12;
import 'package:shared_preferences/shared_preferences.dart' as _i18;
import 'package:sqflite/sqflite.dart' as _i10;

import '../../app/blocs/bank_bloc/bloc.dart' as _i24;
import '../../app/blocs/login_bloc/bloc.dart' as _i33;
import '../../app/blocs/merchants/bloc.dart' as _i28;
import '../../app/blocs/registration_bloc/bloc.dart' as _i11;
import '../../app/blocs/send_code_bloc/bloc.dart' as _i15;
import '../../app/blocs/transactions/generate_trn_cubit.dart' as _i27;
import '../../app/blocs/transactions/transaction_bloc.dart' as _i31;
import '../../app/cubits/auth/recover_password_cubit.dart' as _i14;
import '../../data/graphQL/bank_graphql.dart' as _i6;
import '../../data/graphQL/merchant_graphql.dart' as _i13;
import '../../data/graphQL/transaction_graphql.dart' as _i19;
import '../../data/hive/user_hive.dart' as _i22;
import '../../data/remote/clients/base/base_client.dart' as _i25;
import '../../data/remote/clients/http_client.dart' as _i26;
import '../../data/remote/services/authentication_api_provider.dart' as _i32;
import '../../data/remote/services/transaction_api_provider.dart' as _i30;
import '../../data/repositories/mocks/authentication_repository_test_impl.dart'
    as _i5;
import '../../data/repositories/mocks/bank_repository_test_impl.dart' as _i8;
import '../../data/repositories/mocks/service_repository_test_impl.dart'
    as _i17;
import '../../data/repositories/mocks/transaction_repository_test_impl.dart'
    as _i21;
import '../../data/repositories/user_repository.dart' as _i23;
import '../../domain/repositories/authentication_repository.dart' as _i4;
import '../../domain/repositories/bank_repository.dart' as _i7;
import '../../domain/repositories/service_repository.dart' as _i16;
import '../../domain/repositories/transaction_repository.dart' as _i20;
import '../helpers/shared_preferences_helper.dart' as _i29;
import '../routing/router.dart' as _i3;
import 'app.module.dart' as _i34; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final registerModule = _$RegisterModule();
  gh.factory<_i3.AppRouter>(() => registerModule.appRouter);
  gh.factory<_i4.AuthenticationRepository>(
      () => _i5.AuthenticationRepositoryTestImpl());
  gh.factory<_i6.BankGraphQLService>(() => registerModule.bankGraphQLService);
  gh.factory<_i7.BankRepository>(() => _i8.BankRepositoryTestImpl());
  gh.singleton<_i9.Client>(registerModule.client);
  gh.factoryAsync<_i10.Database>(() => registerModule.database);
  gh.factory<_i11.GoogleRegistrationBloc>(
      () => _i11.GoogleRegistrationBloc(get<_i4.AuthenticationRepository>()));
  gh.factory<_i12.LocalStorage>(() => registerModule.storage);
  gh.factory<_i13.MerchantGraphQLService>(
      () => registerModule.merchantGraphQLService);
  gh.factory<_i14.RecoverPasswordCubit>(
      () => _i14.RecoverPasswordCubit(get<_i4.AuthenticationRepository>()));
  gh.factory<_i15.SendCodeBloc>(
      () => _i15.SendCodeBloc(get<_i4.AuthenticationRepository>()));
  gh.factory<_i16.ServiceRepository>(() => _i17.ServiceRepositoryTestImpl());
  await gh.factoryAsync<_i18.SharedPreferences>(
    () => registerModule.prefs,
    preResolve: true,
  );
  gh.factory<_i19.TransactionGraphQLService>(
      () => registerModule.transGraphQLService);
  gh.factory<_i20.TransactionRepository>(
      () => _i21.TransactionRepositoryTestImpl());
  gh.factory<_i22.UserHive>(() => registerModule.userHive);
  gh.factoryAsync<_i23.UserRepository>(
      () async => _i23.UserRepository(await get.getAsync<_i10.Database>()));
  gh.factory<_i24.BankBloc>(() => _i24.BankBloc(get<_i7.BankRepository>()));
  gh.factory<_i25.BaseClient>(() => _i26.HttpClient(get<_i9.Client>()));
  gh.factory<_i27.GenerateTRNCubit>(
      () => _i27.GenerateTRNCubit(get<_i20.TransactionRepository>()));
  gh.factory<_i28.MerchantBloc>(
      () => _i28.MerchantBloc(get<_i16.ServiceRepository>()));
  gh.factory<_i29.SharedPreferenceHelper>(
      () => _i29.SharedPreferenceHelper(get<_i18.SharedPreferences>()));
  gh.factory<_i30.TransactionApiProvider>(
      () => _i30.TransactionApiProvider(get<_i25.BaseClient>()));
  gh.factory<_i31.TransactionBloc>(
      () => _i31.TransactionBloc(get<_i20.TransactionRepository>()));
  gh.factory<_i32.AuthenticationApiProvider>(
      () => _i32.AuthenticationApiProvider(get<_i25.BaseClient>()));
  gh.factory<_i33.LoginBloc>(() => _i33.LoginBloc(
        get<_i4.AuthenticationRepository>(),
        get<_i29.SharedPreferenceHelper>(),
      ));
  gh.factory<_i11.RegistrationBloc>(() => _i11.RegistrationBloc(
        get<_i4.AuthenticationRepository>(),
        get<_i29.SharedPreferenceHelper>(),
      ));
  return get;
}

class _$RegisterModule extends _i34.RegisterModule {}
