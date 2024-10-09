import 'package:flutter/material.dart';

class Rating {
  final double rate;
  final double count;

  Rating({required this.rate, required this.count});
}

class Products {
  final int id;
  final String title;
  final double price;
  final String description;
  final String category;
  final String image;
  final Rating rating;

  Products(
      {required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.category,
      required this.image,
      required this.rating});
}
