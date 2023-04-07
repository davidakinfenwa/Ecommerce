// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:dio/dio.dart';
import 'package:testsell/core/exceptions/exceptions.dart';
import 'package:testsell/core/network/network.dart';
import 'package:testsell/domain/model/food_model.dart';
import 'package:testsell/domain/model/shared/response_model.dart';

abstract class FoodRemoteDataSource{
Future<ResponseModel<FoodModelList>> getFood();
}


class FoodRemoteDataSourceImp implements FoodRemoteDataSource{
final ExceptionMapper _exceptionMapper;
FoodRemoteDataSourceImp({required ExceptionMapper exceptionMapper }):_exceptionMapper=exceptionMapper;
  @override
  Future<ResponseModel<FoodModelList>> getFood() async {
 
   try {
     final _response= await dioClient.get('POPULAR_FOOD');
     
     if(!(_response.data['response'] as bool)){
      return ResponseModel<FoodModelList>.errorResponse(data: GenericResponseModel.fromJson(_response.data));
     }

      return ResponseModel<FoodModelList>.successResponse(data: FoodModelList.fromJson(_response.data));
   } on DioError catch (e) {
     throw _exceptionMapper.mapException(e);
   }
  }

}