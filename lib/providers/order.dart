import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:subway/models/cart_item.dart';
import 'package:firebase_database/firebase_database.dart';

class OrderProvider with ChangeNotifier {
  final DatabaseReference _databaseRef =
      FirebaseDatabase.instance.ref().child('orders');
    List<CartItem> orderHistory = [];

  Future<void> placeOrder(List<CartItem> cartItems) async {
    final url = Uri.parse(
        'https://subway-18f9d-default-rtdb.asia-southeast1.firebasedatabase.app/orders.json');
    final List<Map<String, dynamic>> cartData =
        cartItems.map((item) => item.toMap()).toList();
    final jsonData = json.encode(cartData);

    try {
      await http.post(
        url,
        body: jsonData,
        headers: {'Content-Type': 'application/json'},
      );
      notifyListeners();
    } catch (error) {
      // Handle error
      print('Error placing order: $error');
    }
  }
  
  Future<List<CartItem>> fetchOrderHistory() async {
    final url = Uri.parse(
        'https://subway-18f9d-default-rtdb.asia-southeast1.firebasedatabase.app/orders.json');

    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        final Map<String, dynamic>? responseData = json.decode(response.body);
        final List<CartItem> orderHistory = [];

        if (responseData != null) {
          responseData.forEach((key, data) {
            final List<dynamic> cartData = data['cartItems'];
            final List<CartItem> items =
                cartData.map((item) => CartItem.fromMap(item)).toList();
            orderHistory.addAll(items);
          });
        }

        return orderHistory;
      } else {
        // Handle response error
        throw Exception('Error fetching order history: ${response.statusCode}');
      }
    } catch (error) {
      // Handle error
      print('Error fetching order history: $error');
      throw Exception('Error fetching order history');
    }
  }



}
