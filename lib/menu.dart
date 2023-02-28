import 'package:flutter/material.dart';


class Menu extends StatelessWidget {
  const Menu({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
        body: ListView(children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Container(
                              width: 160,
                              height: 160,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: FittedBox(
                                child: Image.asset(
                                  "images/all sandwiches.png",
                                  fit: BoxFit.fill,
                                ),
                              )),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 5, left: 35),
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
                            "All Sandwiches",
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
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: Container(
                              width: 160,
                              height: 160,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: FittedBox(
                                child: Image.asset(
                                  "images/breakfast.png",
                                  fit: BoxFit.fill,
                                ),
                              )),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 5, right: 32),
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
                            "Breakfast",
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
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
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
                                  "images/warp.png",
                                  fit: BoxFit.fill,
                                ),
                              )),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 5, left: 35),
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
                            "Warp",
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
                  ),
                  Container(
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
                                  "images/salads.png",
                                  fit: BoxFit.fill,
                                ),
                              )),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 5, right: 32),
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
                            "Salads",
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
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
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
                                  "images/sides.png",
                                  fit: BoxFit.fill,
                                ),
                              )),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              top: 5, left: 35, bottom: 80),
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
                            "Sides",
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
                  ),
                  Container(
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
                                  "images/drinks.png",
                                  fit: BoxFit.fill,
                                ),
                              )),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              top: 5, right: 32, bottom: 80),
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
                            "Drinks",
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
                  ),
                ],
              )
            ],
          )
        ]),
      ),
    );
  }
}
