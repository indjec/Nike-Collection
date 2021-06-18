import 'package:flutter/material.dart';
import 'package:settings_ui/constants/constants.dart';
import 'package:settings_ui/data/data.dart';
import 'package:settings_ui/widgets/like_button.dart';

class DetailScreen extends StatefulWidget {
  final ShoeData shoeData;
  final String tag;
  DetailScreen({this.shoeData, this.tag});
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  List<String> _sizeTags = [
    "36",
    "37",
    "38",
    "39",
    "40",
    "41",
    "42",
    "43",
    "44"
  ];
  int _selectedTag = 0;

  Widget _buildSizeTags(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedTag = index;
        });
      },
      child: Container(
        width: 50,
        decoration: BoxDecoration(
          color: _selectedTag == index ? AppColor.PRIMARY_COLOR : Colors.white,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Center(
          child: Text(
            _sizeTags[index],
            style: TextStyle(
              color: _selectedTag != index ? Colors.grey[400] : Colors.white,
              fontFamily: 'Poppins',
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: widget.shoeData.backgroundColor,
                      ),
                      child: Hero(
                          tag: "shoe" + widget.shoeData.name,
                          child: Image.asset(widget.shoeData.image)),
                    ),
                    IconButton(
                      icon: Icon(Icons.arrow_back_ios_rounded),
                      onPressed: () => Navigator.pop(context),
                    ),
                    Positioned(
                      right: 10,
                      top: 10,
                      child: likeButton(),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  widget.shoeData.name,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 25,
                  ),
                ),
                Text(
                  widget.shoeData.description,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w300,
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Select Size",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w300,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: _sizeTags.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Row(
                        children: [
                          _buildSizeTags(index),
                          SizedBox(width: 10),
                        ],
                      );
                    },
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Description",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w300,
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  widget.shoeData.description,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w300,
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
