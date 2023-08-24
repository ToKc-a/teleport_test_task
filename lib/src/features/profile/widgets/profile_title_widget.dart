import 'package:flutter/material.dart';

import '../../../core/constants/icons.dart';
import '../../../core/widgets/icons_manager.dart';

class ProfileTitleWidget extends StatelessWidget {
  final VoidCallback onTap;
  const ProfileTitleWidget({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 45, left: 12, right: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: onTap,
                child: Row(
                  children: [
                    IconsManager(CustomIcons.back, size: 14, color: Colors.white,),
                    const SizedBox(width: 8),
                    const Text(
                      'Профиль',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
            ],
          ),
          IconsManager(CustomIcons.exit, size: 24),
        ],
      ),
    );
  }
}
