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
  void initState() {
    super.initState();
    fetchOrderHistory();
  }

  Future<void> fetchOrderHistory() async {
    setState(() {
      _isLoading = true;
    });

    final orderProvider = Provider.of<OrderProvider>(context, listen: false);

    try {
      await orderProvider.fetchOrderHistory();

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
    final orderProvider = Provider.of<OrderProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Order History'),
      ),
      body: _isLoading
          ? Center(child: CircularProgressIndicator())
          : orderProvider.orderHistory.isEmpty
              ? Center(child: Text('No order history available'))
              : ListView.builder(
                  itemCount: orderProvider.orderHistory.length,
                  itemBuilder: (ctx, index) {
                    final orderItem = orderProvider.orderHistory[index];
                    return ListTile(
                      leading: Image.network(orderItem.itemImg),
                      title: Text(orderItem.Judul),
                      subtitle: Text('Qty: ${orderItem.qty}'),
                      trailing: Text('Price: ${orderItem.price.toStringAsFixed(2)}'),
                    );
                  },
                ),
    );
  }
}
