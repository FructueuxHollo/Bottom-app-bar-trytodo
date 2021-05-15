import 'package:flutter/material.dart';
import 'package:bottom_app_bar_ttd/profile.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> _contenue = <Widget>[
    Profile(),
    Profile(),
    Profile(),
    Profile(),
    Profile(),
  ];
  int _selectedindex = 0;
  void onitemtap(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _contenue.elementAt(_selectedindex),
      ),
      backgroundColor: Colors.blueGrey,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.blueGrey,
        elevation: 0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.flight_takeoff_outlined), label: 'flights'),
          BottomNavigationBarItem(icon: Icon(Icons.king_bed), label: 'hotels'),
          BottomNavigationBarItem(icon: Icon(Icons.car_rental), label: 'cars'),
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'explore'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'profile'),
        ],
        onTap: onitemtap,
        currentIndex: _selectedindex,
      ),
    );
  }
}
