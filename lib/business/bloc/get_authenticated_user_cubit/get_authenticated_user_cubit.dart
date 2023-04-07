// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:bloc/bloc.dart';
import 'package:testsell/business/snapshot/auth_snapshot_cache.dart';
import 'package:testsell/core/exceptions/exception_code.dart';
import 'package:testsell/domain/repositories/auth_repositories.dart';

import '../../../core/exceptions/failure.dart';
import '../../../domain/model.dart';
import '../../bloc_state.dart';


class GetAuthenticatedUserCubit
    extends Cubit<BlocState<Failure<ExceptionMessage>, UserInfoModel>> {
  final AuthRepository _repository;
  final AuthSnapShotCache _snapshotCache;

  GetAuthenticatedUserCubit({
    required AuthRepository repository,
    required AuthSnapShotCache snapshotCache,
  })  : _repository = repository,
        _snapshotCache = snapshotCache,
        super(const BlocState<Failure<ExceptionMessage>,
            UserInfoModel>.initial());

  Future<void> getAuthenticatedUser() async {
    emit(const BlocState<Failure<ExceptionMessage>, UserInfoModel>.loading());

    final _authenticatedUserEither = await _repository.getUserAuth();

    final _state = _authenticatedUserEither.fold(
      (failure) => BlocState<Failure<ExceptionMessage>, UserInfoModel>.error(
          failure: failure),
      (userInfoModel) {
        // cache snapshot
        if (userInfoModel.hasUserInfo) {
          _snapshotCache.userInfo = userInfoModel.user;
        }

        return BlocState<Failure<ExceptionMessage>, UserInfoModel>.success(
            data: userInfoModel);
      },
    );

    emit(_state);
  }
}
