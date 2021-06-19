import 'package:flutter/material.dart';

class ShoeData {
  int id;
  String name;
  String description;
  String price;
  String image;
  Color backgroundColor;
  String tagLine;

  ShoeData(
      {this.description,
      this.id,
      this.image,
      this.name,
      this.price,
      this.tagLine,
      this.backgroundColor});
}

List<ShoeData> shoesData = [
  ShoeData(
    id: 1,
    description:
        "A shoe is an item of footwear intended to protect and comfort the human foot. Shoes are also used as an item of decoration and fashion. The design of shoes has varied enormously through time and from culture to culture.",
    name: "Nike Air Pegasus",
    image: "assets/images/1.png",
    price: "180.0",
    tagLine: "Footwear to last you a lifetime.",
    backgroundColor: Color(0xffffeae9),
  ),
  ShoeData(
      id: 2,
      description:
          "A shoe is an item of footwear intended to protect and comfort the human foot. Shoes are also used as an item of decoration and fashion. The design of shoes has varied enormously through time and from culture to culture.",
      name: "Nike ZoomX",
      image: "assets/images/3.png",
      price: "280.0",
      tagLine: "Designed for the freedom to walk.",
      backgroundColor: Color(0xffe9eff2)),
  ShoeData(
      id: 3,
      description:
          "A shoe is an item of footwear intended to protect and comfort the human foot. Shoes are also used as an item of decoration and fashion. The design of shoes has varied enormously through time and from culture to culture.",
      name: "Nike Air Light",
      image: "assets/images/1.png",
      price: "380.0",
      tagLine: "Go faster, go stronger, never stop.",
      backgroundColor: Color(0xffffeae9)),
  ShoeData(
      id: 4,
      description:
          "A shoe is an item of footwear intended to protect and comfort the human foot. Shoes are also used as an item of decoration and fashion. The design of shoes has varied enormously through time and from culture to culture.",
      name: "Nike Air Light",
      image: "assets/images/3.png",
      price: "380.0",
      tagLine: "Talk the talk, walk the walk on life.",
      backgroundColor: Color(0xffe9eff2)),
];
