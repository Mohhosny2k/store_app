import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ProdectModel {
  final dynamic id;
  final dynamic title;
  final dynamic price;
  final String description;
  final String image;
  final RatingModel? rating;
  final String category;
  ProdectModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.image,
    required this.rating,
    required this.category,
  });
  factory ProdectModel.fromJson(jsonData) {
    return ProdectModel(
        id: jsonData['id'],
        category: jsonData['category'],
        title: jsonData['title'],
        price: jsonData['price'],
        description: jsonData['description'],
        image: jsonData['image'],
        rating: jsonData['rating'] == null
            ? null: RatingModel.fromJson(jsonData['rating']),// كده بقوله خد ال ماب ورجعلي مودل
        );
  }
}

class RatingModel {
  final dynamic rate;
  final int count;
  RatingModel({required this.rate, required this.count});
  factory RatingModel.fromJson(jsonData) {
    return RatingModel(rate: jsonData['rate'], count: jsonData['count']);
  }
}
