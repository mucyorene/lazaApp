class ReviewModel {
  int id;
  String name;
  String image;
  String? description;

  ReviewModel(
      {required this.id,
      required this.name,
      required this.image,
      this.description});

  factory ReviewModel.fromJson(Map<dynamic, dynamic> json) => ReviewModel(
      id: json['id'],
      name: json['name'],
      image: json['image'],
      description: json['description']);

  Map<dynamic, dynamic> toJson() =>
      {id: id, name: name, image: image, description: description};

  static List<ReviewModel> generateReview() => [
        ReviewModel(
            id: 1,
            name: 'Jenny Wilson',
            image: "assets/images/reviewOne.png",
            description:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet..."),
        // ReviewModel(
        //     id: 1,
        //     name: 'Jenny Wilson',
        //     image: "assets/images/reviewtwo.png",
        //     description:
        //         "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet..."),
        // ReviewModel(
        //     id: 1,
        //     name: 'Jenny Wilson',
        //     image: "assets/images/reviewthree.png",
        //     description:
        //         "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet..."),
        // ReviewModel(
        //     id: 1,
        //     name: 'Jenny Wilson',
        //     image: "assets/images/reviewfour.png",
        //     description:
        //         "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet..."),
        // ReviewModel(
        //     id: 1,
        //     name: 'Jenny Wilson',
        //     image: "assets/images/reviewtwo.png",
        //     description:
        //         "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet...")
      ];
}
