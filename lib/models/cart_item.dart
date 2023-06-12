class CartItem {
  String id;
  String Judul;
  String itemImg;
  double price;
  int qty;
  String uid; // Add the uid parameter

  CartItem({
    required this.id,
    required this.Judul,
    required this.itemImg,
    required this.price,
    required this.qty,
    required this.uid, // Add the uid parameter
  });

  factory CartItem.fromMap(Map<String, dynamic> map) {
    return CartItem(
      id: map['id'],
      Judul: map['Judul'],
      itemImg: map['itemImg'],
      price: map['price'].toDouble(),
      qty: map['qty'],
      uid: map['uid'], // Assign the uid parameter
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'Judul': Judul,
      'itemImg': itemImg,
      'price': price,
      'qty': qty,
      'uid': uid, // Include the uid parameter
    };
  }
}
