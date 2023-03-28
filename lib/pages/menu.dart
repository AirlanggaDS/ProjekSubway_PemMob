import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:subway/pages/Menu%20Pages/Breakfast.dart';
import 'package:subway/pages/Menu%20Pages/Sandwiches.dart';
import 'package:subway/pages/Menu%20Pages/Wraps.dart';
import 'package:subway/pages/Menu%20Pages/Salads.dart';
import 'package:subway/pages/Menu%20Pages/Sides.dart';
import 'package:subway/pages/Menu%20Pages/Drinks.dart';
import 'package:subway/providers/breakfast_product.dart';

import '../providers/cart.dart';
import 'cart_screen.dart';


class Menu extends StatelessWidget {
  const Menu({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
        create: (context) => all_Product(),),
        ChangeNotifierProvider(
        create: (context) => Cart(),)
      ],
      child: Scaffold(
          backgroundColor: Colors.amber,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            toolbarHeight: 80,
            leading: Padding(
              padding: EdgeInsets.only(left: 30, top: 30),
              child: Container(
                child: Image.asset(
                  "images/logo1.png",
                  width: 70,
                  height: 70,
                  alignment: Alignment.center,
                ),
              ),
            ),
            leadingWidth: 70,
            title: Padding(
              padding: EdgeInsets.only(top: 30, right: 20),
              child: Row(
                children: [
                  const Text(
                    " OUR",
                    style: TextStyle(
                        color: Colors.amber,
                        fontSize: 50,
                        fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    " MENU",
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 50,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.right,
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.max,
              ),
            ),
            flexibleSpace: Container(
              color: Color.fromARGB(255, 3, 178, 58),
              height: 150,
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(100),
              child: Container(
                margin: EdgeInsets.only(left: 25, bottom: 20, right: 25),
                alignment: FractionalOffset.topCenter,
                height: 55,
                width: 360,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, top: 4),
                      child: Text(
                        "Pencarian",
                        style: TextStyle(
                          fontFamily: 'LexendDeca',
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.search),
                      color: Colors.grey,
                      padding: EdgeInsets.only(top: 5),
                    )
                  ],
                ),
              ),
            ),
            
          ),
          body: Center(
            child: ListView(
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Sandwiches())),
                            child: LeftKategoriMenu(
                              imgMenu: "images/kategori menu/all sandwiches.png",
                              titleMenu: "All Sandwiches",
                            )),
                        InkWell(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Breakfast())),
                          child: RightKategoriMenu(
                            imgMenu: "images/kategori menu/breakfast.png",
                            titleMenu: "Breakfast",
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Wraps())),
                          child: LeftKategoriMenu(
                          imgMenu: "images/kategori menu/wraps.png",
                          titleMenu: "Wraps",
                        )),
                        InkWell(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Salads())),
                          child: RightKategoriMenu(
                          imgMenu: "images/kategori menu/salads.png",
                          titleMenu: "Salads",
                        )),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Sides())),
                          child: LeftKategoriMenu(
                          imgMenu: "images/kategori menu/sides.png",
                          titleMenu: "Sides",
                        )),
                        InkWell(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Drinks())),
                          child: RightKategoriMenu(
                          imgMenu: "images/kategori menu/drinks.png",
                          titleMenu: "Drinks",
                        )),
                      ],
                    ),
                  ],
                ),
                
              ],
              
            ),
          ),
          floatingActionButton: FloatingActionButton.extended(
          onPressed: ()  => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ScreenCart())),
          label: const Text('Cart',style: TextStyle(color: Color.fromARGB(255, 3, 178, 58)),),
          icon: const Icon(Icons.shopping_cart, color: Color.fromARGB(255, 3, 178, 58),),
          backgroundColor: Colors.white,)
          ),
    );
  }
}

class RightKategoriMenu extends StatelessWidget {
  final String imgMenu;
  final String titleMenu;

  const RightKategoriMenu({required this.titleMenu, required this.imgMenu});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Container(
                margin: EdgeInsets.only(top: 30),
                width: 160,
                height: 160,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: FittedBox(
                  child: Image.asset(
                    imgMenu,
                    fit: BoxFit.fill,
                  ),
                )),
          ),
          Container(
            margin: const EdgeInsets.only(top: 5, right: 32, bottom: 80),
            alignment: FractionalOffset.topCenter,
            height: 35,
            width: 160,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Text(
              titleMenu,
              textAlign: TextAlign.center,
              style: TextStyle(
                height: 1.6,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LeftKategoriMenu extends StatelessWidget {
  final String imgMenu;
  final String titleMenu;

  const LeftKategoriMenu({required this.titleMenu, required this.imgMenu});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Container(
                margin: EdgeInsets.only(top: 30),
                width: 160,
                height: 160,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: FittedBox(
                  child: Image.asset(
                    imgMenu,
                    fit: BoxFit.fill,
                  ),
                )),
          ),
          Container(
            margin: const EdgeInsets.only(top: 5, left: 35, bottom: 80),
            alignment: FractionalOffset.topCenter,
            height: 35,
            width: 160,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Text(
              titleMenu,
              textAlign: TextAlign.center,
              style: TextStyle(
                height: 1.6,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
