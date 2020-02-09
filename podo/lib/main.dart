import 'package:flutter/material.dart';
import './widgets/home_widget.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
   Widget build(BuildContext context) {
     //This does nothing
    return MaterialApp(
      title: 'Podo',
      home: Home(
        // body: Center(child: _buildList()),
      ),
      
    );
  }
}
