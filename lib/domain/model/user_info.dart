// ignore_for_file: non_constant_identifier_names

import 'package:equatable/equatable.dart';

class UserInfo extends Equatable {
  final String name;
  final String email;
  final String password;
  final String id;

  const UserInfo(
      {required this.name,
      required this.email,
      required this.id,
      required this.password});

  static int get SUCCESS_RESPONSE_CODE => 7;

  factory UserInfo.fromJson(Map<String, dynamic> json) {
    return UserInfo(
        name: json['name'],
        email: json['email'],
        id: json['id'],
        password: json['password']);
  }
  factory UserInfo.empty() {
    return const UserInfo(name: '', email: '', id: '', password: '');
  }

  @override
  String toString() {
    return 'UserInfo(name:$name,email:$email, password:$password, id:$id)';
  }

  @override
  List<Object?> get props => [email, id, password, name];
  
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'password':password
    
    };
  }
 
}

class UserInfoModel extends Equatable {
  List<UserInfo> user_info;
  bool response;
  String message;
  int responseNumber;
  UserInfoModel(
      {required this.user_info,
      required this.message,
      required this.response,
      required this.responseNumber});

  bool get hasUserInfo => user_info.isNotEmpty;
  UserInfo get user => user_info.first;
  bool get SIGN_IN_SUCCESSFUL => responseNumber == 7;

  factory UserInfoModel.fromJson(Map<String, dynamic> json) {
    return UserInfoModel(
        user_info: (json['task_info'] as List)
            .map((e) => UserInfo.fromJson(e as Map<String, dynamic>))
            .toList(),
        message: json['message'],
        response: json['response'],
        responseNumber: json['response_no']);
  }

    Map<String, dynamic> toJson() {
    return {
      'response': response,
      'task_info': user_info.map((e) => e.toJson()).toList(),
      'message': message,
      'response_no': responseNumber,
    };
  }

  @override
  String toString() {

    return 'UserInfoModel(response:$response,user_info:$user_info,message:$message,responseNumber:$responseNumber)';
  }
  
  @override

  List<Object?> get props => [response,responseNumber,message,user_info];
}
