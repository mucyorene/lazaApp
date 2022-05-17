class Review {
  int id;
  String name;
  String experiences;

  Review({required this.id, required this.name, required this.experiences});

  factory Review.fromJson(Map<dynamic, dynamic> fromJsonCons) => Review(
      id: fromJsonCons['id'],
      name: fromJsonCons['name'],
      experiences: fromJsonCons['experience']);

  Map<dynamic, dynamic> mapToNet() {
    return {id: id, name: name, experiences: experiences};
  }

  static List<Review> reviewGenerated() {
    return [
      Review(id: 1, name: "Review 1", experiences: "Some text of review")
    ];
  }
}
