
import 'package:flutter/material.dart';
import 'package:testsell/core/theme/custom_typography.dart';
import 'package:testsell/core/util/constants.dart';

import 'custom_widget_Smalltext.dart';


class ExpandableText extends StatefulWidget {
  final String text;
  const ExpandableText({ Key? key,required this.text }) : super(key: key);

  @override
  _ExpandableTextState createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  late String firstHalf;
  late String secondHalf;

  bool hiddeText= true;

  double textHeight =Sizing.KPageViewTextContainer;
  @override
  void initState() {
    if (widget.text.length >= textHeight) {
      firstHalf=widget.text.substring(0,textHeight.toInt());
      secondHalf=widget.text.substring(textHeight.toInt()+1,widget.text.length);
    }
    else{
      firstHalf=widget.text; 
      secondHalf="";
    }
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty?SmallText(text: firstHalf):Column(
        children: [
            SmallText(text: hiddeText?(firstHalf+"..."):(firstHalf+secondHalf), color: CustomTypography.kDarkGreyColor,height: 1.5,size: Sizing.kHSpacing12),
            InkWell(
              onTap: (){
                setState(() {
                  hiddeText=!hiddeText;
                });
              },
              child: Row(children: [
                SmallText(text:hiddeText!=true?'Show less':'Show more',color: CustomTypography.kDarkPrimaryColor,),
                 Icon(hiddeText?Icons.arrow_drop_down:Icons.arrow_drop_up,color: CustomTypography.kDarkPrimaryColor,)
              ],),
            )
        ],
      ),
    );
  }
}