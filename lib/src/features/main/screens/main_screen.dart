import 'package:flutter/material.dart';
import 'package:teleport_test_task/src/core/constants/icons.dart';
import 'package:teleport_test_task/src/core/widgets/appbar.dart';
import 'package:teleport_test_task/src/core/widgets/icons_manager.dart';
import 'package:teleport_test_task/src/features/home/screens/home_page.dart';
import 'package:teleport_test_task/src/features/main/widgets/title_widget.dart';
import 'package:teleport_test_task/src/features/placeholder/placeholder_page.dart';
import 'package:teleport_test_task/src/features/profile/screens/profile_page.dart';
import 'package:teleport_test_task/src/features/profile/widgets/profile_title_widget.dart';

import '../../../core/constants/colors.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int pageIndex = 0;

  final pages = [
    const HomePage(),
    const PlaceholderPage(pageName: 'Покупки'),
    const PlaceholderPage(pageName: 'Платежи'),
    const PlaceholderPage(pageName: 'Чат'),
    const PlaceholderPage(pageName: 'Бонусы'),
    const ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F5FA),
      appBar: CustomAppBar(
          barHeight: pageIndex == 5?110:220,
          barPad: pageIndex == 5?100:210,
          radius: 12,
          extra: pageIndex == 5
              ? ProfileTitleWidget(
                  onTap: () {
                    setState(() {
                      pageIndex = 0;
                    });
                  },
                )
              : MainScreenTitleWidget(
                  onTap: () {
                    setState(() {
                      pageIndex = 5;
                    });
                  },
                )),
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 83,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 0;
                });
              },
              icon: Column(
                children: [
                  IconsManager(CustomIcons.home,
                      color: pageIndex == 0
                          ? CustomColors.activeBottomButton
                          : CustomColors.disactiveBottomButton),
                  Text(
                    'Главная',
                    style: TextStyle(
                        color: pageIndex == 0
                            ? CustomColors.activeBottomButton
                            : CustomColors.disactiveBottomButton,
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  )
                ],
              )),
          IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 1;
                });
              },
              icon: Column(
                children: [
                  IconsManager(CustomIcons.cart,
                      color: pageIndex == 1
                          ? CustomColors.activeBottomButton
                          : CustomColors.disactiveBottomButton),
                  Text(
                    'Покупки',
                    style: TextStyle(
                        color: pageIndex == 1
                            ? CustomColors.activeBottomButton
                            : CustomColors.disactiveBottomButton,
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  )
                ],
              )),
          IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 2;
                });
              },
              icon: Column(
                children: [
                  IconsManager(CustomIcons.wallet,
                      color: pageIndex == 2
                          ? CustomColors.activeBottomButton
                          : CustomColors.disactiveBottomButton),
                  Text(
                    'Платежи',
                    style: TextStyle(
                        color: pageIndex == 2
                            ? CustomColors.activeBottomButton
                            : CustomColors.disactiveBottomButton,
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  )
                ],
              )),
          IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 3;
                });
              },
              icon: Column(
                children: [
                  IconsManager(CustomIcons.chat,
                      color: pageIndex == 3
                          ? CustomColors.activeBottomButton
                          : CustomColors.disactiveBottomButton),
                  Text(
                    'Чат',
                    style: TextStyle(
                        color: pageIndex == 3
                            ? CustomColors.activeBottomButton
                            : CustomColors.disactiveBottomButton,
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  )
                ],
              )),
          IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 4;
                });
              },
              icon: Column(
                children: [
                  IconsManager(CustomIcons.gift,
                      color: pageIndex == 4
                          ? CustomColors.activeBottomButton
                          : CustomColors.disactiveBottomButton),
                  Text(
                    'Бонусы',
                    style: TextStyle(
                        color: pageIndex == 4
                            ? CustomColors.activeBottomButton
                            : CustomColors.disactiveBottomButton,
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
