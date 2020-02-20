import 'package:flutter/material.dart';
import './widgets/home_widget.dart';

//First two characters are for the alpha of the color
const PrimaryColor = const Color(0xFFFFBA38);

void main() => runApp(App());

class App extends StatelessWidget {
  @override
   Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Podo',
      home: Home(
        // body: Center(child: _buildList()),
      ),
      theme: ThemeData(primaryColor: PrimaryColor),
      
    );
  }
}
