// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:testsell/domain/model.dart';

class AuthSnapShotCache with ChangeNotifier{
 UserInfo? _userInfo;
 UserInfo? _userInfoContex;

 UserInfo  get userInfo =>_userInfo ?? UserInfo.empty();
 set  userInfo(UserInfo user){
  _userInfo=_userInfoContex=user;
  notifyListeners();
 }
 }