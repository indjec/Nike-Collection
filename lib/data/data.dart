class ShoeData {
  String name;
  String description;
  String price;
  String image;

  ShoeData({this.description, this.image, this.name, this.price});
}

List<ShoeData> _shoes = [
  ShoeData(
    description: "Your workhorse with wing returns",
    name: "Nike Air Pegasus",
    image: "assets/images/1.png",
    price: "180.0",
  ),
  ShoeData(
    description: "Your workhorse with wing returns",
    name: "Nike ZoomX",
    image: "assets/images/1.png",
    price: "280.0",
  ),
  ShoeData(
    description: "Your workhorse with wing returns",
    name: "Nike Air Light",
    image: "assets/images/1.png",
    price: "380.0",
  ),
];
