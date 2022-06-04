import 'package:flutter/material.dart';

class Options {
  final String name;
  final String imageURL;
  final Color color;
  Options({ required this.name, required this.imageURL, this.color = Colors.grey });
}

const ROOT = "assets/Images/";
List homeScreenOptions = <Options>[
  Options(
    name: "Yoga",
    imageURL: "${ROOT}yoga.jpg",
  ),Options(
    name: "Yoga",
    imageURL: "${ROOT}yoga.jpg",
  ),Options(
    name: "Yoga",
    imageURL: "${ROOT}yoga.jpg",
  ),Options(
    name: "Yoga",
    imageURL: "${ROOT}yoga.jpg",
  ),Options(
    name: "Yoga",
    imageURL: "${ROOT}yoga.jpg",
  ),Options(
    name: "Yoga",
    imageURL: "${ROOT}yoga.jpg",
  ),
];