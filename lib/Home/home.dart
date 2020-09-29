import 'package:flutter/material.dart';
import 'package:myInstagram/InstagramPages/InstagramAct.dart';
import 'package:myInstagram/InstagramPages/InstagramHome.dart';
import 'package:myInstagram/InstagramPages/InstagramSearch.dart';
import 'package:myInstagram/my_flutter_app_icons.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    InstagramHome(),
    InstagramSearch(),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    InstagramAct(),
    Text(
      'Index 4: UwU',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    //dentro del scaffold se puede cambiar muchas cosas como el fondo
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon(
          Icons.camera_alt,
          color: Colors.white,
        ),
        title: const Text('Instagram'),
        actions: [Icon(MyFlutterApp.paper_plane)],
      ),
      //muy importante tener el body para la BottomNavigationBar
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),

      //por alguna razon me lanza error al ponerle un
      //titulo a la BottomNavigationBar
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(Icons.home),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(Icons.search),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            title: Text(''),
            icon: Icon(Icons.file_upload),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(Icons.thumb_up),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(Icons.account_circle),
            title: Text(''),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
