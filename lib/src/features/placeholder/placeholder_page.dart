import 'package:flutter/material.dart';
import 'package:teleport_test_task/src/core/constants/colors.dart';

class PlaceholderPage extends StatelessWidget {
  final String pageName;
  const PlaceholderPage({Key? key, required this.pageName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFF4F5FA),
      child: Center(
        child: Text(
          "Страница $pageName находится в разработке",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: CustomColors.gradient2,
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}