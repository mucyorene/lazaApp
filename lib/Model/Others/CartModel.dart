import 'package:laza/Model/ProductModel/Product.dart';

class Cart {
  int id;
  String name;
  double price;
  String size;
  int productId;
  String thumbnail;
  double shippingCost;

  Cart(
      {required this.id,
      required this.name,
      required this.price,
      required this.size,
      required this.productId,
      required this.shippingCost,
      required this.thumbnail});

  factory Cart.fromJson(Map<dynamic, dynamic> fromJSON) => Cart(
      id: fromJSON['id'],
      name: fromJSON['name'],
      price: fromJSON['price'],
      size: fromJSON['size'],
      productId: fromJSON['productId'],
      thumbnail: 'assets/screen9_images/bigImg.png',
      shippingCost: fromJSON['shippingCost']);

  Map<dynamic, dynamic> toMapping() {
    return {
      id: id,
      name: name,
      price: price,
      productId: productId,
      thumbnail: thumbnail,
      shippingCost: shippingCost
    };
  }

  static List<Cart> generatedCart() {
    return [
      Cart(
          id: 1,
          name: 'NikeProduct 1',
          price: 200.0,
          size: 'S',
          productId: 10,
          thumbnail: 'assets/screen9_images/bigImg.png',
          shippingCost: 20.0),
      Cart(
          id: 1,
          name: 'Men\'s Tie-Dye T-Shirt',
          price: 200.0,
          size: 'Nike Sportswera',
          productId: 10,
          thumbnail: 'assets/screen9_images/bigImg.png',
          shippingCost: 20.0)
    ];
  }
}
