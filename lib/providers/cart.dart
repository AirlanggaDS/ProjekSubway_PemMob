import 'package:flutter/material.dart';
import 'package:subway/models/cart_item.dart';

class Cart with ChangeNotifier{
  Map<String, CartItem> _items = {};

  double get total{
    var TotalHarga = 0.0;
    _items.forEach((key, CartItem) { 
      TotalHarga += CartItem.qty * CartItem.price;
    });
    return TotalHarga;

  } 

  Map<String, CartItem> get items => _items;

  void AddCart(String productId, String title, double price){
    if(_items.containsKey(productId)){
      _items.update(productId, (value) => 
      CartItem(
        value.id, 
        value.Judul, 
        value.price, 
        value.qty + 1));
    } else {
      _items.putIfAbsent(productId, () => 
      CartItem(
        DateTime.now().toString(), 
        title, 
        price, 
        1));
    };
    notifyListeners();
  }
  void DeleteCart( _items){
    _items.remove(_items);
    notifyListeners();
  }
}