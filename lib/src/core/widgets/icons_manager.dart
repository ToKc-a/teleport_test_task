import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconsManager extends StatelessWidget {
  final String patch;
  final double? size;
  final Color? color;

  const IconsManager(this.patch, {Key? key, this.size, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      width: size,
      child: SvgPicture.asset(
        patch,
        color: color,
        height: size,
        width: size,
      ),
    );
  }
}