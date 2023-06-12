import 'dart:convert';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:subway/models/cart_item.dart';
import 'package:firebase_database/firebase_database.dart';

class OrderProvider with ChangeNotifier {
  final DatabaseReference _databaseRef =
      FirebaseDatabase.instance.ref().child('orders');
  List<CartItem> orderHistory = [];

  Future<void> placeOrder(List<CartItem> cartItems) async {
    final uid = FirebaseAuth.instance.currentUser!.uid; // Mendapatkan UID pengguna saat ini
  final url = Uri.parse(
      'https://subway-18f9d-default-rtdb.asia-southeast1.firebasedatabase.app/orders/$uid.json');

  final List<Map<String, dynamic>> cartData = cartItems.map((item) {
    final double totalPrice = item.price * item.qty;
    return item.toMap()..['price'] = totalPrice..['uid'] = uid; // Tambahkan UID dalam data cart
  }).toList();
  
  final data = cartData;
  final jsonData = json.encode(cartData);
  print(url);

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

  Future<void> fetchOrderHistory() async {
  final uid = FirebaseAuth.instance.currentUser!.uid;

  final url = Uri.parse(
      'https://subway-18f9d-default-rtdb.asia-southeast1.firebasedatabase.app/orders/$uid.json');

  try {
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final Map<String, dynamic>? responseData = json.decode(response.body);
      final List<CartItem> orderHistory = [];

      if (responseData != null) {
        responseData.forEach((key, data) {
          data.forEach((value) {
            final Map<String, dynamic> cartData = value;
            final CartItem items = CartItem.fromMap(cartData);

            if (items.uid == uid) { // Hanya tambahkan order dengan UID yang sesuai dengan pengguna saat ini
              orderHistory.add(items);
            }
          });
        });
      }

      // Update orderHistory in the provider
      this.orderHistory = orderHistory;

      notifyListeners();
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
