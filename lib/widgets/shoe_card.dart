import 'package:flutter/material.dart';
import 'package:settings_ui/data/data.dart';
import 'package:settings_ui/widgets/custom_buy_button.dart';
import 'package:settings_ui/widgets/like_button.dart';

Widget shoeCard(ShoeData shoe) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: shoe.backgroundColor,
    ),
    height: 180,
    width: double.infinity,
    child: Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              likeButton(),
              Center(
                child: Container(
                  height: 120,
                  width: 140,
                  child: Image.asset(
                    shoe.image,
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                text: TextSpan(
                  text: shoe.name,
                  style: TextStyle(
                      fontFamily: 'Poppins', fontSize: 18, color: Colors.black),
                  children: const <TextSpan>[
                    TextSpan(
                      text: '\nby Nike',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.grey,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                shoe.description,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Colors.grey,
                  fontSize: 13,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$\ ${shoe.price}",
                    style: TextStyle(fontFamily: 'Poppins'),
                  ),
                  customBuyButtom()
                ],
              )
            ],
          ),
        )
      ],
    ),
  );
}
