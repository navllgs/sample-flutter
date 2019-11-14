import 'package:flutter/material.dart';
import 'package:sampleapp/location_detail.dart';
import 'models/location.dart';
import 'styles.dart';

class LocationList extends StatelessWidget {
  final List<Location> locations;

  LocationList(this.locations);

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
          return _listItemBuilder(context, this.locations[index]);
        },
      ),
    );
  }

  Widget _listItemBuilder(BuildContext context, Location location) {
    return ListTile(
      contentPadding: EdgeInsets.all(10.0),
      leading: _itemThumbnail(location),
      title: _itemTitle(location),
      onTap: () {
        _navigateToLocationDetail(context, location);
      },
    );
  }

  void _navigateToLocationDetail(context, location) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LocationDetail(location),
        ));
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
}
