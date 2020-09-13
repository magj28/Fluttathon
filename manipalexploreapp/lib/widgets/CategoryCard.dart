import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CategoryCard extends StatelessWidget {
  final String image, category;
  final Function onTap;
  double _width;
  double _height;

  CategoryCard({this.image, this.category, this.onTap});

  @override
  Widget build(BuildContext context) {
    _width = MediaQuery.of(context).size.width;
    _height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Opacity(
                    opacity: 0.2,
                    child: Container(
                      height: _height / 7,
                      padding: EdgeInsets.all(10.0),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40.0),
                        color: Color(0xff141414),
                        image: new DecorationImage(
                          image: new AssetImage(image),
                          fit: BoxFit.cover,
                        ),
                      ),
                    )),
              )),
            Text(category, style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),textAlign: TextAlign.center,),

        ],
      ),
      // child: Column(
      //   children: [
      //     Padding(padding: EdgeInsets.all(5.0),),
      //     Padding(
      //       padding: const EdgeInsets.all(3.0),
      //       child: Container(
      //         child: Opacity(
      //           opacity: 0.2,
      //           child: Container(
      //             height: _height/7,
      //               padding: EdgeInsets.all(10.0),
      //               width: MediaQuery.of(context).size.width,
      //               decoration: BoxDecoration(
      //                 borderRadius: BorderRadius.circular(40.0),
      //                 color: Color(0xff141414),
      //                 image: new DecorationImage(image: new AssetImage(image), fit: BoxFit.cover,),
      //               ),
      //               child: Text(category, style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
      // child: Row(
      //   children: <Widget>[
      //     CircleAvatar(
      //       backgroundImage: AssetImage(image),
      //       radius: 40.0,
      //     ),
      //     Padding(
      //       padding: EdgeInsets.all(12.0),
      //     ),
      //     Row(
      //       children: [
      //         Column(
      //           mainAxisAlignment: MainAxisAlignment.center,
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: [
      //             Text(
      //               category,
      //               style: TextStyle(
      //                 color: Colors.orangeAccent,
      //                 fontSize: 20.0,
      //                 fontWeight: FontWeight.bold,
      //               ),
      //             ),
      //           ],
      //         ),
      //       ],
      //     ),
      //   ],
      //               // ),
      //             ),
      //         ),
      //         ),
      //     ),
      //   ],
      // ),
    );
  }
}
