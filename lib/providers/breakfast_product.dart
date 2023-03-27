import 'package:flutter/material.dart';
import '../models/product.dart';

class all_Product with ChangeNotifier{
    List<Product> _allProduct = [
      Product("images/breakfast/Breakfast-Strip-Egg-680x680.png","Strip & Egg"),
      Product("images/breakfast/Cheese-Egg-680x680.png", "Cheese Egg"),
      Product("images/breakfast/Chicken-Ham-Egg-680x680.png", "Chicken Ham Egg"),
      Product("images/breakfast/Tuna-Egg-680x680.png",  "Tuna Egg")
    ];
    List<Product> get allProduct {
      return [..._allProduct];
    }
}