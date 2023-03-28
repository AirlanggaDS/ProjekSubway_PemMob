import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  final String FotoMenu;
  final String NamaMenu;
  final String PriceMenu;
  BottomBar(this.FotoMenu, this.NamaMenu, this.PriceMenu);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black, width: 1),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30))),
      child: Center(
        child: Column(
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () => Navigator.pop(context),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 70),
                    child:
                        Icon(Icons.arrow_back, color: Colors.black, size: 24.0),
                  ),
                ),
                Container(
                   margin: EdgeInsets.only(top: 20),
                  width: 170,
                  height: 160,
                  child: FittedBox(
                      child: Image.asset(
                    FotoMenu,
                    fit: BoxFit.cover,
                  )),
                ),
              ],
            ),
            Text(
              NamaMenu,
              style: TextStyle(
                height: 1.6,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              child: Text(PriceMenu, style: TextStyle(
                fontSize: 24
              ),),
              margin: EdgeInsets.only(top: 30, bottom: 30),
            ),
            InkWell(
              onTap: () => Navigator.pop(context),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 3, 178, 58),
                    borderRadius: BorderRadius.circular(10)),
                child: const Text(
                  "Add to Cart",
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
