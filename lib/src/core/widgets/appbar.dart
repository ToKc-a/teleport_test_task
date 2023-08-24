import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double barHeight, barPad, radius;
  final Color gradient1, gradient2, background;
  final Widget? extra;

  const CustomAppBar(
      {Key? key,
      required this.barHeight,
      required this.barPad,
      required this.radius,
      this.background = const Color(0xFFF4F5FA),
      this.gradient1 = const Color(0xFF02a1fb),
      this.gradient2 = const Color(0xFF0268c6),
      this.extra})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double z = barHeight - barPad;
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: PreferredSize(
        preferredSize: preferredSize,
        child: Container(
            height: barHeight,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [gradient1, gradient2]),
            ),
            child: Stack(
                children: [
              if (extra != null) extra!,
              Column(
                children: [
                  Container(
                    height: z,
                    margin: EdgeInsets.only(top: barPad),
                    decoration: BoxDecoration(
                      color: background,
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(radius)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          blurRadius: 5,
                          spreadRadius: 0.2,
                          offset: Offset(0.5, -8), // changes position of shadow
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ])),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(220);
}
