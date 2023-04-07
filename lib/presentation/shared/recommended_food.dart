import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testsell/core/route/app_route.gr.dart';
import 'package:testsell/core/theme/custom_typography.dart';

import 'package:testsell/core/util/constants.dart';

import '../widget/custom_widget_Bigtext.dart';
import '../widget/custom_widget_Smalltext.dart';
import '../widget/icon_text_widget.dart';

class RecommendedFood extends StatefulWidget {
  final String name;
  final String description;

  const RecommendedFood(
      {Key? key, required this.name, required this.description})
      : super(key: key);

  @override
  State<RecommendedFood> createState() => _RecommendedFoodState();
}

class _RecommendedFoodState extends State<RecommendedFood> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.only(bottom: Sizing.kHSpacing10),
          child: Material(
            color: CustomTypography.kWhiteColor,
            child: InkWell(
              onTap: () {
               context.router.push( FoodDetailScreenRoute(desc: '', name: ''));
              },
              child: Row(
                children: [
                  //Image Container For List
                  Container(
                    width: (Sizing.kSizingMultiple * 13).w,
                    height: (Sizing.kSizingMultiple * 13).w,
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(Sizing.kBorderRadius),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/food1.jpg'),
                            fit: BoxFit.cover)),
                  ),
                  //Text Container
                  Expanded(
                    child: Container(
                      height: (Sizing.kSizingMultiple * 12.5).h,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight:
                                Radius.circular(Sizing.kBorderRadius * 5),
                            bottomRight:
                                Radius.circular(Sizing.kBorderRadius * 5)),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: Sizing.kWSpacing10, right: 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            BigText(text: widget.name),
                            SizedBox(
                              height: Sizing.kHSpacing12,
                            ),
                            SmallText(
                              text: widget.description,
                              size: Sizing.kHSpacing12,
                            ),
                            SizedBox(
                              height: Sizing.kHSpacing10,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                ICONTEXTWIDGET(
                                    icon: Icons.circle_sharp,
                                    text: "Normal",
                                    iconColor:
                                        CustomTypography.kDarkPrimaryColor),
                                SizedBox(
                                  width: Sizing.kWSpacing10,
                                ),
                                ICONTEXTWIDGET(
                                    icon: Icons.location_on,
                                    text: "17.5km",
                                    iconColor:
                                        CustomTypography.kDarkPrimaryColor),
                                SizedBox(
                                  width: Sizing.kWSpacing10,
                                ),
                                ICONTEXTWIDGET(
                                    icon: Icons.access_time_filled_rounded,
                                    text: "32min",
                                    iconColor:
                                        CustomTypography.kDarkPrimaryColor),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
