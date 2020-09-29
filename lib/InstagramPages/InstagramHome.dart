import 'package:flutter/material.dart';

import '../my_flutter_app_icons.dart';

class InstagramHome extends StatefulWidget {
  InstagramHome({Key key}) : super(key: key);

  @override
  _InstagramHomeState createState() => _InstagramHomeState();
}

class _InstagramHomeState extends State<InstagramHome> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Item("Jenny", "siri.jpeg", "Que bella la siri dormida"),
        Item("Jesus", "iggy.jpeg", "el Iggy todo hermoso"),
        Item("Ricardog", "ricardog.jpeg", "Como adoro a estos dos"),
        Item("Julio", "polo.jpg", "Los mejores dogos que existen"),
        Item("Gabirel", "gabo.jpeg", "mi mejor amigo"),
      ],
    );
  }

  Widget Item(String usuario, String foto, String des) {
    double width = MediaQuery.of(context).size.width;
    print(width);
    return Container(
      child: Column(
        children: [
          Container(
            width: width,
            child: Row(
              children: [
                Icon(
                  Icons.account_circle,
                  color: Colors.white,
                ),
                SizedBox(
                  width: width / 25,
                ),
                Text(
                  "$usuario",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          Image.asset(
            "assets/images/$foto",
            fit: BoxFit.fitWidth,
            height: 400,
          ),
          Row(
            children: [
              Text(
                "$des",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.favorite_border,
                color: Colors.white,
              ),
              SizedBox(width: width / 25),
              Icon(
                CustomIcons.comment_empty,
                color: Colors.white,
              ),
              SizedBox(
                width: width / 25,
              ),
              Icon(
                Icons.send,
                color: Colors.white,
              ),
              SizedBox(
                width: width / 1.75,
              ),
              Icon(
                Icons.save_alt,
                color: Colors.white,
              ),
            ],
          ),
        ],
      ),
      padding: const EdgeInsets.all(16),
    );
  }
}
