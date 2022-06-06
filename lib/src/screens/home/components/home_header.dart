import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/src/screens/cart/cart_screen.dart';
import 'package:flutter_ecommerce/src/size_config.dart';
import 'search_field.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SearchField(),
          InkWell(
            child: const Icon(Icons.shopping_cart_outlined),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context){return const CartScreen();}),
            ),
          ),
          InkWell(
            child: const Icon(Icons.notifications),
            onTap: (){},
          ),
        ],
      ),
    );
  }
}
