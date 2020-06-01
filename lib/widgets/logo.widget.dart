import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image.asset(
          'assets/images/soil.png',
          height: 60,
        ),
        Text(
          "Calagem App",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontFamily: "Bell MT",
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}