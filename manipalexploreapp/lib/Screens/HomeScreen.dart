import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:manipalexploreapp/Screens/Beaches.dart';
import 'package:manipalexploreapp/widgets/CategoryCard.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

double _width;
double _height;

class _HomeScreenState extends State<HomeScreen> {
  bool isSearching = false;

  @override
  Widget build(BuildContext context) {
    _width = MediaQuery.of(context).size.width;
    _height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: !isSearching
            ? Text('Explore', style: TextStyle(color: Colors.white))
            : Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                  color: Colors.grey[900],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        hintText: "Search Place",
                        hintStyle: TextStyle(color: Colors.grey[400])),
                  ),
                ),
              ),
        actions: <Widget>[
          isSearching
              ? IconButton(
                  icon: Icon(Icons.cancel),
                  onPressed: () {
                    setState(() {
                      this.isSearching = false;
                    });
                  },
                )
              : IconButton(
                  icon: Icon(Icons.search),
                  color: Colors.white,
                  onPressed: () {
                    setState(() {
                      this.isSearching = true;
                    });
                  },
                )
        ],
      ),
      backgroundColor: Colors.black,
      drawer: Drawer(
        child: new ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Hemangi Jain'),
              accountEmail: Text("fuyguh@gu"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.orange,
                child: Text(
                  'HJ',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              decoration: BoxDecoration(color: Colors.black),
            ),
            ListTile(
              leading: Icon(Icons.favorite, color: Colors.grey,),
              title:Text('Liked Places', ),
              hoverColor: Colors.grey,
              onTap: () {},
            ),
            // Divider(
            //   color: Colors.grey[900],
            // ),
            ListTile(
              leading: Icon(Icons.add_location),
              title: Text('Visited Places'),
              hoverColor: Colors.grey,
              onTap: () {},
            ),
            // Divider(
            //   color: Colors.grey[900],
            // ),
            ListTile(
              leading: Icon(Icons.edit),
              title: Text('Experiences'),
              hoverColor: Colors.grey,
              onTap: () {},
            ),
            Divider(
              color: Colors.grey[900],
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              hoverColor: Colors.grey,
              onTap: () {},
            ),
            Divider(
              color: Colors.grey[900],
            ),
          ],
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            children: <Widget>[
              SizedBox(
                height: _height / 3,
                width: _width,
                child: Carousel(
                  images: [
                    AssetImage("images/Carousel/Scenery.jpeg"),
                    AssetImage("images/Carousel/Malpebeach.jpg"),
                    AssetImage("images/Carousel/Arbifalls.jpg"),
                    AssetImage("images/Carousel/EggFactory.jpg"),
                    AssetImage("images/Carousel/TC_1.jpeg"),
                    AssetImage("images/Carousel/DeeTee-Manipal.jpg"),
                    AssetImage("images/Carousel/StudentPlaza2.jpeg"),
                  ],
                  dotSize: 5.0,
                  dotSpacing: 15.0,
                  dotColor: Colors.white,
                  dotBgColor: Colors.grey[100].withOpacity(0.01),
                  indicatorBgPadding: 10.0,
                  autoplayDuration: Duration(seconds: 5),
                  dotIncreasedColor: Colors.white,
                ),
              ),
              CategoryCard(
                  image: "images/CircleAvatar/images.jpg",
                  category: "Beaches",
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Beaches()));
                  }),
              CategoryCard(
                  image: "images/CircleAvatar/Falls.jpg",
                  category: "Waterfalls",
                  onTap: () {}),
              CategoryCard(
                  image: "images/CircleAvatar/Food.jpg",
                  category: "Restaurants",
                  onTap: () {}),
              CategoryCard(
                  image: "images/CircleAvatar/Party.jpg",
                  category: "Clubs",
                  onTap: () {}),
              Padding(
                padding: EdgeInsets.all(5.0),
              ),
            ],
          )
        ],
      ),
    );
  }
}
