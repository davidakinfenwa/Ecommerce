// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:dio/dio.dart';
import 'package:testsell/core/exceptions/exceptions.dart';
import 'package:testsell/core/network/network.dart';
import 'package:testsell/domain/form_params/auth/sign_in.dart';
import 'package:testsell/domain/model/user_info.dart';

abstract class AuthRemoteDataSource {
  Future<UserInfoModel> signIn({required SignInFormParam signInFormParam});
}

class AuthRemoteDataSourceImp implements AuthRemoteDataSource {
  final ExceptionMapper _exceptionMapper;

  AuthRemoteDataSourceImp({required ExceptionMapper exceptionMapper})
      : _exceptionMapper = exceptionMapper;

  @override
  Future<UserInfoModel> signIn(
      {required SignInFormParam signInFormParam}) async {
    try {
      final _response = await dioClient.get('SIGN_IN',
          queryParameters: signInFormParam.toJson());
      return UserInfoModel.fromJson(_response.data);
    } on DioError catch (e) {
      throw _exceptionMapper.mapException(e);
    }
  }
}
