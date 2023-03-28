import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';
import 'package:subway/providers/cart.dart';
import '../providers/breakfast_product.dart';

class ScreenCart extends StatelessWidget {
  const ScreenCart({super.key});

  @override
  Widget build(BuildContext context) {
    final DataPesanan = Provider.of<Cart>(context, listen: false);
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
        create: (context) => all_Product(),),
        ChangeNotifierProvider(
        create: (context) => Cart(),)
      ],
      child: Scaffold(
        appBar: AppBar(
          title: Text("Pesanan")),
        body: Column(
          children: [
            Card(
              child: Container(
                child: Text("Total : Rp. ${DataPesanan.total}"),
              ),
            )
          ],
        ),
      ),
    );
  }
}