import 'package:flutter/material.dart';

class editProfil extends StatelessWidget {
  const editProfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 3, 178, 58),
          elevation: 1,
          toolbarHeight: 80,
          leading: Padding(
            padding: EdgeInsets.only(left: 30, top: 20, bottom: 20),
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
            padding: EdgeInsets.only(top: 20, right: 5, bottom: 20),
            child: Row(
              children: [
                const Text(
                  " YOUR",
                  style: TextStyle(
                      color: Colors.amber,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                const Text(
                  " REWARD",
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 40,
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
            height: 100,
          ),
        ),
   
      );
  }
}
