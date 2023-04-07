// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testsell/business/bloc/food_bloc/getfoodlist_bloc.dart';
import 'package:testsell/business/snapshot/getfoodlist_snapshot_cache.dart';
import 'package:testsell/core/dependencies/dependencies.dart';
import 'package:testsell/core/theme/custom_typography.dart';
import 'package:testsell/core/util/constants.dart';
import 'package:testsell/core/util/width_constraints.dart';

import '../../widget/app_icon_widget.dart';
import '../../widget/navigation_drawer.dart';
import '../home_page_food.dart';

class HomePage extends StatefulWidget implements AutoRouteWrapper {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
  
    @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<GetFoodListCubit>(
      create: (context) => getIt<GetFoodListCubit>()..getFoodList(),
      child: this,
    );
  }
}

class _HomePageState extends State<HomePage> {
  @override
  @override
  Widget build(BuildContext context) {
    Future<void> _reloadData() async {}
    return Scaffold(
      drawer: const NavigationDrawer(),
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: _reloadData,
          child: WidthConstraint(context).withHorizontalSymmetricalPadding(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Builder(builder: (context) {
                        return Center(
                          child: InkWell(
                            onTap: () {
                              Scaffold.of(context).openDrawer();
                            },
                            child: Container(
                              width: (Sizing.kSizingMultiple * 7).w,
                              height: (Sizing.kSizingMultiple * 7).h,
                              decoration: BoxDecoration(
                                  color: CustomTypography.kSecondaryColor,
                                  borderRadius: BorderRadius.circular(
                                      Sizing.kSizingMultiple * 5),
                                  image: const DecorationImage(
                                      image:
                                          AssetImage("assets/images/david.jpg"),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                        );
                      }),
                      ElevationButtonImpIcon(
                          onTapp: () {},
                          bColor: CustomTypography.kSecondaryColor,
                          icon: Icons.shopping_cart_outlined,
                          iconColor: CustomTypography.kSecondaryColor,
                          iconSize:Sizing.kSizingMultiple * 3,
                          elevate: 0),
                    ],
                  ),
                ),
                const Expanded(
                    child: FoodPageBody()
                        ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
