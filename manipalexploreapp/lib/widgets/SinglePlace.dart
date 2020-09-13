import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:manipalexploreapp/widgets/Button.dart';

class SinglePlace extends StatefulWidget {
  final name,
      description,
      imageurl1,
      imageurl2,
      imageurl3,
      onTapRatings,
      onTapLocations;

  SinglePlace(
      {this.name,
      this.description,
      this.imageurl1,
      this.imageurl2,
      this.imageurl3,
      this.onTapRatings,
      this.onTapLocations});

  @override
  _SinglePlaceState createState() => _SinglePlaceState();
}

class _SinglePlaceState extends State<SinglePlace> {
  double _width;
  double _height;
  bool liked=false;

  @override
  Widget build(BuildContext context) {
    _width = MediaQuery.of(context).size.width;
    _height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            widget.name,
            style: TextStyle(color: Colors.white),
          ),
          actions: <Widget>[
            Align(alignment: Alignment.centerRight, child: IconButton(

              tooltip: liked?'Unlike': 'Like',
              onPressed: () {
                setState(() {
                  liked = !liked;

                });
              },
              icon: Icon(
                liked ? Icons.favorite : Icons.favorite_border,
                color: liked ? Colors.pink : Colors.grey,
              ),
            ),)
          ],
        ),
        backgroundColor: Colors.black,
        body: ListView(scrollDirection: Axis.vertical, children: [
          Column(
            children: <Widget>[
              SizedBox(
                height: _height / 3,
                width: _width,
                child: Carousel(
                  images: [
                    AssetImage(widget.imageurl1),
                    AssetImage(widget.imageurl2),
                    AssetImage(widget.imageurl3),
                  ],
                  //autoplay: false,
                  dotSize: 5.0,
                  dotSpacing: 15.0,
                  dotColor: Colors.blue[900],
                  dotBgColor: Colors.grey[100].withOpacity(0.01),
                  indicatorBgPadding: 10.0,
                  autoplayDuration: Duration(seconds: 5),
                  dotIncreasedColor: Colors.cyanAccent,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Button(
                    buttonText: "Ratings",
                    onPress: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => widget.onTapRatings));
                    },
                  ),
                  Button(
                    buttonText: "Location Map",
                    onPress: () {
                      widget.onTapLocations;
                    },
                  ),
                ],
              ),
              // Divider(
              //   thickness: 1,
              //   color: Colors.orangeAccent,
              // ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Description",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                      ),
                      Text(
                        //
                        widget.description,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                      ),
                      // Align(
                      //   alignment: Alignment.centerRight,
                      //   child: Text('Already Visited? Share Your Experience!', style: TextStyle(fontSize: 15, color: Colors.grey[600] ),)
                      //     ),
                    ]),
              ),
            ],
          ),
        ]));
  }
}

