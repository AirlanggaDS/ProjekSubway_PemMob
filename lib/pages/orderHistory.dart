import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:subway/providers/order.dart';
import 'package:subway/models/cart_item.dart';

class OrderHistoryPage extends StatefulWidget {
  const OrderHistoryPage({Key? key}) : super(key: key);

  @override
  _OrderHistoryPageState createState() => _OrderHistoryPageState();
}

class _OrderHistoryPageState extends State<OrderHistoryPage> {
  bool _isLoading = false;

  @override
  void didChangeDependencies() {
    fetchOrderHistory();
    super.didChangeDependencies();
  }

  Future<void> fetchOrderHistory() async {
    setState(() {
      _isLoading = true;
    });

    final orderProvider = Provider.of<OrderProvider>(context, listen: false);

    try {
      orderProvider.fetchOrderHistory();

      setState(() {
        _isLoading = false;
      });
    } catch (error) {
      setState(() {
        _isLoading = false;
      });

      showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
          title: Text('Error'),
          content: Text('Failed to fetch order history.'),
          actions: [
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(ctx).pop();
              },
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<OrderProvider>(
      builder: (context, orderProvider, child) {
        return Scaffold(
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
            padding: EdgeInsets.only(top: 20, right: 10, bottom: 20),
            child: Row(
              children: [
                const Text(
                  " HISTORY",
                  style: TextStyle(
                      color: Colors.amber,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                const Text(
                  " ORDER",
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 30,
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
          body: orderProvider.orderHistory.isEmpty
              ? Center(child: Text('No order history available'))
              : ListView.builder(
                  itemCount: orderProvider.orderHistory.length,
                  itemBuilder: (ctx, index) {
                    final orderItem = orderProvider.orderHistory[index];
                    return Column(
                      children: [
                        
                        SizedBox(height: 10),
                        Container(
                          width: double.infinity,
                          child: Column(
                            children: [
                              Text(
                          orderItem.id,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 10),
                                    child: Container(
                                      child: Image.asset(orderItem.itemImg),
                                      height: 150,
                                      width: 120,
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      padding: EdgeInsets.only(right: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            orderItem.Judul,
                                            softWrap: true,
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          Text('Quantity: ${orderItem.qty}'),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 30),
                                    child: Text(
                                      'Rp. ${orderItem.price .toStringAsFixed(2)}',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Divider(
                                thickness: 1,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
        );
      },
    );
  }
}