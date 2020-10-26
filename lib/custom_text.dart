import 'package:flutter/material.dart';
class CustomText extends StatelessWidget {
  final String text;
  const CustomText({
    this.text,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text==null?"Taste of the week":text,
          style:
          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(
          "See all",
          style:
          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}