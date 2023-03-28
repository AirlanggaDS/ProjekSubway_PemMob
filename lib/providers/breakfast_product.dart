import 'package:flutter/material.dart';
import '../models/product.dart';

class all_Product with ChangeNotifier{
    List<Product> _allProduct = [
      Product("1","images/breakfast/Breakfast-Strip-Egg-680x680.png","Strip & Egg", 27000),
      Product("2","images/breakfast/Cheese-Egg-680x680.png", "Cheese Egg", 24000),
      Product("3","images/breakfast/Chicken-Ham-Egg-680x680.png", "Chicken Ham Egg", 27000),
      Product("4","images/breakfast/Tuna-Egg-680x680.png",  "Tuna Egg", 35000)
    ];
    List<Product> get allProduct {
      return [..._allProduct];
    }
}