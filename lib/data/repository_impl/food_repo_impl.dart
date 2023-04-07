// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:testsell/core/exceptions/exceptions.dart';
import 'package:dartz/dartz.dart';
import 'package:testsell/core/network/network.dart';
import 'package:testsell/data/datasource/local_datasource/food_local_datasource.dart';
import 'package:testsell/data/datasource/remote_datasource/food_remote_datasource.dart';
import 'package:testsell/domain/model/food_model.dart';
import 'package:testsell/domain/repositories/food_repository.dart';

import '../../core/util/constants.dart';

class FoodRepositoryImpl implements FoodRepository {
  final NetworkInfo _networkInfo;
  final FoodRemoteDataSource _foodRemoteDataSource;
  final FoodLocalDatasource _foodLocalDatasource;
  FoodRepositoryImpl(
      {required NetworkInfo networkInfo,
      required FoodLocalDatasource foodLocalDatasource,
      required FoodRemoteDataSource foodRemoteDataSource})
      : _foodLocalDatasource = foodLocalDatasource,
        _foodRemoteDataSource = foodRemoteDataSource,
        _networkInfo = networkInfo;

  Future<Either<Failure<ExceptionMessage>, FoodModelList>>
      _getFoodListFromLocalDataSource() async {
    try {
      final _foodList = await _foodLocalDatasource.getLocalFood();

      return right(_foodList);
    } on ExceptionType<ExceptionMessage> catch (e) {
      return left(Failure.cacheFailure(exception: e));
    }
  }

  Future<FoodModelList> _cacheRemotegetAllFood(
      {required FoodModelList foodModelList}) async {
    final _foodListEither = await _getFoodListFromLocalDataSource();
    List<FoodModel> _foodModels = <FoodModel>[];

    if (_foodListEither.isLeft()) {
      _foodModels = [...foodModelList.food_info];
    } else {
      final _foodListFromCache =
          _foodListEither.getOrElse(() => FoodModelList.empty());

      // merge created-sender-id to cache sender-id list
      _foodModels = [
        ...foodModelList.food_info,
       // ..._foodListFromCache.food_info
      ];
    }

    final _foodModelList = FoodModelList(food_info: _foodModels);

    await _foodLocalDatasource.cacheLocalFood(foodModelList: _foodModelList);

    return _foodModelList;
  }

  @override
  Future<Either<Failure<ExceptionMessage>, FoodModelList>> getAllFood() async {
   
      try {
        final _getFoodList = await _foodRemoteDataSource.getFood();
        return _getFoodList.map(successResponse: (state) async {
          final _cacheFoodList =
              await _cacheRemotegetAllFood(foodModelList: state.data);
          return right(_cacheFoodList);
        }, errorResponse: (state) {
          final _exception = ExceptionType<ExceptionMessage>.serverException(
              code: ExceptionCode.UNDEFINED,
              message: ExceptionMessage.parse(state.data.message));
          return left(Failure.serverFailure(exception: _exception));
        });
      } on ExceptionType<ExceptionMessage> catch (e) {
        return left(Failure.serverFailure(exception: e));
      }
   
  }

  @override
  Future<Either<Failure<ExceptionMessage>, FoodModelList>>
      revalidategetAllFood() async {
    if (await _networkInfo.isConnected) {
      try {
        final _revalidatedRemoteData = await _foodRemoteDataSource.getFood();
        return _revalidatedRemoteData.map(successResponse: (state) async {
          await _foodLocalDatasource.cacheLocalFood(foodModelList: state.data);
          return right(state.data);
        }, errorResponse: (state) {
          final _exception = ExceptionType<ExceptionMessage>.serverException(
              code: ExceptionCode.UNDEFINED,
              message: ExceptionMessage.parse(state.data.message));
          return left(Failure.serverFailure(exception: _exception));
        });
      } on ExceptionType<ExceptionMessage> catch (e) {
        return left(Failure.serverFailure(exception: e));
      }
    }
    return left(const Failure.serverFailure(
        exception: ExceptionMessages.NO_INTERNET_CONNECTION));
  }
}
