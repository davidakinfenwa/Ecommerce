import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/theme/custom_typography.dart';
import '../../core/util/constants.dart';

class DragIndicator extends StatelessWidget {
  const DragIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Sizing.kSizingMultiple.h,
      width: Sizing.kSizingMultiple.w * 3,
      decoration: BoxDecoration(
        color: CustomTypography.kGreyColor,
        borderRadius: BorderRadius.circular(Sizing.kSizingMultiple.h * .5),
      ),
    );
  }
}
