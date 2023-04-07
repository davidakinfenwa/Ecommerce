import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:testsell/business/bloc/auth_bloc/signin_cubit.dart';
import 'package:testsell/business/bloc/food_bloc/getfoodlist_bloc.dart';
import 'package:testsell/business/snapshot/auth_snapshot_cache.dart';
import 'package:testsell/business/snapshot/getfoodlist_snapshot_cache.dart';
import 'package:testsell/core/interceptors/interceptors.dart';

import 'core/dependencies/dependencies.dart';
import 'core/network/network.dart';
import 'core/route/app_route.gr.dart';
import 'core/theme/custom_typography.dart';

void _setUpDioInterceptors() {
  dioClient.interceptors.add(getIt<LogginInterceptors>());
  dioClient.interceptors.add(getIt<HeaderInterceptors>());
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initGetIt();
  _setUpDioInterceptors();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AuthSnapShotCache>(
            create: (_) => AuthSnapShotCache()),
        ChangeNotifierProvider<FoodSnapShot>(
            create: (_) => FoodSnapShot()),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<SignInFormCubit>(
              create: (context) => getIt<SignInFormCubit>()),
              BlocProvider<GetFoodListCubit>(
              create: (context) => getIt<GetFoodListCubit>()),
        ],
        child: ScreenUtilInit(
          
          designSize: const Size(390, 844),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, child) {
            return KeyboardVisibilityProvider(
              child: MaterialApp.router(
                title: 'SellAnything',
                debugShowCheckedModeBanner: false,
                theme: CustomTypography.themeDataModifications,
                routerDelegate: _appRouter.delegate(),
                routeInformationParser: _appRouter.defaultRouteParser(),
              ),
            );
          },
        ),
      ),
    );
  }
}
