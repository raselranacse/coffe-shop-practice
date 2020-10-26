import 'package:flutter/material.dart';
class WelcomeComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Welcome, Rasel",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold),
        ),
        Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                image: new DecorationImage(
                  image: new AssetImage("images/rasel.jpg"),
                  fit: BoxFit.fill,
                ))),
      ],
    );
  }
}
