import 'package:flutter/material.dart';

class User with ChangeNotifier{
  final String uid;
  final String? email, name_user,no_telp;
  User(this.uid, this.email, this.name_user, this.no_telp);
}