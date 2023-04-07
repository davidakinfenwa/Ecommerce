import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:testsell/business/bloc/food_bloc/getfoodlist_bloc.dart';
import 'package:testsell/business/bloc_state.dart';
import 'package:testsell/core/exceptions/exceptions.dart';
import 'package:testsell/core/theme/custom_typography.dart';
import 'package:testsell/core/util/constants.dart';
import 'package:testsell/domain/model/food_model.dart';

import '../widget/app_icon_widget.dart';
import '../widget/custom_widget_Bigtext.dart';
import '../widget/expandable_text_widget.dart';

class FoodDetailScreen extends StatefulWidget {
  final String name;
  final String desc;
  const FoodDetailScreen({Key? key, required this.desc, required this.name}) : super(key: key);

  @override
  State<FoodDetailScreen> createState() => _FoodDetailScreenState();
}

class _FoodDetailScreenState extends State<FoodDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              toolbarHeight: 80,
              automaticallyImplyLeading: false,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: () {},
                      child: const AppIcon(icon: Icons.arrow_back_ios)),
                  //const AppIcon(icon: Icons.shopping_cart_outlined)
                  // GetBuilder<PopularProductController>(
                  //     builder: (showCartDetail) {
                  //   return Stack(
                  //     children: [
                  //       GestureDetector(
                  //           onTap: () {

                  //           },
                  //           child: const AppIcon(
                  //               icon: Icons.shopping_cart_outlined)),
                  //       showCartDetail.totalItems >= 1
                  //           ? const Positioned(
                  //               right: 0,
                  //               top: 0,
                  //               child: AppIcon(
                  //                 icon: Icons.circle,
                  //                 size: 20,
                  //                 iconColor: Colors.transparent,
                  //                 backgroundColor: AppColor.mainColor,
                  //               ))
                  //           : Container(),
                  //       showCartDetail.totalItems >= 1
                  //           ? Positioned(
                  //               right: 4,
                  //               top: 4,
                  //               child: BigText(
                  //                 text: showCartDetail.totalItems.toString(),
                  //                 size: 12,
                  //                 color: Colors.white,
                  //               ))
                  //           : Container()
                  //     ],
                  //   );
                  // })
                ],
              ),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(40),
                child: Container(
                  width: double.maxFinite,
                  padding: const EdgeInsets.only(top: 5, bottom: 10),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(Sizing.kBorderRadius * 5),
                      topRight: Radius.circular(Sizing.kBorderRadius * 5),
                    ),
                    color: Colors.white,
                  ),
                  child:   Center(child: BigText(text: widget.name)),
                ),
              ),
              pinned: true,
              snap: false,
              floating: true,
              backgroundColor: CustomTypography.kPrimaryColor10,
              flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                'assets/images/food1.jpg',
                fit: BoxFit.cover,
                width: double.maxFinite,
              )),
              expandedHeight: 300,
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                        left: Sizing.kSizingMultiple * 2,
                        right: Sizing.kSizingMultiple * 2),
                    child:  ExpandableText(
                      text: widget.desc,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: BlocBuilder<GetFoodListCubit,BlocState<Failure<ExceptionMessage>,FoodModelList>>(
          builder:(context,state)
          {
            return  Column(mainAxisSize: MainAxisSize.min, children: [
            Container(
              padding: const EdgeInsets.only(
                  left: Sizing.kSizingMultiple * 2,
                  right: Sizing.kSizingMultiple * 2,
                  top: Sizing.kSizingMultiple * 2,
                  bottom: Sizing.kSizingMultiple * 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevationButtonImpIcon(
                      onTapp: () { context.read<GetFoodListCubit>().checkQuantity();},
                      bColor: CustomTypography.mainColor,
                      icon: Icons.remove,
                      iconColor: CustomTypography.kWhiteColor,
                      iconSize: Sizing.kSizingMultiple * 2,
                      elevate: 2),
                  BigText(
                    text: "\$ 300  X 4 ${}",
                    color: CustomTypography.kDarkGreyColor,
                  ),
                  ElevationButtonImpIcon(
                      onTapp: () {},
                      bColor: CustomTypography.mainColor,
                      icon: Icons.add,
                      iconColor: Colors.white,
                      iconSize: Sizing.kSizingMultiple * 2,
                      elevate: 2),
                ],
              ),
            ),
            Container(
              height: Sizing.kPagevieHeight,
              padding: const EdgeInsets.only(
                  top: Sizing.kSizingMultiple * 2,
                  bottom: Sizing.kSizingMultiple * 2,
                  left: Sizing.kSizingMultiple * 2,
                  right: Sizing.kSizingMultiple * 2),
              decoration:const BoxDecoration(
                  borderRadius:  BorderRadius.only(
                    topLeft: Radius.circular(Sizing.kSizingMultiple * 2),
                    topRight: Radius.circular(Sizing.kSizingMultiple * 2),
                  ),
                  color: CustomTypography.buttonBackgroundColor),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.only(
                        top: Sizing.kSizingMultiple * 2,
                        bottom: Sizing.kSizingMultiple * 2,
                        left: Sizing.kSizingMultiple * 2,
                        right: Sizing.kSizingMultiple * 2),
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(Sizing.kSizingMultiple * 2),
                      color: Colors.white,
                    ),
                    child: const Icon(
                      Icons.favorite,
                      color: CustomTypography.mainColor,
                    ),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            CustomTypography.mainColor),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)))),
                    onPressed: () {},
                    child: const Center(
                        child: BigText(
                      text: "\$ 300 | Add to Cart",
                      color: CustomTypography.kWhiteColor,
                    )),
                  )
                ],
              ),
            )
          ]
          );
          }
              
          
         ,
        ));
  }
}
