import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/src/screens/home/bottomnavbar.dart';
import 'package:flutter_ecommerce/src/screens/profile/components/profile_menu.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";

  const ProfileScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      bottomNavigationBar: const BottomNavBar(selectedMenu: MenuState.profile),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 60,
              child: Icon(Icons.person, size: 60),
            ),
            const SizedBox(height: 20),
            ProfileMenu(
              text: "My Account",
              icon: Icons.person,
              press: () => {},
            ),
            ProfileMenu(
              text: "Notifications",
              icon: Icons.notifications_outlined,
              press: () {},
            ),
            ProfileMenu(
              text: "Settings",
              icon: Icons.settings_outlined,
              press: () {},
            ),
            ProfileMenu(
              text: "Help Center",
              icon: Icons.question_mark,
              press: () {},
            ),
            ProfileMenu(
              text: "Log Out",
              icon: Icons.logout,
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}
