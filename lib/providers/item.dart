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

class sandwiches_product with ChangeNotifier{
  List<Product> _sandwichProduct = [
      Product("5","images/all sandwiches/chicken-teriyaki-front-e1633678475910-680x680.png", "Chicken Teriyaki", 37500),
      Product("6","images/all sandwiches/egg-mayo-680x680.png","Egg Mayo", 32000),
      Product("7","images/all sandwiches/ham-front-680x680.png","Chicken Slice", 32000),
      Product("8","images/all sandwiches/Italian-BMT-Front-680x680.png", "Italian B.M.T", 5000),
      Product("9","images/all sandwiches/Meatball-Marinara-2.png","Meatball Marinara", 57000),
      Product("9","images/all sandwiches/Roast-Beef.png","Roast Beef", 57000),
      Product("10","images/all sandwiches/roast-chicken-front-680x680.png","Roast Chicken", 37000),
      Product("11","images/all sandwiches/Shrimp-Avocado-1.png","Shrimp Avocado", 57000),
      Product("12","images/all sandwiches/spicy-italian-front-680x680.png","Spicy Italian", 45000),
      Product("13","images/all sandwiches/steak_cheese-front-680x680.png","Steak Cheese", 57000),
      Product("14","images/all sandwiches/bbq chicken.png","BBQ Chicken", 37500),
      Product("15","images/all sandwiches/tuna-front-680x680.png","Tuna Mayo", 37500),
      Product("16","images/all sandwiches/veggie-1-680x680.png","Veggie Delite", 25000),
  ];

  List<Product> get sandwichProduct {
    return [..._sandwichProduct];
  }
}

