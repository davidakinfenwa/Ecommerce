// ignore_for_file: unused_field, no_leading_underscores_for_local_identifiers

import 'package:testsell/core/exceptions/exceptions.dart';
import 'package:testsell/core/network/network.dart';
import 'package:testsell/data/datasource/local_datasource/auth_local_datasource.dart';
import 'package:testsell/data/datasource/remote_datasource/auth_remote_datasource.dart';
import 'package:testsell/domain/model/user_info.dart';
import 'package:testsell/domain/form_params/auth/sign_in.dart';
import 'package:dartz/dartz.dart';
import 'package:testsell/domain/repositories/auth_repositories.dart';

import '../../core/util/constants.dart';

class AuthRepositoryImpl extends AuthRepository {
  final NetworkInfo _networkInfo;
  final AuthRemoteDataSource _remoteDataSource;
  final AuthLocalDataSource _localDataSource;
  AuthRepositoryImpl(
      {required NetworkInfo networkInfo,
      required AuthLocalDataSource localDataSource,
      required AuthRemoteDataSource remoteDataSource})
      : _localDataSource = localDataSource,
        _remoteDataSource = remoteDataSource,
        _networkInfo = networkInfo;
  @override
  Future<Either<Failure<ExceptionMessage>, UserInfoModel>> signin(
      {required SignInFormParam signIn}) async {
    if (await _networkInfo.isConnected) {
    try {
        final _userInfoModel= await _remoteDataSource.signIn(signInFormParam: signIn);

      if (_userInfoModel.hasUserInfo) {
        await _localDataSource.cacheUserInfo(_userInfoModel);
      }
      return right(_userInfoModel);
    } on ExceptionType<ExceptionMessage> catch (e) {
      return left(Failure.serverFailure(exception: e));
    }
    }

    return left(const Failure.serverFailure(
        exception: ExceptionMessages.NO_INTERNET_CONNECTION));
  }
  
  Future<Either<Failure<ExceptionMessage>, UserInfoModel>>
      _getUserProfileFromLocalDataSource() async {
    try {
      final _userProfileModel = await _localDataSource.getUserProfile();
      return right(_userProfileModel);
    } on ExceptionType<ExceptionMessage> catch (e) {
      return left(Failure.serverFailure(exception: e));
    }
  }
  @override
  Future<Either<Failure<ExceptionMessage>, UserInfoModel>> getUserAuth() =>_getUserProfileFromLocalDataSource();
}
