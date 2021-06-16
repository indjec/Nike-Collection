import 'package:flutter/material.dart';

class ShoeData {
  String name;
  String description;
  String price;
  String image;
  Color backgroundColor;

  ShoeData(
      {this.description,
      this.image,
      this.name,
      this.price,
      this.backgroundColor});
}

List<ShoeData> shoesData = [
  ShoeData(
    description: "Your workhorse with wing returns",
    name: "Nike Air Pegasus",
    image: "assets/images/1.png",
    price: "180.0",
    backgroundColor: Color(0xffffeae9),
  ),
  ShoeData(
      description: "Your workhorse with wing returns",
      name: "Nike ZoomX",
      image: "assets/images/3.png",
      price: "280.0",
      backgroundColor: Color(0xffe9eff2)),
  ShoeData(
      description: "Your workhorse with wing returns",
      name: "Nike Air Light",
      image: "assets/images/1.png",
      price: "380.0",
      backgroundColor: Color(0xfff7cfcf)),
];
