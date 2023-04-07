// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:testsell/core/exceptions/exceptions.dart';
import 'package:testsell/core/util/constants.dart';
import 'package:testsell/domain/model/food_model.dart';

abstract class FoodLocalDatasource {
  Future<FoodModelList> getLocalFood();
  Future<void> cacheLocalFood({required FoodModelList foodModelList});
}

class FoodLocalDatasourceImp implements FoodLocalDatasource {
  final SharedPreferences _storage;
  FoodLocalDatasourceImp({required SharedPreferences storage})
      : _storage = storage;

  @override
  Future<FoodModelList> getLocalFood() async{
    final _getFoodList = _storage.getString(Persistence.FOOD_TOTAL);
  
    if (_getFoodList == null) {
      throw const ExceptionType.cacheException(
          code: ExceptionCode.NOT_FOUND, 
          message: ExceptionMessage.NOT_FOUND);
    }
    return FoodModelList.fromJson(json.decode(_getFoodList));
  }
  
  @override
  Future<void> cacheLocalFood({required FoodModelList foodModelList})  async{
   final _cacheFoodList= json.encode(foodModelList.tojson());
   await _storage.setString(Persistence.FOOD_TOTAL, _cacheFoodList);
   

   return;
  }
}
