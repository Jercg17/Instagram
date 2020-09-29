import 'package:flutter/material.dart';

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
    return Container(
      child: Column(
        children: [
          Container(
            child: Row(
              children: [
                Icon(
                  Icons.account_circle,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
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
                Icons.thumb_up,
                color: Colors.white,
              ),
              SizedBox(width: 15),
              Icon(
                Icons.message,
                color: Colors.white,
              ),
              SizedBox(
                width: 15,
              ),
              Icon(
                Icons.send,
                color: Colors.white,
              ),
              SizedBox(
                width: 226,
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
