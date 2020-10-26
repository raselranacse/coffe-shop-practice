import 'package:coffee_shop/custom_text.dart';
import 'package:coffee_shop/welcome_components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Expanded(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    WelcomeComponents(),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Let's select the best taste for your coffee break",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    CustomText(),
                    SizedBox(height: 30),
                    Column(
                      children: [
                        Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Container(
                                margin: EdgeInsets.only(top: 50),
                                height: 200,
                                width: 150,
                                color: Colors.grey,
                              ),
                            ),
                            Positioned(
                                child: Image.asset(
                              "images/coffee_cup.jpg",
                              height: 100,
                              width: 80,
                            )),
                          ],
                        ),
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                          onPressed: () {},
                          color: Colors.brown[800],
                          textColor: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15, right: 15),
                            child:
                                Text("Order now", style: TextStyle(fontSize: 14)),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    CustomText(text: "Explore nearby"),
                    ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                height: 100,
                                width: 80,
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)))),
                          );
                        })
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
