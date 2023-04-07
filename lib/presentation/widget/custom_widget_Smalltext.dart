

import 'package:flutter/material.dart';
import 'package:testsell/core/util/constants.dart';

class SmallText extends StatelessWidget {
  final Color? color;
  final String text;
   final double size;
  final double height;
  final TextOverflow textOverflow;
 
  const  SmallText({
    Key? key,
    this.color=const Color(0xFFccc7c5),
    required this.text,
     this.size=Sizing.kSizingMultiple*2,
    this.height=1.2,
    this.textOverflow = TextOverflow.ellipsis
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
     overflow: textOverflow,
      style: TextStyle(color: Colors.black54,fontFamily: 'Roboto',fontSize: size,height: height),
    );
  }
}
