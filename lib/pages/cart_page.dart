import 'package:flutter/material.dart';
import 'package:flutter_catalog_app/models/cart.dart';
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
      body: Column(
        children: [
          const _CartList().p32().expand(),
          const Divider(),
          const _CartTotal()
        ],
      ),
    );
  }
}

class _CartTotal extends StatelessWidget {
  const _CartTotal();

  @override
  Widget build(BuildContext context) {
    final cart = CartModel();
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          "\$${cart.totalPrice}".text.xl4.make(),
          30.widthBox,
          ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: "This feature is not supported yet.".text.make()));
              },
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(const StadiumBorder())),
              child: "Buy".text.make())
        ],
      ),
    );
  }
}

class _CartList extends StatefulWidget {
  const _CartList();

  @override
  State<_CartList> createState() => _CartListState();
}

class _CartListState extends State<_CartList> {
  final cart = CartModel();

  @override
  Widget build(BuildContext context) {
    return cart.items.isEmpty
        ? "Nothing to show".text.xl2.makeCentered()
        : ListView.builder(
            itemCount: cart.items.length,
            itemBuilder: (context, index) => ListTile(
                  leading: const Icon(Icons.done),
                  trailing: IconButton(
                    icon: const Icon(Icons.remove_circle_outline),
                    onPressed: () {
                      cart.remove(cart.items[index]);
                      setState(() {});
                    },
                  ),
                  title: Text(cart.items[index].name),
                ));
  }
}
