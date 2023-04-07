

import 'package:flutter/material.dart';
import 'package:testsell/core/util/constants.dart';

class BigText extends StatelessWidget {
 final Color? color;
  final String text;
  final double size;
  final TextOverflow textOverflow;
 const BigText(
      {Key? key,
      this.color = const Color(0xFF332d2b),
      required this.text,
      this.size = 0,
      this.textOverflow = TextOverflow.ellipsis})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: textOverflow,
      style: TextStyle(
          color: color,
          fontWeight: FontWeight.w400,
          fontFamily: 'Roboto',
          fontSize:size==0? Sizing.kSizingMultiple*3:size  ),
    );
  }
}
