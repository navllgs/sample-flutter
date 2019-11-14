import 'package:flutter/material.dart';
import 'package:sampleapp/location_detail.dart';
import 'models/location.dart';
import 'styles.dart';
import 'routes.dart';

class LocationList extends StatelessWidget {
  final List<Location> locations;

  LocationList(this.locations);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            "Locations",
            style: Styles.navBarTitleStyle,
          ),
        ),
        body: ListView(
          children: locations
              .map((location) => _listItemBuilder(context, location))
              .toList(),
        )
        // ListView.builder(
        //   itemCount: this.locations.length,
        //   itemBuilder: (context, index) {
        //     return _listItemBuilder(context, this.locations[index]);
        //   },
        // ),
        );
  }

  Widget _listItemBuilder(BuildContext context, Location location) {
    return Container(
        height: 100,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(location.url), fit: BoxFit.cover),
        ),
        child: Container(
          // color: Colors.red,
          height: 16,
          child: ListTile(
            contentPadding: EdgeInsets.all(10.0),
            subtitle: Text(
              location.facts[0].text,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            // leading: _itemThumbnail(location),
            title: GestureDetector(
                child: _itemTitle(location),
                onTap: () => _navigateToLocationDetail(context, location)),
            // onTap: () {
            //   _navigateToLocationDetail(context, location);
            // },
          ),
        ));
  }

  void _navigateToLocationDetail(context, location) {
    // Navigator.push(
    //     context,
    //     MaterialPageRoute(
    //       builder: (context) => LocationDetail(location),
    //     ));
    Navigator.pushNamed(context, LocationsDetailRoute,
        arguments: {'location': location});
  }

  Widget _itemThumbnail(Location location) {
    return Container(
      constraints: BoxConstraints.tightFor(width: 100),
      child: Image.network(location.url, fit: BoxFit.fitWidth),
    );
  }

  Widget _itemTitle(Location location) {
    return Text(
      '"${location.name}"',
      style: TextStyle(
        fontSize: 16,
        color: Colors.white,
        fontWeight: FontWeight.bold
      ),
    );
  }
}
