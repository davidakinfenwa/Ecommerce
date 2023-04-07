// ignore_for_file: prefer_const_constructors, unused_field

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testsell/core/route/app_route.gr.dart';
import 'package:testsell/core/util/constants.dart';
import 'package:testsell/core/util/width_constraints.dart';
import 'package:testsell/presentation/screen/auth/sign_in_page.dart';
import 'package:testsell/presentation/shared/custom_button.dart';
import 'package:testsell/presentation/shared/page_indicator.dart';

import '../../core/theme/custom_typography.dart';
import '../shared/page_item.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  int _activePageCount = 0;
  final _totalPage = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _buildPageView(), 
        Positioned(
          right: 0,
          left: 0,
          bottom: (Sizing.kSizingMultiple * 21.75).h,
          child: _buildPageIndicator()),
          Align(
            alignment: Alignment.bottomCenter,
            child: _buildBottonSection(),
          )
          ],
      ),
      
    );
  }

  Widget _buildPageView() {
    return PageView(
      onPageChanged: (int page) {
        setState(() {
          _activePageCount = page;
        });
      },
      children: [
        PageItem(
          imageUrl: 'assets/images/splash.png',
          title: 'Get the taste you desire',
          description:
              'Imagine it and we bring it to your mouth',
          backgroundColor: CustomTypography.kDarkPrimaryColor,
        ),
         PageItem(
          imageUrl: 'assets/images/splash.png',
          title: 'Get Chef all around the world',
          description:
              'The Best are cooking what to tommy wants to eat',
          backgroundColor: CustomTypography.kDarkPrimaryColor,
        ), PageItem(
          imageUrl: 'assets/images/splash.png',
          title: 'Never go a day without eating that food',
          description:
              'We got you covered anytime anyday just bring on the appitie',
          backgroundColor: CustomTypography.kDarkPrimaryColor,
        ),
      ],
    );
  }


  Widget _buildPageIndicator(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        PageIndicator(pageCount: _totalPage, activePageIndex: _activePageCount),
      ],
    );
  }

  Widget _buildBottonSection(){
    return WidthConstraint(context).withHorizontalSymmetricalPadding(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomButton(type: ButtonType.withBorderButton(onTap: ()=>context.router.push(const SignInPageRoute() ), label: 'Sign In' ))
        ],
      )
    );
  }
}
