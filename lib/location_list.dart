import 'package:flutter/material.dart';
import 'models/location.dart';
import 'styles.dart';

class LocationList extends StatelessWidget {
  List<Location> locations = [];

  LocationList(List<Location> locations){
    this.locations.addAll(locations);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          "Locations",
          style: Styles.navBarTitleStyle,
        ),
      ),
      body: ListView.builder(
        itemCount: this.locations.length,
        itemBuilder: (context, index) {
          return ListTile(
            contentPadding: EdgeInsets.all(10.0),
            leading: _itemThumbnail(this.locations[index]),
            title: _itemTitle(this.locations[index]),
          );
        },
      ),
    );
  }
}

Widget _itemThumbnail(Location location) {
  return Container(
    constraints: BoxConstraints.tightFor(width: 100.0),
    child: Image.network(location.url, fit: BoxFit.fitWidth),
  );
}

Widget _itemTitle(Location location) {
  return Text(
    '"${location.name}"',
    style: Styles.textDefault,
  );
}