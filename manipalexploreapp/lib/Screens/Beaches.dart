import 'package:flutter/material.dart';
import 'package:manipalexploreapp/Screens/KapuBeach.dart';
import 'package:manipalexploreapp/widgets/PlaceCard.dart';

class Beaches extends StatefulWidget {
  @override
  _BeachesState createState() => _BeachesState();
}


class _BeachesState extends State<Beaches> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Beaches', style: TextStyle(color: Colors.white, ), ),
      ),
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          PlaceCard(image: "images/Beaches/Kapu/Kapu3.jpg", name: "Kaup Beach", distance: "7.4 km", onTap: (){
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => KaupBeach()));
          }, initialRating: 3.5,),
        ],
      ),
    );
  }
}
