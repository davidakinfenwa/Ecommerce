import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testsell/business/bloc/get_authenticated_user_cubit/get_authenticated_user_cubit.dart';
import 'package:testsell/business/bloc_state.dart';
import 'package:testsell/core/dependencies/dependencies.dart';
import 'package:testsell/core/exceptions/exceptions.dart';
import 'package:testsell/domain/model/user_info.dart';
import '../../core/route/app_route.gr.dart';
import '../../core/theme/custom_typography.dart';
import '../../core/util/constants.dart';
import '../shared/response_indicators/loading_indicator.dart';

class SplashScreen extends StatefulWidget implements AutoRouteWrapper {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<GetAuthenticatedUserCubit>(
      create: ((context) =>
          getIt<GetAuthenticatedUserCubit>()..getAuthenticatedUser()),
      child: this,
    );
  }
}

class _SplashScreenState extends State<SplashScreen> {
  // @override
  // void initState() {
  //   Future.delayed(const Duration(seconds: 500));
  //   context.router.replaceAll([const StartScreenRoute()]);
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomTypography.kDarkPrimaryColor,
      body: BlocConsumer<GetAuthenticatedUserCubit,
          BlocState<Failure<ExceptionMessage>, UserInfoModel>>(
        listener: (context, state) {
          state.maybeMap(
            orElse: () => null,
            success: (state) async {
              await Future.delayed(
                  const Duration(seconds: Sizing.kSplashScreenDelay));
              if (state.data.response) {
                // navigate to tab-screen
                context.router.replaceAll([const TabScreenRoute()]);
              } else {
                context.router.replaceAll([const StartScreenRoute()]);
              }
            },
            error: (state) async {
              await Future.delayed(
                  const Duration(seconds: Sizing.kSplashScreenDelay));
              context.router.replaceAll([const StartScreenRoute()]);
            },
          );
        },
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Center(
                  child: Image.asset(
                    "assets/logo/foodi.png",
                    //width: Sizing.kSizingMultiple * 30).w,
                    width: (Sizing.kSizingMultiple * 30).w,
                  ),
                ),
              ),
              LoadingIndicator(
                  type: LoadingIndicatorType.linearProgressIndicator()),
            ],
          );
        },
      ),
    );
  }
}
