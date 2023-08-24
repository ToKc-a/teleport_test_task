import 'package:flutter/material.dart';
import 'package:teleport_test_task/src/core/constants/icons.dart';
import 'package:teleport_test_task/src/core/widgets/icons_manager.dart';
import 'package:teleport_test_task/src/features/main/screens/main_screen.dart';

class MainScreenTitleWidget extends StatelessWidget {
  final VoidCallback onTap;
  MainScreenTitleWidget({super.key, required this.onTap});

  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 45, left: 12, right: 12),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: onTap,
                  child: const Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/images/avatar.png'),
                        radius: 17,
                      ),
                      SizedBox(width: 8),
                      Text(
                        'Кирилл',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  child: Stack(
                      alignment: AlignmentDirectional.topEnd,
                      children: [
                        IconsManager(CustomIcons.notify, size: 35),
                        const CircleAvatar(
                          radius: 8,
                          backgroundColor: Colors.red,
                          child: Center(
                              child: Text(
                            '3',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                                fontWeight: FontWeight.w400),
                          )),
                        ),
                      ]),
                  onTap: () {},
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Баланс кошелька ImPay',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                ),
                Text(
                  '5 485,67 ₽',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: SizedBox(
              height: 40,
              child: TextFormField(
                controller: searchController,
                keyboardType: TextInputType.text,
                cursorColor: Colors.white,
                cursorHeight: 15,
                textAlignVertical: TextAlignVertical.center,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
                decoration: InputDecoration(
                  isDense: true,
                  filled: true,
                  fillColor: const Color(0x26FFFFFF),
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 14.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: BorderSide.none,
                  ),
                  hintText: 'Поиск',
                  isCollapsed: true,
                  suffixIcon: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: IconsManager(
                      CustomIcons.search,
                      size: 24,
                    ),
                  ),
                  hintStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
