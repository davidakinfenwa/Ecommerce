// ignore_for_file: prefer_final_fields, unused_field, no_leading_underscores_for_local_identifiers

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testsell/business/bloc/food_bloc/getfoodlist_bloc.dart';
import 'package:testsell/business/bloc_state.dart';
import 'package:testsell/business/snapshot/getfoodlist_snapshot_cache.dart';
import 'package:testsell/core/dependencies/dependencies.dart';
import 'package:testsell/core/exceptions/failure.dart';
import 'package:testsell/core/route/app_route.gr.dart';
import 'package:testsell/core/util/constants.dart';
import 'package:testsell/core/util/snackbar_util.dart';
import 'package:testsell/core/util/width_constraints.dart';
import 'package:testsell/domain/model/food_model.dart';
import 'package:testsell/presentation/shared/custom_chip.dart';
import 'package:testsell/presentation/shared/custom_list_tile.dart';
import 'package:testsell/presentation/shared/response_indicators/empty_response_indicator.dart';
import 'package:testsell/presentation/shared/response_indicators/error_indicator.dart';
import 'package:testsell/presentation/shared/response_indicators/loading_indicator.dart';

import '../../core/exceptions/exceptions.dart';
import '../widget/custom_widget_Bigtext.dart';
import '../widget/custom_widget_Smalltext.dart';
import '../widget/food_overview.dart';

class FoodPageBody extends StatefulWidget{
  const FoodPageBody({super.key});

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();

}

class _FoodPageBodyState extends State<FoodPageBody> {
  var _currentIndex = 0;
  PageController _pageController = PageController(viewportFraction: 0.85);
  final double _scaleFactor = 0.8;
  final double _height = Sizing.KPageViewContainer;

  @override
  void initState() {
    setState(() {
      _pageController = PageController();
    });
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  Widget _buildTopFoodPageView() {
    final _foodList = context.watch<FoodSnapShot>().foodModelList;
    return SliverToBoxAdapter(
      child: Column(
        children: [
          SizedBox(
            height: Sizing.KPageViewContainer,
            child: PageView.builder(
                physics: const AlwaysScrollableScrollPhysics(),
                controller: _pageController,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return _buildPageFull(index);
                }),
          ),
        ],
      ),
    );
  }

  Widget _buildFoodTopSection(int index) {
    return Container(
      height: Sizing.KPageViewContainerMain,
      margin: const EdgeInsets.only(
          left: Sizing.kSizingMultiple, right: Sizing.kSizingMultiple),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Sizing.kSizingMultiple * 3),
          color:
              index.isEven ? const Color(0XFF69c5df) : const Color(0XFF9294cc),
          image: const DecorationImage(
              fit: BoxFit.cover, image: AssetImage('assets/images/food1.jpg'))),
    );
  }

  Widget _buildDetailTopFoodSession() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
          height: Sizing.KPageViewTextContainer,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Sizing.kBorderRadius),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                    color: Color(0xFFe8e8e8),
                    blurRadius: Sizing.kBorderRadius,
                    offset: Offset(0, 5)),
                BoxShadow(color: Colors.white, offset: Offset(-5, 0)),
                BoxShadow(color: Colors.white, offset: Offset(5, 0))
              ]),
          child: Container(
            padding: EdgeInsets.only(
                left: Sizing.kWSpacing20,
                right: Sizing.kWSpacing20,
                top: Sizing.kZeroValue),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(Sizing.kBorderRadius),
                    topLeft: Radius.circular(Sizing.kBorderRadius)),
                color: Colors.white),
            child: Container(
                padding: EdgeInsets.only(
                    left: Sizing.kWSpacing12,
                    right: Sizing.kWSpacing12,
                    top: Sizing.kHSpacing12),
                child: const FoodOverview(title: 'Rice and Egusi')),
          )),
    );
  }

  Widget _poupularSessionText() {
    return SliverToBoxAdapter(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const BigText(text: 'Recommended'),
          SizedBox(
            width: Sizing.kWSpacing10,
          ),
          Container(
            margin: EdgeInsets.only(bottom: Sizing.kHSpacing4),
            child: const BigText(
              text: ".",
              color: Colors.black26,
            ),
          ),
          const SizedBox(
            width: Sizing.kSizingMultiple,
          ),
          Container(
              margin: const EdgeInsets.only(bottom: 2),
              child: SmallText(
                text: 'Food Paring',
                size: Sizing.kHSpacing12,
              ))
        ],
      ),
    );
  }

  Widget _buildPageFull(int index) {
    return Stack(
        children: [_buildFoodTopSection(index), _buildDetailTopFoodSession()]);
  }

  Widget _buildRecoommenedFood() {
    final _foodList = context.watch<FoodSnapShot>().foodModelList;
    if (_foodList.food_info.isEmpty) {
      return SliverFillRemaining(
        child: Center(
          child: WidthConstraint(context).withHorizontalSymmetricalPadding(
            child: EmptyResponseIndicator(
              type: EmptyResponseIndicatorType.simple(
                context,
                onActionCallback: () {},
                message: 'No Recommended food available!',
              ),
            ),
          ),
        ),
      );
    }
    return SliverList(
        delegate: SliverChildBuilderDelegate((context, index) {
          final _foodId=_foodList.food_info[index];
          return _buildFoodItem(foodModelId: _foodId);
        },
        childCount: _foodList.food_info.length)
        );
  }

   Widget _buildFoodItem({required FoodModel foodModelId}) {
    return CustomListTile(
     leading: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Sizing.kBorderRadius),
                  image: const DecorationImage(
                      image: AssetImage('assets/images/food1.jpg'),
                      fit: BoxFit.cover)),
            ),
            title: foodModelId.name,
            description: foodModelId.desc,
            onTap: () {
              context.router.push( FoodDetailScreenRoute(desc: foodModelId.desc, name: foodModelId.name));
            },
    );
  }


    Widget _buildFoodIdListBuilder() {
    final _foodSnapshotCache = context.watch<FoodSnapShot>();

    return BlocConsumer<GetFoodListCubit,
        BlocState<Failure<ExceptionMessage>, FoodModelList>>(
      listener: (context, state) {
        state.maybeMap(
          orElse: () => null,
          error: (state) {
            if (_foodSnapshotCache.foodModelList != FoodModelList.empty()) {
              SnackBarUtil.snackbarError(
                context,
                onRefreshCallback: () {},
                code: state.failure.exception.code,
                message: state.failure.exception.message.toString(),
              );
            }
          },
        );
      },
      builder: (context, state) {
        return state.maybeMap(
          orElse: () {
            if (_foodSnapshotCache.foodModelList != FoodModelList.empty()) {
              return _buildRecoommenedFood();
            }

            return SliverFillRemaining(
              child: Center(
                child: LoadingIndicator(
                  type: LoadingIndicatorType.circularProgressIndicator(),
                ),
              ),
            );
          },
          success: (_) => _buildRecoommenedFood(),
          error: (state) {
            if (_foodSnapshotCache.foodModelList != FoodModelList.empty()) {
              return _buildRecoommenedFood();
            }

            return SliverFillRemaining(
              child: Center(
                child:
                    WidthConstraint(context).withHorizontalSymmetricalPadding(
                  child: ErrorIndicator(
                    type: ErrorIndicatorType.simple(
                      onRetryCallback: () {},
                      code: state.failure.exception.code,
                      message: state.failure.exception.message.toString(),
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    
    return CustomScrollView(
      slivers: [
        _buildTopFoodPageView(),
        _poupularSessionText(),
      _buildFoodIdListBuilder()
      ],
    );
  }
}
