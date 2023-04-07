
import 'package:flutter/material.dart';
import 'package:testsell/core/util/constants.dart';

import 'custom_widget_Smalltext.dart';

class ICONTEXTWIDGET extends StatelessWidget {
  final IconData icon;
  final String text;

  final Color iconColor;
  const ICONTEXTWIDGET(
      {Key? key,
      required this.icon,
      required this.text,
      
      required this.iconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Icon(icon,color: iconColor,  size: Sizing.kSizingMultiple*2,),
      SizedBox(width:Sizing.kWSpacing4,),
      SmallText(text: text,size: Sizing.kHSpacing12,)
    ]);
  }
}
