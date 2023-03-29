

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';
import 'package:subway/providers/cart.dart';


class ScreenCart extends StatefulWidget {
  

  const ScreenCart({super.key});

  @override
  State<ScreenCart> createState() => _ScreenCartState();
}

class _ScreenCartState extends State<ScreenCart> {
  @override
  Widget build(BuildContext context) {
    final DataPesanan = Provider.of<Cart>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 3, 178, 58),
        title: Text("Pesanan")),
      body: Column(
        children: [
          Card(
            child: Container(
              child: Text("Total : Rp. ${DataPesanan.total}"),
            ),
          ),
         Expanded(
              child: ListView.builder(
                itemCount: (DataPesanan.items.length),
                itemBuilder: (context, index){
                  return Dismissible(
            key: ObjectKey(DataPesanan),
            direction: DismissDirection.horizontal,
           onDismissed: (_) {   
            setState(() {
            DataPesanan.DeleteCart(index);  
            });                                               
             },
             background: Container(
                color: Colors.red,
                margin: const EdgeInsets.symmetric(horizontal: 15),
                alignment: Alignment.centerRight,
                child: const Icon(
                  Icons.delete,
                  color: Colors.white,
                ),
              ),
                    child: ListTile(
                      title: Text("${DataPesanan.items.values.toList()[index].Judul}"),
                      subtitle: Text("Quantity: ${DataPesanan.items.values.toList()[index].qty}"),
                      trailing: Container(
                        child: Text("Rp. ${DataPesanan.items.values.toList()[index].price}"),
                      ),
                    ),
                  );
                }
            )),
        ],
      ),
    );
  }
}