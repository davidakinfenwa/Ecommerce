import 'package:flutter/material.dart';
import 'package:testsell/core/util/constants.dart';

class ElevationButtonImpIcon extends StatelessWidget {
  final VoidCallback onTapp;
  final Color bColor;
  final IconData icon;
  final Color iconColor;
  final double iconSize;
   final double elevate;
  const ElevationButtonImpIcon(
      {Key? key,
      required this.onTapp,
      required this.bColor,
      required this.icon,
      required this.iconColor,
      required this.iconSize,
      required this.elevate
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 50,
      child: Center(
        child: MaterialButton(
            color: bColor,
            shape: const CircleBorder(),
            onPressed: onTapp,
            elevation: elevate,
            child: Icon(
              icon,
              size: Sizing.kSizingMultiple *3,
              color: Colors.white,
            )),
      ),
    );
  }
}



class AppIcon extends StatelessWidget {
  final IconData icon;
  final Color backgroundColor;
  final Color iconColor;
  final double size;
  final double iconSize;
  const AppIcon(
      {Key? key,
      required this.icon,
      this.backgroundColor = const Color(0XFFfcf4e4),
      this.iconColor = const Color(0xFF756d54),
      this.size = 40,
      this.iconSize = 16})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size / 2),
        color: backgroundColor,
      ),
      child: Icon(
        icon,
        color: iconColor,
        size: iconSize,
      ),
    );
  }
}