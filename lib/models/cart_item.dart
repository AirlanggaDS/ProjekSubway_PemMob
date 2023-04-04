import 'package:flutter/material.dart';

class CartItem{
  String id;
  String itemImg;
  String Judul;
  double price;
  int qty;

  
  CartItem(
    @required this.id, 
    @required this.itemImg,
    @required this.Judul, 
    @required this.price, 
    @required this.qty);
}