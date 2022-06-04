import 'package:flutter/material.dart';

class Content{
  late final String name;
  late final String imageURL;
  late final String description;
  late final String color;

  Content({
    required this.name,
    required this.imageURL,
    required this.description,
    this.color = "red"
  });
}