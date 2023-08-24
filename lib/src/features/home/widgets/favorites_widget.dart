import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teleport_test_task/src/core/constants/colors.dart';
import 'package:teleport_test_task/src/core/constants/icons.dart';
import 'package:teleport_test_task/src/core/widgets/icons_manager.dart';
import 'package:teleport_test_task/src/features/main/widgets/qr_scanner.dart';

class FavoritesWidget extends StatelessWidget {
  const FavoritesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Избранное'.toUpperCase(),
              style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF8A898E))),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              favoriteCard('Мои платежи', CustomIcons.myWallet),
              favoriteCard('Билеты', CustomIcons.tickets),
              favoriteCard('Карты лояльности', CustomIcons.sale),
              GestureDetector(
                child: favoriteCard('QR - оплата', CustomIcons.qr),
                onTap: () {
                  Get.to(()=>QRScannerPage());
                },
              )
            ],
          )
        ],
      ),
    );
  }
}

Container favoriteCard(String name, String icon) {
  return Container(
    width: 80,
    height: 89,
    padding: const EdgeInsets.all(8),
    decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
              color: Color(0x1F000000),
              blurRadius: 12,
              spreadRadius: 0,
              offset: Offset(0, 4))
        ],
        borderRadius: BorderRadius.circular(6)),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconsManager(
          icon,
          color: CustomColors.activeBottomButton,
        ),
        const SizedBox(height: 13),
        Text(
          name,
          style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 11,
              color: Color(0xFF222A34)),
        )
      ],
    ),
  );
}
