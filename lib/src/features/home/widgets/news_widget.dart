import 'package:flutter/material.dart';

import '../../../core/constants/icons.dart';
import '../../../core/widgets/icons_manager.dart';

class NewsWidget extends StatelessWidget {
  NewsWidget({super.key});

  List<String> images = [
    'assets/images/window.png',
    'assets/images/coffee.png',
    'assets/images/window.png',
    'assets/images/coffee.png'
  ];
  List<String> titles = [
    'Суперакция от Веккер Закажи окно до конца сентября и получи мегаскидку плюсь бонусы на счёт.',
    'При заказе одной кружки кофе Вы получите 20 бонусов на счет.',
    'Суперакция от Веккер Закажи окно до конца сентября и получи мегаскидку плюсь бонусы на счёт.',
    'При заказе одной кружки кофе Вы получите 20 бонусов на счет.'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 15.0),
          child: GestureDetector(
            onTap: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Новости'.toUpperCase(),
                    style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF8A898E))),
                IconsManager(CustomIcons.forward, color: Color(0xFFBFBFBF))
              ],
            ),
          ),
        ),
        const SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: SizedBox(
            height: 180,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) =>
                  newsCard(titles[index], images[index]),
              separatorBuilder: (context, index) => const SizedBox(width: 14),
              itemCount: titles.length,
            ),
          ),
        ),
      ],
    );
  }
}

Stack newsCard(String title, String image) {
  return Stack(
    children: [
      Container(
        width: 180,
        height: 180,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(image)),
            boxShadow: const [
              BoxShadow(
                  color: Color(0xD000000),
                  blurRadius: 15,
                  spreadRadius: 0,
                  offset: Offset(0, 5))
            ],
            borderRadius: BorderRadius.circular(14)),
      ),
      Container(
        width: 180,
        height: 180,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter,
                colors: [
                  Colors.white.withOpacity(0.0),
                  Colors.black.withOpacity(0.8),
                ]),
            borderRadius: BorderRadius.circular(14)),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Text(
            title,
            style: const TextStyle(
                fontWeight: FontWeight.w400, fontSize: 14, color: Colors.white),
          ),
        ),
      )
    ],
  );
}
