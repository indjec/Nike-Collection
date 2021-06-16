import 'package:flutter/material.dart';

Widget customBuyButtom() {
  return InkWell(
    borderRadius: BorderRadius.circular(12),
    onTap: () {},
    child: Container(
        width: 60,
        height: 30,
        decoration: new BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
            child: Text(
          "Buy",
          style: TextStyle(fontFamily: 'Poppins', color: Colors.white),
        ))),
  );
}
