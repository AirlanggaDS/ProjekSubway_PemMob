import 'package:flutter/material.dart';
import 'package:subway/models/cart_item.dart';

class Cart with ChangeNotifier {
  Map<String, CartItem> _items = {};

  Map<String, CartItem> get items => _items;

  double get total {
    var TotalHarga = 0.0;
    _items.forEach((key, CartItem) {
      TotalHarga += CartItem.qty * CartItem.price;
    });
    // notifyListeners();
    return TotalHarga;
  }

  void AddCart(
      String productId, String productImg, String title, double price) {
    if (_items.containsKey(productId)) {
      _items.update(
          productId,
          (value) => CartItem(value.id, value.itemImg, value.Judul, value.price,
              value.qty + 1));
    } else {
      _items.putIfAbsent(
          productId,
          () =>
              CartItem(DateTime.now().toString(), productImg, title, price, 1));
    }
    ;
    notifyListeners();
  }

  void RemoveCart(String product_id) {
    if (!_items.containsKey(product_id)) return;
    if (_items[product_id]!.qty > 1) {
      _items[product_id]!.qty -= 1;
      notifyListeners();
    } else {
      _items.remove(product_id);
      notifyListeners();
    }
  }
}
