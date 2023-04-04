import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';
import 'package:subway/providers/cart.dart';

class ScreenCart extends StatelessWidget {
  const ScreenCart({super.key});

  @override
  Widget build(BuildContext context) {
    final DataPesanan = Provider.of<Cart>(context, listen: false);
    return Scaffold(
      backgroundColor: Colors.white,
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
                " CART",
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
      body: Consumer<Cart>(builder:(context, cart, child) {
        return Column(
          children: [
            Expanded(
              child: Container(
                child: ListView.builder(
                  itemCount: cart.items.length,
                  itemBuilder: (context, index) {
                    return Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                child: Image.asset(
                                    "${cart.items.values.toList()[index].itemImg}"),
                                width: 150,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "${cart.items.values.toList()[index].Judul}",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.only(top: 10, bottom: 10),
                                    child: Text(
                                        "Quantity: ${cart.items.values.toList()[index].qty}"),
                                  ),
                                  Text(
                                      "Rp. ${cart.items.values.toList()[index].price}",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500)),
                                ],
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 30),
                            child: InkWell(
                              onTap: () => {
                                cart.RemoveCart(
                                    cart.items.keys.elementAt(index))
                              },
                              child: Icon(
                                Icons.remove_circle,
                                color: Colors.red,
                                size: 30,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 30),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      DataPesanan.total.toString(),
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 30),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 3, 178, 58),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: InkWell(
                      child: Text("Check Out", style: TextStyle(fontSize: 18, color: Colors.white,fontWeight: FontWeight.w600),),
                    )
                  ),
                ),
              ],
            ),
          ],
        );
      },)
        
      );
  }
}
