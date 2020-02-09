import 'package:flutter/material.dart';
import 'package:podo/widgets/bars_grid.dart';
import 'package:podo/widgets/settings.dart';
import 'placeholder_widget.dart';
import 'deals_list.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    DealsList(),
    BarsGrid(),
    Settings()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Podo'),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money),
            title: Text('Deals'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store),
            backgroundColor: Colors.black,
            title: Text('Bars'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('Settings')
          )
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    }); 
  }
}