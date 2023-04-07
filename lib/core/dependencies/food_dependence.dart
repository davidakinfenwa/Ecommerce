import 'package:get_it/get_it.dart';
import 'package:testsell/business/bloc/food_bloc/getfoodlist_bloc.dart';
import 'package:testsell/business/snapshot/getfoodlist_snapshot_cache.dart';
import 'package:testsell/data/datasource/local_datasource/food_local_datasource.dart';
import 'package:testsell/data/datasource/remote_datasource/food_remote_datasource.dart';

import 'package:testsell/data/repository_impl/food_repo_impl.dart';

import 'package:testsell/domain/repositories/food_repository.dart';

void getDependenciesInit(GetIt getIt) {
  //controllers (cubit)
  getIt.registerFactory<GetFoodListCubit>(
      () => GetFoodListCubit(foodRepository: getIt(), foodSnapShot: getIt()));

  //snapshot
  getIt.registerLazySingleton<FoodSnapShot>(() => FoodSnapShot());

  //repositories
  getIt.registerLazySingleton<FoodRepository>(() => FoodRepositoryImpl(
      foodLocalDatasource: getIt(),
      networkInfo: getIt(),
      foodRemoteDataSource: getIt()));

  //datasource
  getIt.registerLazySingleton<FoodRemoteDataSource>(
      () => FoodRemoteDataSourceImp(exceptionMapper: getIt()));
  getIt.registerLazySingleton<FoodLocalDatasource>(
      () => FoodLocalDatasourceImp(storage: getIt()));
}
