import 'package:flutter/material.dart';
import 'location_detail_screen.dart';
import '../models/location.dart';
import '../widgets/LocationTitle.dart';
import '../widgets/ImageBanner.dart';
import '../styles.dart';
import '../routes.dart';

class LocationList extends StatelessWidget {
  final List<Location> locations;

  LocationList(this.locations);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: Styles.appBarDefault("Locations"),
      body: Column(children: [
        Expanded(
          child: ListView.builder(
            itemCount: this.locations.length,
            itemBuilder: (context, index) {
              // return Text(this.locations[index].name);
              return _listItemBuilder(context, this.locations[index]);
            },
          ),
        )
      ]),
      //above code implements like recyclerview in android
      //generate only the visible part of the screen,
      //********************/
      // ListView(
      //   children: locations
      //       .map((location) => _listItemBuilder(context, location))
      //       .toList(),
      // ),
      //above code not good because implements like listview in android
      //generate everything
    );
  }

  Widget _listItemBuilder(BuildContext context, Location location) {
    return Container(
      height: 200.0,
      child: Stack(
        children: [
          ImageBanner(location.url),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              LocationTitle(
                  location, () => navigateToLocationDetail(context, location)),
            ],
          ),
        ],
      ),
    );
  }

  void navigateToLocationDetail(context, location) {
    Navigator.pushNamed(context, LocationsDetailRoute,
        arguments: {'location': location});
    //***Other way for navigation***
    // Navigator.push(
    //     context,
    //     MaterialPageRoute(
    //       builder: (context) => LocationDetail(location),
    //     ));
  }
}
