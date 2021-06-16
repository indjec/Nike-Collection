import 'package:flutter/material.dart';
import 'package:settings_ui/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Settings Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          headline1: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 30,
            color: Colors.black87,
          ),
          headline2: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 18,
            color: Colors.grey,
          ),
        ),
      ),
      home: HomeScreen(),
    );
  }
}
