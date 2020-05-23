import 'package:flutter/material.dart';

import 'CustomText.dart';

class BottomNavIcon extends StatelessWidget {
  final String image;
  final String name;

  const BottomNavIcon({Key key, this.image, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Image.asset(
            "images/$image",
            width: 16,
            height: 16,
          ),
          SizedBox(
            height: 1,
          ),
          CustomText(
            text: name,
            size: 10,
          )
        ],
      ),
    );
  }
}
