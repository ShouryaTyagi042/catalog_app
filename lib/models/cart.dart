
import 'package:flutter_catalog_app/models/catalog.dart';

class CartModel {
  // catalog field
  CatalogModel? _catalog;

  // Collection of IDs - store Ids of each item
  final List<int> _itemIds = [];

  // Get items in the cart
  List<dynamic> get items => _itemIds.map((id) => _catalog?.getById(id)).toList();

  // Get total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  set catalog(CatalogModel catalog) {
    _catalog = catalog;
  }

  // Add Item
  void add(Item item) {
    _itemIds.add(item.id);
  }

  // Remove Item
  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}