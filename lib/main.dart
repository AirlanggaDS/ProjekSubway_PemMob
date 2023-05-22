

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';
import 'package:subway/pages/Login.dart';
import 'package:subway/pages/StartApp.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:subway/pages/signup.dart';
import 'package:subway/pages/wrapper.dart';
import 'package:subway/providers/Auth.dart';
import 'firebase_options.dart';
import 'providers/item.dart';
import 'providers/cart.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
        create: (context) => Cart(),),
      ChangeNotifierProvider(
        create: (context) => AuthService(),),
    ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => wrapper(),
        '/Login': (context) => Login(),
        '/Register': (context) => SignUp(),
      },
    ),
  ));
}

