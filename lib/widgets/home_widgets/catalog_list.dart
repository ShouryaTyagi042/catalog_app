import 'package:flutter/material.dart';
import 'package:flutter_catalog_app/models/cart.dart';
import 'package:flutter_catalog_app/pages/home_details_page.dart';
import 'package:flutter_catalog_app/utils/themes.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../models/catalog.dart';
import 'catalog_image.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items?.length ?? 0,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.items![index];
        return InkWell(
            onTap: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              HomePageDetails(catalog: catalog)))
                },
            child: CatalogItem(catalog: catalog));
      },
    );
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        Hero(
            tag: Key(catalog.id.toString()),
            child: CatalogImage(image: catalog.image)),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            catalog.name.text.color(MyTheme.darkBluishColor).bold.xl.make(),
            catalog.desc.text.textStyle(context.captionStyle).make(),
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              children: [
                "\$${catalog.price}".text.bold.make(),
                AddToCart(catalog : catalog)
              ],
            )
          ],
        ))
      ],
    )).color(Colors.white).rounded.square(150).make().py16().pOnly(right: 5);
  }
}

class AddToCart extends StatefulWidget {
  final Item catalog ;
  const AddToCart({
    super.key, required this.catalog,
  });

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  bool isAdded = false ;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          isAdded = isAdded.toggle() ;
          final catalog = CatalogModel() ;
          final cart = CartModel() ;
          cart.catalog = catalog ;
          cart.add(widget.catalog) ;
           setState(() {

          });
         },
        style: ButtonStyle(
            shape:
                MaterialStateProperty.all(const StadiumBorder())),
        child: isAdded? const Icon(Icons.done) : "Add to Cart".text.make());
  }
}
