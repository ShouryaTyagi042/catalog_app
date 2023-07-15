import 'package:flutter/material.dart';
import 'package:flutter_catalog_app/models/catalog.dart';
import 'package:flutter_catalog_app/utils/themes.dart';
import 'package:flutter_catalog_app/widgets/home_widgets/add_to_cart.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePageDetails extends StatelessWidget {
  final Item catalog;

  const HomePageDetails({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyTheme.creamColor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
        ),
        bottomNavigationBar: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          children: [
            "\$${catalog.price}".text.xl2.red800.bold.make(),
            AddToCart(catalog: catalog).wh(130, 50)
          ],
        ).p32(),
        body: SafeArea(
          bottom: false,
          child: Column(
            children: [
              Hero(
                      tag: Key(catalog.id.toString()),
                      child: Image.network(catalog.image))
                  .h32(context),
              Expanded(
                  child: VxArc(
                height: 30,
                edge: VxEdge.TOP,
                arcType: VxArcType.CONVEY,
                child: Container(
                  color: MyTheme.creamColor,
                  child: Container(
                    color: Colors.white,
                    width: context.screenWidth,
                    child: Column(
                      children: [
                        catalog.name.text.bold.xl4
                            .color(MyTheme.darkBluishColor)
                            .make(),
                        catalog.desc.text.xl
                            .textStyle(context.captionStyle)
                            .make(),
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur venenatis pellentesque suscipit. Phasellus at tempus augue. Nulla scelerisque erat sed nulla tincidunt, elementum eleifend ante aliquet. Etiam id fermentum nunc, id pulvinar urna. Nullam tempus rutrum dolor vel eleifend. Maecenas finibus quam vitae sapien condimentum, eget pretium purus vehicula. Quisque."
                            .text
                            .textStyle(context.captionStyle)
                            .make()
                            .p16()
                      ],
                    ).py64(),
                  ),
                ),
              ))
            ],
          ).py16(),
        ));
  }
}
