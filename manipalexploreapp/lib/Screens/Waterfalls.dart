import 'package:flutter/material.dart';
import 'package:manipalexploreapp/Screens/RatingKaup.dart';
import 'package:manipalexploreapp/Screens/SinglePlace.dart';
import 'package:manipalexploreapp/model/AboutPlace.dart';
import 'package:manipalexploreapp/widgets/PlaceCard.dart';

class Waterfalls extends StatefulWidget {
  @override
  _WaterfallsState createState() => _WaterfallsState();
}


class _WaterfallsState extends State<Waterfalls> {
  @override
  Widget build(BuildContext context) {
    AboutPlace _place= new AboutPlace(
      image: "images/Carousel/Arbifalls.jpg", name: "Arbi Falls", distance: "7.4 km", onTapPlaceCard: (){

    }, initialRating: 3.5,
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Waterfalls', style: TextStyle(color: Colors.white, ), ),
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
