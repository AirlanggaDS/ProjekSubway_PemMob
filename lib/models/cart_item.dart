class CartItem {
  String id;
  String Judul;
  String itemImg;
  double price;
  int qty;

  CartItem({
    required this.id,
    required this.Judul,
    required this.itemImg,
    required this.price,
    required this.qty,
  });

  factory CartItem.fromMap(Map<String, dynamic> map) {
    return CartItem(
      id: map['id'],
      Judul: map['Judul'],
      itemImg: map['itemImg'],
      price: map['price'].toDouble(),
      qty: map['qty'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'Judul': Judul,
      'itemImg': itemImg,
      'price': price,
      'qty': qty,
    };
  }
}
