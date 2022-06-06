import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/src/constants.dart';
import 'package:flutter_ecommerce/src/screens/home/home_screen.dart';
import 'package:flutter_ecommerce/src/screens/profile/profile_screen.dart';

enum MenuState { home, favourite, message, profile }

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key, required this.selectedMenu}) : super(key: key);
  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    const Color inActiveIconColor = Color(0xFFB6B6B6);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -15),
            blurRadius: 20,
            color: const Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: SafeArea(
        top: false,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(Icons.storefront_outlined),
                color: MenuState.home == selectedMenu
                    ? kPrimaryColor
                    : inActiveIconColor,
              onPressed: () =>
                  Navigator.pushNamed(context, HomeScreen.routeName),
            ),
            IconButton(
              icon: const Icon(Icons.favorite_outline),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.chat_bubble_outline),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.person),
                color: MenuState.profile == selectedMenu
                    ? kPrimaryColor
                    : inActiveIconColor,
              onPressed: () =>
                  Navigator.push(context, MaterialPageRoute(builder: (context){return const ProfileScreen();})),
            ),
          ],
        ),
      ),
    );
  }
}
