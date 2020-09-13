import 'package:flutter/material.dart';
import 'package:manipalexploreapp/Screens/RatingKaup.dart';
import 'package:manipalexploreapp/widgets/SinglePlace.dart';

class KaupBeach extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SinglePlace(
      name: "Kaup Beach",
      description: "Kaup beach is famously known to house an old lighthouse that was apparently built in the year 1901. "
          "The lighthouse is open for visitors during certain periods of time in the course of the day. "
          "It offers a delightful view of the entire beach and seashore that will surely take your breath away.",
      imageurl1: "images/Beaches/Kapu/Kapu1.jpg",
      imageurl2: "images/Beaches/Kapu/Kapu2.jpg",
      imageurl3: "images/Beaches/Kapu/Kapu3.jpg",
      onTapRatings:RatingKaup(),
    );
  }
}
