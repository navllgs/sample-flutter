import 'package:flutter/material.dart';
import 'location_detail_screen.dart';
import '../models/location.dart';
import '../styles.dart';
import '../routes.dart';

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
      body:
          //not good because implements like listview in android
          //generate everything
          // ListView(
          //   children: locations
          //       .map((location) => _listItemBuilder(context, location))
          //       .toList(),
          // ),
          //implements like recyclerview in android
          //generate only the visible part of the screen
          ListView.builder(
        itemCount: this.locations.length,
        itemBuilder: (context, index) {
          return _listItemBuilder(context, this.locations[index]);
        },
      ),
    );
  }

  Widget _listItemBuilder(BuildContext context, Location location) {
    return Container(
      height: 200.0,
      child: Stack(
        children: [
          Container(
            constraints: BoxConstraints.expand(height: 200.0),
            decoration: BoxDecoration(
              color: Colors.grey,
            ),
            child: Container(
              constraints: BoxConstraints.tightFor(width: 200),
              child: Image.network(location.url, fit: BoxFit.cover),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                  decoration:
                      BoxDecoration(color: Colors.black.withOpacity(0.5)),
                  child: Column(
                    children: [
                      GestureDetector(
                          child: _itemTitle(location),
                          onTap: () =>
                              _navigateToLocationDetail(context, location)),
                      _subTitle(location)
                    ],
                  )),
            ],
          ),
          // ListTile(
          //   contentPadding: EdgeInsets.all(10.0),
          //   subtitle: Text(
          //     location.facts[0].text,
          //     maxLines: 2,
          //     overflow: TextOverflow.ellipsis,
          //     style: TextStyle(
          //       color: Colors.white,
          //     ),
          //   ),
          //   // leading: _itemThumbnail(location),
          //   title: GestureDetector(
          //       child: _itemTitle(location),
          //       onTap: () => _navigateToLocationDetail(context, location)),
          //   // onTap: () {
          //   //   _navigateToLocationDetail(context, location);
          //   // },
          // ),
          // )
        ],
      ),
    );
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
    return Container(
      width: double.infinity,
      child: Text(
        '"${location.name}"',
        textAlign: TextAlign.left,
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
        style: TextStyle(
            fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _subTitle(Location location) {
    return Container(
      width: double.infinity,
      child: Text(
        location.facts[0].text,
        textAlign: TextAlign.left,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
