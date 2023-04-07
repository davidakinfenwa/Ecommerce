import 'package:get_it/get_it.dart';
import 'package:testsell/business/bloc/auth_bloc/signin_cubit.dart';
import 'package:testsell/business/bloc/get_authenticated_user_cubit/get_authenticated_user_cubit.dart';
import 'package:testsell/business/snapshot/auth_snapshot_cache.dart';
import 'package:testsell/data/datasource/local_datasource/auth_local_datasource.dart';
import 'package:testsell/data/datasource/remote_datasource/auth_remote_datasource.dart';
import 'package:testsell/data/repository_impl/auth_repo_impl.dart';
import 'package:testsell/domain/repositories/auth_repositories.dart';

void authDependenciesInit(GetIt getIt) {
  //controllers (cubit)
  getIt.registerFactory<SignInFormCubit>(
      () => SignInFormCubit(repository: getIt(), authSnapShotCache: getIt()));
  getIt.registerFactory<GetAuthenticatedUserCubit>(() => GetAuthenticatedUserCubit(repository: getIt(), snapshotCache: getIt()));
  //snapshot
  getIt.registerLazySingleton<AuthSnapShotCache>(() => AuthSnapShotCache());

  //repositories
  getIt.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl(
      localDataSource: getIt(),
      networkInfo: getIt(),
      remoteDataSource: getIt()));

  //datasource
  getIt.registerLazySingleton<AuthRemoteDataSource>(
      () => AuthRemoteDataSourceImp(exceptionMapper: getIt()));
  getIt.registerLazySingleton<AuthLocalDataSource>(
      () => AuthLocalDataSourceImp(storage: getIt()));
}
