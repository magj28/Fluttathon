import 'package:flutter/material.dart';
import 'package:manipalexploreapp/Screens/KapuBeach.dart';
import 'package:manipalexploreapp/model/AboutPlace.dart';
import 'package:manipalexploreapp/widgets/PlaceCard.dart';

class Beaches extends StatefulWidget {
  @override
  _BeachesState createState() => _BeachesState();
}


class _BeachesState extends State<Beaches> {
  @override
  Widget build(BuildContext context) {
    AboutPlace _place= new AboutPlace(
      image: "images/Beaches/Kapu/Kapu3.jpg", name: "Kaup Beach", distance: "7.4 km", onTapPlaceCard: (){
      Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => KaupBeach()));
    }, initialRating: 3.5,
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Beaches', style: TextStyle(color: Colors.white, ), ),
      ),
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          PlaceCard(image: _place.image, name: _place.name, distance: _place.distance, onTap: _place.onTapPlaceCard, initialRating: _place.initialRating, ),
        ],
      ),
    );
  }
}
