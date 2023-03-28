import 'package:flutter/material.dart';
import '../models/product.dart';

class all_Product with ChangeNotifier{
    List<Product> _allProduct = [
      Product("images/breakfast/Breakfast-Strip-Egg-680x680.png","Strip & Egg", "Rp27,000.00"),
      Product("images/breakfast/Cheese-Egg-680x680.png", "Cheese Egg", "Rp24,000.00"),
      Product("images/breakfast/Chicken-Ham-Egg-680x680.png", "Chicken Ham Egg", "Rp27,000.00"),
      Product("images/breakfast/Tuna-Egg-680x680.png",  "Tuna Egg", "Rp35,000.00")
    ];
    List<Product> get allProduct {
      return [..._allProduct];
    }
}