import 'package:flutter/cupertino.dart';

class Review  {
  int id;
  String name;
  String experiences;
  double rating;

  Review(
      {required this.rating,
      required this.id,
      required this.name,
      required this.experiences});

  // factory Review.fromJson(Map<dynamic, dynamic> fromJsonCons) => Review(
  //     id: fromJsonCons['id'],
  //     name: fromJsonCons['name'],
  //     experiences: fromJsonCons['experience']);

  // Map<dynamic, dynamic> mapToNet() {
  //   return {id: id, name: name, experiences: experiences};
  // }

  // static List<Review> reviewGenerated() { 
    
  //   return [];
    
  // }
}
