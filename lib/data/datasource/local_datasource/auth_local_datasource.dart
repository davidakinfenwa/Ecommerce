// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:testsell/core/exceptions/exceptions.dart';
import 'package:testsell/core/util/constants.dart';

import 'package:testsell/domain/model/user_info.dart';

abstract class AuthLocalDataSource {
  Future<UserInfoModel> getUserProfile();
  Future<void> cacheUserInfo(UserInfoModel userInfoModel);
}

class AuthLocalDataSourceImp implements AuthLocalDataSource {
  final SharedPreferences _storage;
  AuthLocalDataSourceImp({
    required SharedPreferences storage,
  }) : _storage = storage;

  @override
  Future<void> cacheUserInfo(UserInfoModel userInfoModel) async {
    final _userInfoString = json.encode(userInfoModel.toJson());
    await _storage.setString(Persistence.AUTH_USER_INFO, _userInfoString);

    return;
  }

  @override
  Future<UserInfoModel> getUserProfile() async {
    final _userProfileString = _storage.getString(Persistence.AUTH_USER_INFO);
    if (_userProfileString == null) {
      throw const ExceptionType.cacheException(
          code: ExceptionCode.NOT_FOUND, message: ExceptionMessage.NOT_FOUND);
    }
    return UserInfoModel.fromJson(json.decode(_userProfileString));
  }
}
