import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/src/size_config.dart';
import 'package:flutter_ecommerce/src/screens/home/bottomnavbar.dart';
import 'package:flutter_ecommerce/src/screens/home/components/home_header.dart';
import 'package:flutter_ecommerce/src/screens/home/components/discount_banner.dart';
import 'package:flutter_ecommerce/src/screens/home/components/categories.dart';
import 'package:flutter_ecommerce/src/screens/home/components/special_offers.dart';
import 'package:flutter_ecommerce/src/screens/home/components/popular_product.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";

  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(selectedMenu: MenuState.home),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: getProportionateScreenHeight(20)),
              const HomeHeader(),
              SizedBox(height: getProportionateScreenWidth(10)),
              const DiscountBanner(),
              const Categories(),
              const SpecialOffers(),
              SizedBox(height: getProportionateScreenWidth(30)),
              const PopularProducts(),
              SizedBox(height: getProportionateScreenWidth(30)),
            ],
          ),
        ),
      ),
    );
  }
}
