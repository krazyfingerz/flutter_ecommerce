// ignore_for_file: file_names

import 'package:flutter_ecommerce/src/product.dart';

class Cart {
  Cart({required this.product, required this.numOfItem});
  final Product product;
  final int numOfItem;
}

List<Cart> demoCarts = [
  Cart(product: demoProducts[0], numOfItem: 2),
  Cart(product: demoProducts[1], numOfItem: 1),
  Cart(product: demoProducts[3], numOfItem: 1),
];
