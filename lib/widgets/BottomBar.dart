import 'package:flutter/material.dart';


class BottomBar extends StatelessWidget {
  final String FotoMenu;
  final String NamaMenu;
  BottomBar(this.FotoMenu, this.NamaMenu);
  
  @override
  Widget build(BuildContext context) {
    
    return Container(
      height: 300,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 3, 178, 58),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30))
      ),
      child: Center(
        child: Column(
          children: [
          Row(
            children: [
               InkWell(
                onTap: () => Navigator.pop(context),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 70),
                  child: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                  size: 24.0
                  ),
                  ),
                  ),
              Container(
                width: 170,
                height: 160,
                child: FittedBox(
                  child: Image.asset(FotoMenu, fit: BoxFit.cover,)),
              ),
            ],
          ),
          Text(NamaMenu, 
          style: TextStyle(
            height: 1.6,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),)
          ],
        ),
      ),
    );
  }
}