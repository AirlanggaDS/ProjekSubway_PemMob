import 'package:flutter/material.dart';
import '../models/product.dart';

class all_Product with ChangeNotifier{
    List<Product> _allProduct = [
      Product("images/all sandwiches/chicken-teriyaki-front-e1633678475910-680x680.png", "Chicken Teriyaki", "Rp37,500.00"),
      Product("images/all sandwiches/egg-mayo-680x680.png","Egg Mayo", "Rp32,000.00"),
      Product("images/all sandwiches/ham-front-680x680.png","Chicken Slice", "Rp32,000.00"),
      Product("images/all sandwiches/Italian-BMT-Front-680x680.png", "Italian B.M.T", "Rp45,000.00"),
      Product("images/all sandwiches/Meatball-Marinara-2.png","Meatball Marinara", "Rp57,000.00"),
      Product("images/all sandwiches/Roast-Beef.png","Roast Beef", "Rp57,000.00"),
      Product("images/all sandwiches/roast-chicken-front-680x680.png","Roast Chicken", "Rp37,000.00"),
      Product("images/all sandwiches/Shrimp-Avocado-1.png","Shrimp Avocado", "Rp57,000.00"),
      Product("images/all sandwiches/spicy-italian-front-680x680.png","Spicy Italian", "Rp45,000.00"),
      Product("images/all sandwiches/steak_cheese-front-680x680.png","Steak Cheese", "Rp57,000.00"),
      Product("images/all sandwiches/bbq chicken.png","BBQ Chicken", "Rp37,500.00"),
      Product("images/all sandwiches/tuna-front-680x680.png","Tuna Mayo", "Rp37,500.00"),
      Product("images/all sandwiches/veggie-1-680x680.png","Veggie Delite", "Rp25,000.00"),
    ];
    List<Product> get allProduct {
      return [..._allProduct];
    }
}