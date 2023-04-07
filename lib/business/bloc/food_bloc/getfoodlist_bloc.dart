// ignore_for_file: no_leading_underscores_for_local_identifiers


import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testsell/business/bloc_state.dart';
import 'package:testsell/business/snapshot/getfoodlist_snapshot_cache.dart';
import 'package:testsell/core/exceptions/exceptions.dart';
import 'package:testsell/domain/model/food_model.dart';
import 'package:testsell/domain/repositories/food_repository.dart';

class GetFoodListCubit
    extends Cubit<BlocState<Failure<ExceptionMessage>, FoodModelList>> {
  final FoodRepository _foodRepository;
  final FoodSnapShot _foodSnapShot;

  GetFoodListCubit(
      {required FoodRepository foodRepository,
      required FoodSnapShot foodSnapShot})
      : _foodRepository = foodRepository,
        _foodSnapShot = foodSnapShot,
        super(const BlocState<Failure<ExceptionMessage>,
            FoodModelList>.initial());

  Future<BlocState<Failure<ExceptionMessage>, FoodModelList>>
      revalidateFoodList() async {
    final _revalidateFoodListEither =
        await _foodRepository.revalidategetAllFood();

    final _state = _revalidateFoodListEither.fold(
        (failure) => BlocState<Failure<ExceptionMessage>, FoodModelList>.error(
            failure: failure), (foodModelList) {
      _foodSnapShot.foodModelList = foodModelList;
      return BlocState<Failure<ExceptionMessage>, FoodModelList>.success(
          data: foodModelList);
    });

    return _state;
  }

  Future<void> getFoodList() async {

    emit(const BlocState<Failure<ExceptionMessage>,FoodModelList>.loading());

    final _getFoodListEither= await _foodRepository.getAllFood();
    return  _getFoodListEither.fold((failure) async {
      final _state= await revalidateFoodList();
      emit(_state);
    }, (foodModelList) async {
      _foodSnapShot.foodModelList=foodModelList;
       emit( BlocState<Failure<ExceptionMessage>,FoodModelList>.success(data: foodModelList));
        final _state= await revalidateFoodList();
        
        emit(_state);
      
    }
      
    );
   
  }
}
