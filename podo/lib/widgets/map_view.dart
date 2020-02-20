import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MapUtils {

  MapUtils._();

  static Future<void> openMap(double latitude, double longitude) async {
    String googleUrl = 'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude';
    if (await canLaunch(googleUrl)) {
      await launch(googleUrl);
    } else {
      throw 'Could not open the map.';
    }
  }
}

class MapView extends StatelessWidget {

  MapView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My documents'),
      ),
      body: RaisedButton(
        child: Text("Map"),
        onPressed: () => MapUtils.openMap(42.021938, -93.650355),
      ),
    );
  }
}





