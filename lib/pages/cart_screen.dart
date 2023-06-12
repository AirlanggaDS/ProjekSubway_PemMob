import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:subway/pages/orderHistory.dart';
import 'package:subway/providers/cart.dart';
import 'package:subway/providers/order.dart';

class ScreenCart extends StatefulWidget {
  const ScreenCart({Key? key}) : super(key: key);

  @override
  State<ScreenCart> createState() => _ScreenCartState();
}

class _ScreenCartState extends State<ScreenCart> {
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
            child: InkWell(
              onTap: () => Navigator.pop(context),
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
        body: Consumer<Cart>(
          builder: (context, cart, child) {
            return Column(
              children: [
                Expanded(
                  child: Container(
                    child: ListView.builder(
                      itemCount: cart.items.length,
                      itemBuilder: (context, index) {
                        return Container(
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Image.asset(
                                        "${cart.items.values.toList()[index].itemImg}"),
                                    height: 150,
                                    width: 120,
                                  ),
                                  Container(
                                    width: 230,
                                    margin:
                                        EdgeInsets.only(top: 10, bottom: 20),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "${cart.items.values.toList()[index].Judul}",
                                          softWrap: true,
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(
                                              top: 10, bottom: 10),
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
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 10),
                                child: InkWell(
                                  onTap: () => {
                                    cart.removeFromCart(
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
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 10, right: 20, left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Rp. " + DataPesanan.total.toString(),
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 3, 178, 58),
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                              padding: const EdgeInsets.all(12),
                              child: InkWell(
                                onTap: () async {
                                  if (cart.items.isNotEmpty) {
                                    final orderProvider =
                                        Provider.of<OrderProvider>(context,
                                            listen: false);
                                    final cartItems =
                                        cart.items.values.toList();

                                    // Melakukan order
                                    await orderProvider.placeOrder(cartItems);

                                    // Menghapus produk dari cart setelah order selesai
                                    cart.clearCart();

                                    // Navigasi ke halaman order history
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              OrderHistoryPage()),
                                    );
                                  }
                                },
                                child: Text(
                                  "Check Out",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                ),
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ));
  }
}
