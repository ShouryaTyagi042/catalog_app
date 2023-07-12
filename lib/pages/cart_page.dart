import 'package:flutter/material.dart';
import 'package:flutter_catalog_app/utils/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Cart".text.make(),
        centerTitle: true,
      ),
      backgroundColor: MyTheme.creamColor,

    );
  }
}
