import 'package:dartz/dartz.dart';
import 'package:testsell/core/exceptions/exceptions.dart';
import 'package:testsell/domain/form_params/auth/sign_in.dart';

import '../model/user_info.dart';

abstract class AuthRepository{
  Future<Either<Failure<ExceptionMessage>,UserInfoModel>> signin({required SignInFormParam signIn});
  Future<Either<Failure<ExceptionMessage>,UserInfoModel>> getUserAuth();
}