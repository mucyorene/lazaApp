class Clothes {
  String title;
  String price;

  String? description;
  List<String> image;

  Clothes(
      {required this.title,
      required this.price,
      this.description,
      required this.image});

  static List<Clothes> generateClothes() {
    return [
      Clothes(title: 'Nike Club Fleece', price: '\$120', image: [
        'assets/screen9_images/rect2.png',
        'assets/screen9_images/rect1.png',
        'assets/screen9_images/rect4.png',
        'assets/screen9_images/rect3.png'
      ]),
      Clothes(title: 'Nike Club Fleece', price: '\$120', image: [
        'assets/screen9_images/rect1.png',
        'assets/screen9_images/rect2.png',
        'assets/screen9_images/rect3.png',
        'assets/screen9_images/rect4.png'
      ])
    ];
  }
}
