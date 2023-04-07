import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:testsell/core/dependencies/auth_dependence.dart';
import 'package:testsell/core/dependencies/food_dependence.dart';

import '../exceptions/exceptions.dart';
import '../interceptors/interceptors.dart';
import '../network/network.dart';

GetIt getIt =GetIt.instance;

Future<void>  initGetIt() async{

authDependenciesInit(getIt);
getDependenciesInit(getIt);

  
    // exception mapper
  getIt.registerLazySingleton<ExceptionMapper>(() => ExceptionMapper());

  final sharedPreference = await SharedPreferences.getInstance();
  getIt.registerLazySingleton<SharedPreferences>(() => sharedPreference);

  // // contact permissions
  // getIt.registerLazySingleton<PermissionHelper>(() => PermissionHelper());

  // interceptors
  getIt.registerLazySingleton<LogginInterceptors>(() => LogginInterceptors());
  getIt.registerLazySingleton<HeaderInterceptors>(() => HeaderInterceptors());

  // internet checker
  getIt.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(connectionChecker: getIt()));
  getIt.registerLazySingleton<InternetConnectionChecker>(
      () => InternetConnectionChecker());
}