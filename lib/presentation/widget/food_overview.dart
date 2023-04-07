
import 'package:flutter/material.dart';
import 'package:testsell/core/theme/custom_typography.dart';
import 'package:testsell/core/util/constants.dart';

import 'custom_widget_Bigtext.dart';
import 'custom_widget_Smalltext.dart';
import 'icon_text_widget.dart';

class FoodOverview extends StatelessWidget {
  final String title;
  const FoodOverview({ Key? key,required this.title }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BigText(text: title,size:Sizing.kHSpacing12,),
                      SizedBox(
                        height: Sizing.kHSpacing12,
                      ),
                      Row(
                        children: [
                          Wrap(
                            children: List.generate(
                                4,
                                (index) => Icon(
                                      Icons.star,
                                      color: CustomTypography.kDarkPrimaryColor,
                                      size:Sizing.kBorderRadius * 2,
                                    )),
                          ),
                           SizedBox(
                            width: Sizing.kWSpacing4,
                          ),
                          SmallText(text: '4.5',size: Sizing.kHSpacing12),
                           SizedBox(
                            width: Sizing.kWSpacing4,
                          ),
                          SmallText(text: '1234',size: Sizing.kHSpacing12),
                          SizedBox(
                            width: Sizing.kWSpacing4,
                          ),
                          SmallText(text: 'Comment',size: Sizing.kHSpacing12)
                        ],
                      ),
                      SizedBox(
                        height:Sizing.kHSpacing20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:  [
                          ICONTEXTWIDGET(
                              icon: Icons.circle_sharp,
                              text: "Normal",
                              iconColor: CustomTypography.kDarkPrimaryColor),
                          ICONTEXTWIDGET(
                              icon: Icons.location_on,
                              text: "17.5km",
                              iconColor: CustomTypography.kDarkPrimaryColor),
                          ICONTEXTWIDGET(
                              icon: Icons.access_time_filled_rounded,
                              text: "32min",
                              iconColor: CustomTypography.kDarkPrimaryColor),
                        ],
                      )
                    ],
                  );
  }
}



 