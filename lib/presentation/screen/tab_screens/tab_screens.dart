import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testsell/business/bloc/food_bloc/getfoodlist_bloc.dart';
import 'package:testsell/business/snapshot/getfoodlist_snapshot_cache.dart';
import 'package:testsell/core/dependencies/dependencies.dart';
import 'package:testsell/core/theme/custom_typography.dart';
import 'package:testsell/presentation/screen/tab_screens/home.dart';

import '../../../core/util/constants.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  int _activeIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onPageViewChangeCallback(int value) {
    setState(() {
      _activeIndex = value;
    });
  }

  Widget _buildPageView() {
    return PageView(
      controller: _pageController,
      onPageChanged: _onPageViewChangeCallback,
      children: [
        buildHomeScreen(),
      ],
    );
  }

  Widget _buildBottomNavigation() {
    return BottomNavigationBar(
        currentIndex: _activeIndex,
        onTap: (int index) {
          _pageController.animateToPage(index,
              duration:
                  const Duration(milliseconds: TimeDuration.kAnimationDuration),
              curve: TimeDuration.kAnimationCurve);
        },
        selectedItemColor: CustomTypography.kDarkPrimaryColor,
        unselectedItemColor: CustomTypography.kDarkGreyColor,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_activity_outlined), label: 'Activities'),
          BottomNavigationBarItem(
              icon: Icon(Icons.history_outlined), label: 'History'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: 'Account'),
        ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: _buildBottomNavigation(),
        body: SafeArea(child: _buildPageView()));
  }

  BlocProvider<GetFoodListCubit> buildHomeScreen() {
    return BlocProvider<GetFoodListCubit>(
        create: (context) {
          return getIt<GetFoodListCubit>()..getFoodList();
        },
        child: const HomePage());
  }
}
