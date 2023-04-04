
import 'dart:developer';

import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:provider/provider.dart';
import '../../widgets/MenuGrid.dart';
import '../cart_screen.dart';

class Sandwiches extends StatefulWidget {
  const Sandwiches({super.key});

  @override
  State<Sandwiches> createState() => _SandwichesState();
}

class _SandwichesState extends State<Sandwiches> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.amber,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              toolbarHeight: 80,
              leading: Padding(
                padding: EdgeInsets.only(left: 30, top: 30),
                child: InkWell(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    child: Image.asset(
                      "images/logo1.png",
                      width: 70,
                      height: 70,
                      alignment: Alignment.center,
                    ),
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
                child: Stack(
              children: [
                (Container(
                    constraints: BoxConstraints(
                        minHeight: 650, maxHeight: double.infinity),
                    margin: EdgeInsets.only(top: 30),
                    padding: EdgeInsets.only(top: 50),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30)),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30),
                        child: GridMenu2()
                    ))),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    child: Text(
                      "All Sandwiches",
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    margin: EdgeInsets.only(top: 50),
                  ),
                ),
              ],
            )),floatingActionButton: Align(
            alignment: Alignment(1, 0.8),
            child: FloatingActionButton.extended(
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ScreenCart())),
              label: const Text(
                'Cart',
                style: TextStyle(color: Color.fromARGB(255, 3, 178, 58)),
              ),
              icon: const Icon(
                Icons.shopping_cart,
                color: Color.fromARGB(255, 3, 178, 58),
              ),
              backgroundColor: Colors.white,
            ),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.endContained));
  }
}

