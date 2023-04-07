// ignore_for_file: unused_field, no_leading_underscores_for_local_identifiers

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testsell/business/bloc_state.dart';
import 'package:testsell/business/snapshot/auth_snapshot_cache.dart';
import 'package:testsell/core/exceptions/exceptions.dart';
import 'package:testsell/domain/model/user_info.dart';
import 'package:testsell/domain/repositories/auth_repositories.dart';

import '../../../domain/form_params/auth/sign_in.dart';

class SignInFormCubit
    extends Cubit<BlocState<Failure<ExceptionMessage>, UserInfoModel>> {
  final AuthRepository _repository;
  final AuthSnapShotCache _authSnapShotCache;
  SignInFormCubit(
      {required AuthRepository repository,
      required AuthSnapShotCache authSnapShotCache})
      : _authSnapShotCache = authSnapShotCache,
        _repository = repository,
        super(const BlocState<Failure<ExceptionMessage>,
            UserInfoModel>.initial());

  Future<void> signin({required SignInFormParam signInFormParam}) async {
    emit(const BlocState<Failure<ExceptionMessage>, UserInfoModel>.loading());

    final _signinEither = await _repository.signin(signIn: signInFormParam);

    final state = _signinEither.fold(
        (failure) => BlocState<Failure<ExceptionMessage>, UserInfoModel>.error(
            failure: failure),
        (userInfoModel) {
          if (userInfoModel.hasUserInfo) {
            _authSnapShotCache.userInfo=userInfoModel.user;
          }
          return BlocState<Failure<ExceptionMessage>, UserInfoModel>.success(data: userInfoModel);
        });
        emit(state);
  }
}
