import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String buttonText;
  final Function onPress;
  Button({this.buttonText, this.onPress});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width/2.2,
      child: FlatButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
        color: Colors.blue[300],
        textColor: Colors.white,
        padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 40.0),
        onPressed: onPress,
        child: Text(
          buttonText,
          style: TextStyle(fontSize: 15.0),
        ),
      ),
    );
  }
}