import 'package:flutter/material.dart';

class CartItem{
  @required String id;
  @required String itemImg;
  @required String Judul;
  @required double price;
  @required int qty;

  
  CartItem(
     this.id, 
     this.itemImg,
     this.Judul, 
     this.price, 
     this.qty);
}