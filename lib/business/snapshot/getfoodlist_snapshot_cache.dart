import 'package:flutter/material.dart';
import 'package:testsell/domain/model/food_model.dart';

class FoodSnapShot with ChangeNotifier{
  static FoodModelList? _foodModelList;
  FoodModelList get foodModelList=>_foodModelList ?? FoodModelList.empty(); 
  set foodModelList (FoodModelList foodModelList){
    _foodModelList=foodModelList;
    notifyListeners();
  }

  void notifyAllListeners(){
    notifyListeners();
  }
}