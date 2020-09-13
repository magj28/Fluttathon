import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingCard extends StatelessWidget {
  final String name, experience;
  final double rating;
  RatingCard(this.name, this.rating, this.experience);
  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.5,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Card(
          color: Colors.grey[900],
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(name, style: TextStyle(fontSize: 18, color: Colors.white),),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          RatingBar(
                            initialRating: rating,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemSize: 20.0,
                            itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.orangeAccent,
                            ),
                          ),
                          Text(rating.toString(), style: TextStyle(
                              fontSize: 15.0, color: Colors.grey))
                        ],
                      ),

                    ],
                  ),
                  Text(experience, style: TextStyle(fontSize: 20, color: Colors.blueGrey),)
                ],
              ),
            ),
          ),
      ),
    );
  }
}