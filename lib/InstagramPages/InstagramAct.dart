import 'dart:isolate';

import 'package:flutter/material.dart';

class InstagramAct extends StatefulWidget {
  InstagramAct({Key key}) : super(key: key);

  @override
  _InstagramActState createState() => _InstagramActState();
}

class _InstagramActState extends State<InstagramAct> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: Icon(
            Icons.account_circle,
            color: Colors.white,
          ),
          title: Text(
            "sahueso123",
            style: TextStyle(color: Colors.white),
          ),
          subtitle: Text(
            "Solicito seguirte",
            style: TextStyle(color: Colors.white),
          ),
          trailing: Row(
            children: [
              FlatButton(
                onPressed: () {
                  Image.asset("polo3.jpg");
                },
                child: null,
              ),
              FlatButton(
                onPressed: () {},
                child: null,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
