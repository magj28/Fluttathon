import 'package:flutter/material.dart';
import 'Screens/HomeScreen.dart';
import 'package:manipalexploreapp/Screens/Beaches.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Manipal Explore',
      home: HomeScreen(),
      //home: Beaches(),
    );
  }
}
