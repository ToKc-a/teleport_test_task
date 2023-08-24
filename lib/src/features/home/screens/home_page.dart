import 'package:flutter/material.dart';
import 'package:teleport_test_task/src/features/home/widgets/favorites_widget.dart';
import 'package:teleport_test_task/src/features/home/widgets/news_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FavoritesWidget(),
        NewsWidget(),
      ],
    );
  }
}
