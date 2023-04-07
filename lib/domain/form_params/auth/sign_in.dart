import 'package:equatable/equatable.dart';

class SignInFormParam extends Equatable {
  final String email;
  final String password;
  const SignInFormParam({required this.email, required this.password});

  Map<String, dynamic> toJson(){
    return {
      'email':email,
      'password':password
    };
  }
  @override
  List<Object?> get props => [email,password];

  @override
  String toString() {
    
    return 'SignIn(email:$email, password:$password)';
  }
}
