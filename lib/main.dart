import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';
import 'package:subway/pages/Login.dart';
import 'package:subway/pages/StartApp.dart';

import 'providers/item.dart';
import 'providers/cart.dart';


void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => all_Product(),),
      ChangeNotifierProvider(
        create: (context) => sandwiches_product(),),
      ChangeNotifierProvider(
        create: (context) => drinks_product(),),
      ChangeNotifierProvider(
        create: (context) => side_product(),),
      ChangeNotifierProvider(
        create: (context) => wrap_product(),),
      ChangeNotifierProvider(
        create: (context) => salad_product(),),
      ChangeNotifierProvider(
        create: (context) => Cart(),)
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Start()
    ),
  ));
}

