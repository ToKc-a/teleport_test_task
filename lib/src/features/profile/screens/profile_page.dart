import 'package:flutter/material.dart';

import '../../../core/constants/icons.dart';
import '../../../core/widgets/icons_manager.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/avatar.png'),
              radius: 40,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Васильков Кирилл Александрович',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Color(0xFF222A34)),
          ),
          const SizedBox(height: 5),
          const Text(
            '+7 922 123 45 67',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13,
                color: Color(0xFF8A898E)),
          ),
          const SizedBox(height: 30),
          const IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '1 485,67 ₽',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: Color(0xFF00A3FF)),
                      ),
                      Text(
                        'Кошелек ImPay',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Color(0xFF8A898E)),
                      ),
                    ],
                  ),
                ),
                VerticalDivider(
                  width: 0,
                  thickness: 1,
                  indent: 0,
                  endIndent: 0,
                  color: Color(0xFFC4C4C4),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '5 485,67',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: Color(0xFF00A3FF)),
                      ),
                      Text(
                        'Накоплено бонусов',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Color(0xFF8A898E)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 38,
                    width: 38,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 12,
                              offset: Offset(0, 4),
                              color: Color(0x1A000000))
                        ],
                        shape: BoxShape.circle),
                    child: CircleAvatar(backgroundColor: Colors.white,radius:19, child: IconsManager(CustomIcons.person)),
                  ),
                  const SizedBox(width: 23),
                  const Text('Мои данные',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF222A34))),
                ],
              ),
              IconsManager(CustomIcons.forward, color: Color(0xFF8A898E))
            ],
          ),
          const SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 38,
                width: 38,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 12,
                          offset: Offset(0, 4),
                          color: Color(0x1A000000))
                    ],
                    shape: BoxShape.circle),
                child: CircleAvatar(backgroundColor: Colors.white,radius:19, child: IconsManager(CustomIcons.question)),
              ),
              const SizedBox(width: 23),
              const Text('Помощь',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF222A34))),
            ],
          ),
        ],
      ),
    );
  }
}
