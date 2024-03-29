import 'package:flutter/material.dart';
import '../models/product.dart';

class all_Product with ChangeNotifier {
  List<Product> _allProduct = [
    Product("1", "images/breakfast/Breakfast-Strip-Egg-680x680.png",
        "Strip & Egg", 27000, 1),
    Product(
        "2", "images/breakfast/Cheese-Egg-680x680.png", "Cheese Egg", 24000, 1),
    Product("3", "images/breakfast/Chicken-Ham-Egg-680x680.png",
        "Chicken Ham Egg", 27000, 1),
    Product("4", "images/breakfast/Tuna-Egg-680x680.png", "Tuna Egg", 35000, 1),
    Product(
        "5",
        "images/all sandwiches/chicken-teriyaki-front-e1633678475910-680x680.png",
        "Chicken Teriyaki",
        37500,
        2),
    Product("6", "images/all sandwiches/egg-mayo-680x680.png", "Egg Mayo",
        32000, 2),
    Product("7", "images/all sandwiches/ham-front-680x680.png", "Chicken Slice",
        32000, 2),
    Product("8", "images/all sandwiches/Italian-BMT-Front-680x680.png",
        "Italian B.M.T", 5000, 2),
    Product("9", "images/all sandwiches/Meatball-Marinara-2.png",
        "Meatball Marinara", 57000, 2),
    Product(
        "9", "images/all sandwiches/Roast-Beef.png", "Roast Beef", 57000, 2),
    Product("10", "images/all sandwiches/roast-chicken-front-680x680.png",
        "Roast Chicken", 37000, 2),
    Product("11", "images/all sandwiches/Shrimp-Avocado-1.png",
        "Shrimp Avocado", 57000, 2),
    Product("12", "images/all sandwiches/spicy-italian-front-680x680.png",
        "Spicy Italian", 45000, 2),
    Product("13", "images/all sandwiches/steak_cheese-front-680x680.png",
        "Steak Cheese", 57000, 2),
    Product(
        "14", "images/all sandwiches/bbq chicken.png", "BBQ Chicken", 37500, 2),
    Product("15", "images/all sandwiches/tuna-front-680x680.png", "Tuna Mayo",
        37500, 2),
    Product("16", "images/all sandwiches/veggie-1-680x680.png", "Veggie Delite",
        25000, 2),
    Product("17", "images/drinks/Aqua-300ml-680x680.png", "Aqua", 5000, 3),
    Product("18", "images/drinks/carbonated-drinks-680x680.png",
        "Carbonated Drinks", 10000, 3),
    Product("19", "images/drinks/coffee-1-680x680.png", "Coffe", 10000, 3),
    Product("20", "images/drinks/minutemadepulpyorange-680x680.png",
        "Minute Maid Pulpy", 8000, 3),
    Product("21", "images/salads/Buffalo_Chicken_Salad_JPEG_594x334.jpg",
        "BBQ Chicken", 5000, 4),
    Product("22", "images/salads/Chicken_Roasted_Salad_594x334.jpg",
        "Chicken Slice", 10000, 4),
    Product("23", "images/salads/Chicken_Teriyaki_salad_594x334.jpg",
        "Chicken Teriyaki", 10000, 4),
    Product("24", "images/salads/Chipotle_Steak_Melt_Salads_594x334.jpg",
        "Steak & Cheese", 8000, 4),
    Product("25", "images/salads/Italian_BMT_Salad_594x334.jpg",
        "Italian B.M.T", 8000, 4),
    Product("26", "images/salads/Tuna_Mayo_Salad_594x334.jpg", "Tuna Mayo",
        8000, 4),
    Product("27", "images/salads/Chicken_Roasted_Salad_594x334.jpg",
        "Roasted Chicken", 8000, 4),
    Product("28", "images/salads/Italian_BMT_Salad_594x334.jpg",
        "Spicy Italian", 8000, 4),
    Product("29", "images/sides/RPLC-chocolatechipcookie_PR_PR-1-680x680.png",
        "Chocolate Chip Cookie", 5000, 5),
    Product("30", "images/sides/RPLC-doublechocolatechipcookie-1-680x680.png",
        "Double Chocolate Chip Cookie", 10000, 5),
    Product("31", "images/sides/RPLC-whitechipmacadamianutcookie-1-680x680.png",
        "Madamia Nut Cookie", 10000, 5),
    Product(
        "32",
        "images/sides/png-transparent-oatmeal-raisin-cookies-chocolate-chip-cookie-peanut-butter-cookie-schmackary-s-baking-biscuit-680x680.png",
        "Oatmeal Raisin Cookie",
        8000,
        5),
    Product("33", "images/sides/Chicken-Ham-_-Cheese-Toastie-680x680.png",
        "Chicken Ham Cheese Toastie", 8000, 5),
    Product("34", "images/sides/Egg-Mayo-Toastie-680x680.png",
        "Egg Mayo Toastie", 8000, 5),
    Product("35", "images/sides/SeekPng.com_pringles-png_2905473-680x680.png",
        "Pringles Original", 8000, 5),
    Product("36", "images/sides/SeekPng.com_pringles-png_9159532-680x680.png",
        "Pringles Sour Cream", 8000, 5),
    Product("37", "images/sides/mushroom-soup-680x680.png", "Mushroom Soup",
        8000, 5),
    Product("38", "images/wraps/BBQ_Chicken_wrap_594x334.jpg", "BBQ Chicken",
        5000, 6),
    Product("39", "images/wraps/Chicken_Strip_Wrap_594x334.jpg",
        "Chicken Slice", 10000, 6),
    Product("40", "images/wraps/Chicken_Teriyaki_Wrap_594x334.jpg",
        "Chicken Teriyaki", 10000, 6),
    Product("41", "images/wraps/Italian_BMT_Wrap_594x334.png", "Italian B.M.T",
        8000, 6),
    Product("42", "images/wraps/Chicken_Strip_Wrap_594x334.jpg",
        "Roast Chicken", 8000, 6),
    Product("43", "images/wraps/Italian_BMT_Wrap_594x334.png", "Spicy Italian",
        8000, 6),
    Product("44", "images/wraps/Steak__Cheese_Wrap_594x334.jpg",
        "Steak & Cheese", 8000, 6),
    Product(
        "45", "images/wraps/Tuna_Mayo_Wrap_594x334.jpg", "Tuna Mayo", 8000, 6),
  ];
  List<Product> get allProduct {
    return [..._allProduct];
  }
}

