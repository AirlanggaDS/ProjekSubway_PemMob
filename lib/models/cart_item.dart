import 'package:flutter/material.dart';

class CartItem{
  String id;
  String Judul;
  double price;
  int qty;
  
  CartItem(
    @required this.id, 
    @required this.Judul, 
    @required this.price, 
    @required this.qty);
}