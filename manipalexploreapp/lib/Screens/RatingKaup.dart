import 'package:flutter/material.dart';
import 'package:manipalexploreapp/Screens/AddRating.dart';
import 'package:manipalexploreapp/widgets/Rating.dart';

class RatingKaup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Ratings and Experiences",
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AddRating()));
                },
                child: Text(
                  "Add a rating", style: TextStyle(color: Colors.white, fontSize: 18,) , textAlign: TextAlign.right,
                )),
          ),
          RatingCard('Anonymous', 3.5, 'Amazing'),
          RatingCard('Hemangi', 4.5, 'Wonderful'),
          RatingCard('Raj', 4, 'A beautiful visit at sunset hreunfjkoisd hfin'),
          RatingCard('Raj', 4, 'Beautiful'),
          RatingCard('Raj', 4, 'Beautiful'),
          RatingCard('Anonymous', 3.5, 'Amazing'),
          RatingCard('Hemangi', 4.5, 'Wonderful'),
          RatingCard('Raj', 4, 'A beautiful visit at sunset hreunfjkoisd hfin'),
          RatingCard('Raj', 4, 'Beautiful'),
          RatingCard('Raj', 4, 'Beautiful'),
        ],
      ),
    );
  }
}
