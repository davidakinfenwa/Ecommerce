import 'package:dartz/dartz.dart';
import 'package:testsell/core/exceptions/exceptions.dart';
import 'package:testsell/domain/model/food_model.dart';

abstract class FoodRepository{
Future<Either<Failure<ExceptionMessage>, FoodModelList>> getAllFood();
Future<Either<Failure<ExceptionMessage>, FoodModelList>> revalidategetAllFood();

}