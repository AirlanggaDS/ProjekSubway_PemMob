import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:subway/pages/menu.dart';

class Salads extends StatefulWidget {
  const Salads({super.key});

  @override
  State<Salads> createState() => _SaladsState();
}

class _SaladsState extends State<Salads> {
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
              child: (ListView(
                children: [
                  Container(
                      height: 950,
                      margin: EdgeInsets.only(top: 30),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30)),
                        color: Colors.white,
                      ),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                InkWell(
                                  onTap: () => Navigator.pop(
                                      context),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 20, right: 50),
                                    child: Icon(
                                      Icons.arrow_back,
                                      color: Color.fromARGB(255, 3, 178, 58),
                                      size: 24.0,
                                      
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    "Salads",
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  margin: EdgeInsets.only(top: 15),
                                  padding: EdgeInsets.only(left: 50),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                LeftMenu(
                                  imgMenu:
                                      "images/salads/Buffalo_Chicken_Salad_JPEG_594x334.jpg",
                                  titleMenu: "BBQ Chicken",
                                ),
                                RightMenu(
                                  imgMenu:
                                      "images/salads/Chicken_Roasted_Salad_594x334.jpg",
                                  titleMenu: "Chicken Slice",
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                LeftMenu(
                                  imgMenu:
                                      "images/salads/Chicken_Teriyaki_salad_594x334.jpg",
                                  titleMenu: "Chicken Teriyaki",
                                ),
                                RightMenu(
                                  imgMenu:
                                      "images/salads/Chipotle_Steak_Melt_Salads_594x334.jpg",
                                  titleMenu: "Steak & Cheese",
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                LeftMenu(
                                  imgMenu:
                                      "images/salads/Italian_BMT_Salad_594x334.jpg",
                                  titleMenu: "Italian B.M.T",
                                ),
                                RightMenu(
                                  imgMenu:
                                      "images/salads/Tuna_Mayo_Salad_594x334.jpg",
                                  titleMenu: "Tuna Mayo",
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                LeftMenu(
                                  imgMenu:
                                      "images/salads/Chicken_Roasted_Salad_594x334.jpg",
                                  titleMenu: "Roasted Chicken",
                                ),
                                RightMenu(
                                  imgMenu:
                                      "images/salads/Italian_BMT_Salad_594x334.jpg",
                                  titleMenu: "Spicy Italian",
                                ),
                              ],
                            ),
                            
                          ]))
                ],
              )),
            )));
  }
}

class RightMenu extends StatelessWidget {
  final String imgMenu;
  final String titleMenu;

  const RightMenu({required this.titleMenu, required this.imgMenu});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 20),
            child: Container(
                width: 170,
                height: 170,
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
          Center(
            child: Container(
              margin: const EdgeInsets.only(left: 15),
              alignment: FractionalOffset.topCenter,
              height: 35,
              width: 160,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 3,
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
          ),
        ],
      ),
    );
  }
}

class LeftMenu extends StatelessWidget {
  final String imgMenu;
  final String titleMenu;

  const LeftMenu({required this.titleMenu, required this.imgMenu});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Container(
                width: 170,
                height: 170,
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
          Center(
            child: Container(
              margin: const EdgeInsets.only(left: 25),
              alignment: FractionalOffset.topCenter,
              height: 35,
              width: 160,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 3,
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
          ),
        ],
      ),
    );
  }
}
