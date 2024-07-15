import 'package:coffee_shop/utils/constants.dart';
import 'package:flutter/material.dart';

import 'package:google_nav_bar/google_nav_bar.dart';

// ignore: must_be_immutable
class AppBottomNav extends StatelessWidget {
  AppBottomNav({
    super.key,
    required this.onTabChange,
  });
  void Function(int)? onTabChange;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25),
      child: GNav(
          gap: 8,
          onTabChange: (value) => onTabChange!(value),
          color: iconColor,
          mainAxisAlignment: MainAxisAlignment.center,
          activeColor: iconActive,
          tabBackgroundColor: backgroundColor,
          tabBorderRadius: 24,
          tabActiveBorder: Border.all(color: Colors.white),
          tabs: const [
            GButton(
              icon: Icons.home_rounded,
              text: 'shop',
            ),
            GButton(
              icon: Icons.shopping_bag_outlined,
              text: 'cart',
            )
          ]),
    );
  }
}
