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
      appBar: AppBar(
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
              itemCount: DataPesanan.items.length,
              itemBuilder: (context, index){
                return ListTile(
                  title: Text("${DataPesanan.items.values.toList()[index].Judul}"),
                  subtitle: Text("Quantity: ${DataPesanan.items.values.toList()[index].qty}"),
                  trailing: Container(
                    child: Text("Rp. ${DataPesanan.items.values.toList()[index].price}"),
                  ),
                );
              }
          )),
        ],
      ),
    );
  }
}