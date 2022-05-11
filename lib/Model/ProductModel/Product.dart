class Product {
  int id;
  String name;
  double price;
  String? descriptions;
  String size;
  String brand;
  String category;
  String thumbnails;
  List<String> images;

  Product(
      {required this.id,
      required this.name,
      required this.thumbnails,
      required this.price,
      this.descriptions,
      this.size = 'S',
      required this.images,
      required this.brand,
      required this.category});

  factory Product.fromJson(Map<dynamic, dynamic> fromJson) => Product(
      id: fromJson['id'],
      name: fromJson['name'],
      price: fromJson['price'],
      descriptions: fromJson['description'],
      size: fromJson['size'],
      brand: fromJson['brand'],
      category: fromJson['category'],
      thumbnails: fromJson['thumbnail'],
      images: fromJson['otherImages']);

  Map<dynamic, dynamic> toMap() => {
        descriptions: descriptions,
        id: id,
        size: size,
        name: name,
        price: price,
        brand: brand,
        category: category
      };

  static List<Product> generatedList() {
    return [
      Product(
        id: 1,
        name: 'Product one',
        price: 120,
        size: 'S',
        descriptions: 'Description of product',
        brand: 'Nike',
        category: 'Clothes',
        thumbnails: 'assets/images/stockImageFive.png',
        images: [
          "assets/images/stockImageFour.png",
          "assets/images/hometwo.png",
          "assets/images/homeone.png",
          "assets/images/homethree.png",
          "assets/images/stockImageFive.png"
        ],
      ),
      Product(
        id: 2,
        name: 'Product Two',
        price: 120.0,
        size: 'M',
        descriptions: 'Description',
        brand: 'Adidas',
        category: 'Shoes',
        thumbnails: 'assets/images/homeone.png',
        images: [
          "assets/images/stockImageFour.png",
          "assets/images/hometwo.png",
          "assets/images/homeone.png",
          "assets/images/homethree.png",
          "assets/images/stockImageFive.png"
        ],
      ),
      Product(
        id: 3,
        name: 'Product three',
        price: 83.0,
        size: 'L',
        descriptions: 'Mobile description',
        brand: 'Fila',
        category: 'Phone Cover',
        thumbnails: 'assets/images/hometwo.png',
        images: [
          "assets/images/stockImageFive.png",
          "assets/images/homethree.png",
          "assets/images/stockImageFour.png",
          "assets/images/hometwo.png",
          "assets/images/homeone.png",
        ],
      ),
      Product(
          id: 4,
          name: 'Product four',
          price: 20.0,
          size: 'XL',
          descriptions: 'Some descriptions',
          brand: 'Yeezy',
          category: 'Men Clothes',
          images: [
            "assets/images/stockImageFour.png",
            "assets/images/hometwo.png",
            "assets/images/homeone.png",
            "assets/images/homethree.png",
            "assets/images/stockImageFive.png"
          ],
          thumbnails: 'assets/images/homethree.png'),
    ];
  }
}
