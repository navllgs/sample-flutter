import 'package:flutter/material.dart';
import './location_detail.dart';
import 'mocks/mock_location.dart';
import 'models/location.dart';
import 'location_list.dart';
import 'routes.dart';

final Location mockLocation = MockLocation.FetchAny();
final List<Location> mockLocations = MockLocation.FetchAll();
void main() {
  return runApp(
    MaterialApp(
      // home: LocationDetail(mockLocation),
      // home: LocationList(mockLocations),
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => LocationList(mockLocations),
      //   '/location_detail': (context) => LocationDetail(null)
      // },
      onGenerateRoute: Routes.routes(),
    ),
  );
}