import 'package:get_it/get_it.dart';
import 'package:webkeyz_task/cookies/data/data_sources/remote/remote_data_source.dart';
import 'package:webkeyz_task/cookies/domain/repositories/Repository.dart';
import 'package:webkeyz_task/cookies/domain/use_cases/get_offers.dart';
import 'package:webkeyz_task/cookies/presentation/manager/cookies_cubit.dart';

import 'cookies/data/repositories/repository_implementation.dart';
import 'cookies/domain/use_cases/get_cookies.dart';

final engine = GetIt.instance;

/// `initServiceLocator()` registers all the dependencies that are needed by the app
void initServiceLocator() {
  ///-------------------- data layer ----------------------------------

  // remote data source
  engine.registerLazySingleton<RemoteDataSource>(() => RemoteDataSource());

  // repository
  engine.registerLazySingleton<CookiesRepository>(
      () => CookiesRepository(remoteDataSource: engine()));

  ///-------------------- domain layer ----------------------------------

  //use-cases
  engine.registerLazySingleton<GetCookies>(() => GetCookies(repo: engine()));
  engine.registerLazySingleton<GetOffers>(() => GetOffers(repo: engine()));

  // repository contract
  engine.registerLazySingleton<RepositoryContract>(
      () => CookiesRepository(remoteDataSource: engine()));

  ///-------------------- presentation layer ----------------------------------

  // State management initializations go here (Bloc, Provider, ...)
  engine.registerLazySingleton<CookiesCubit>(() => CookiesCubit());
}
