import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/catalog.products.dart';
import 'cart_screen.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
      ),
      body: SafeArea(
          child: Column(
        children: [
          CatalogProducts(),
          ElevatedButton(
            onPressed: () => Get.to(
              () => CartScreen(),
            ),
            child: Text('Go to Cart'),
          ),
        ],
      )),
    );
  }
}
