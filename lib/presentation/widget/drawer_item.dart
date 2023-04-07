
import 'package:flutter/material.dart';

import '../../core/util/constants.dart';

class DrawerItemes extends StatelessWidget {
  final String name;
  final IconData icon;
final Function() ontap;
  const DrawerItemes({ Key? key,required this.name,required this.icon,required this.ontap }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: SizedBox(
        height: Sizing.kSizingMultiple*5,
        child: Row(children: [
          Icon(icon,size: Sizing.kSizingMultiple *2,  ),
          const SizedBox(width: Sizing.kSizingMultiple, ),
          Text(name,style: const TextStyle(fontSize: Sizing.kSizingMultiple * 2),),
          
        ],),
      ),
    );
  }
}