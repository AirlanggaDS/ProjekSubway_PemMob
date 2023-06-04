import 'package:flutter/material.dart';
class Product with ChangeNotifier{
  @required String id;
  @required String ImgMenu;
  @required String NamaMenu;
  @required double PriceMenu;
  @required int category;
  Product(this.id,this.ImgMenu, this.NamaMenu, this.PriceMenu, this.category);

}