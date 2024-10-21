import 'package:flutter/material.dart';

class RingModel {
  final String image;
  final RadialGradient backround;
  final String description;
  final String price;
  final Color color;

  RingModel({
    required this.image,
    required this.backround,
    required this.description,
    required this.price,
    required this.color,
  });
}
