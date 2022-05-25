class WishModels {
  int id;
  String name;
  double price;
  String? descriptions;
  String size;
  String brand;
  String category;
  String thumbnails;
  List<String> images;

  WishModels(
      {required this.id,
      required this.name,
      required this.price,
      this.descriptions,
      required this.size,
      required this.brand,
      required this.category,
      required this.thumbnails,
      required this.images});
}
