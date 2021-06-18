import 'package:flutter/material.dart';
import 'package:settings_ui/constants/constants.dart';
import 'package:settings_ui/data/data.dart';
import 'package:settings_ui/screens/detail_screen.dart';
import 'package:settings_ui/widgets/custom_icon_button.dart';
import 'package:settings_ui/widgets/shoe_card.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> _tags = ["All", "Shoes", "Bags", "Clothing", "Cap"];
  int _selectedTag = 0;

  Widget _buildTags(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedTag = index;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        decoration: BoxDecoration(
          color: _selectedTag == index ? AppColor.PRIMARY_COLOR : Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(
          _tags[index],
          style: TextStyle(
            color: _selectedTag != index ? Colors.grey[400] : Colors.white,
            fontFamily: 'Poppins',
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
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Nike Collections",
                  style: Theme.of(context).textTheme.headline1,
                ),
                Text(
                  "The Best of Bike, all in one place.",
                  style: Theme.of(context).textTheme.headline2,
                ),
                SizedBox(height: 25),
                Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            labelText: "Search",
                            contentPadding: EdgeInsets.zero,
                            filled: true,
                            fillColor: AppColor.SECONDARY_COLOR,
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    customIconButtom(
                      backgroundColor: AppColor.SECONDARY_COLOR,
                      child: Image.asset('assets/icons/filter.png'),
                      onTap: () {},
                    )
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: _tags
                      .asMap()
                      .entries
                      .map((MapEntry map) => _buildTags(map.key))
                      .toList(),
                ),
                SizedBox(height: 25),
                _shoeListView()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _shoeListView() {
    return ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: shoesData.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              GestureDetector(
                onTap: () {
                  // Navigator.of(context).push(
                  //   PageRouteBuilder(
                  //     transitionDuration: Duration(milliseconds: 500),
                  //     pageBuilder: (BuildContext context,
                  //         Animation<double> animation,
                  //         Animation<double> secondaryAnimation) {
                  //       return DetailScreen(
                  //         shoeData: shoesData[index],
                  //       );
                  //     },
                  //     transitionsBuilder: (BuildContext context,
                  //         Animation<double> animation,
                  //         Animation<double> secondaryAnimation,
                  //         Widget child) {
                  //       return Align(
                  //         // child: FadeTransition(

                  //         //   opacity: animation,
                  //         //   child: child,
                  //         // ),
                  //         child: ScaleTransition(
                  //           scale: animation,
                  //           alignment: Alignment.topLeft,
                  //           child: child,
                  //         ),
                  //       );
                  //     },
                  //   ),
                  // );
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailScreen(
                                shoeData: shoesData[index],
                              )));
                },
                // child: shoeCard(
                //   shoesData[index],
                // ),
                child: Hero(
                    tag: "shoe" + shoesData[index].name,
                    child: Image.asset(shoesData[index].image)),
              ),
              SizedBox(
                height: 10,
              )
            ],
          );
        });
  }
}
