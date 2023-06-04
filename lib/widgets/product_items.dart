import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:subway/widgets/BottomBar.dart';
import '../models/product.dart';

class ProductItems extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final Menudata =Provider.of<Product>(context);
    return 
    GridTile(
      child: GestureDetector(
        onTap: (){
          showBottomSheet(
            context: context, 
            builder: (BuildContext context) {
              return BottomBar(Menudata.id,Menudata.ImgMenu,Menudata.NamaMenu,Menudata.PriceMenu);
            }
          );
        },
        child: Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Container(
                width: 170,
                height: 160,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: FittedBox(
                  child: Image.asset(
                    Menudata.ImgMenu,
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
                Menudata.NamaMenu,
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
    ),
      )
      );
  }
}

