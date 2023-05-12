import 'package:flutter/material.dart';

class Shoes {
  final String id;
  final String title;
  final String category;
  final double price;
  final Color color;
  final String image;

  const Shoes({
    required this.id,
    required this.title,
    required this.category,
    required this.price,
    required this.color,
    required this.image,
  });
}
