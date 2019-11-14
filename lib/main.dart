import 'package:flutter/material.dart';
import './location_detail.dart';
import 'mocks/mock_location.dart';
import 'models/location.dart';
import 'location_list.dart';

void main() {
  final Location mockLocation = MockLocation.FetchAny();
  final List<Location> mockLocations = MockLocation.FetchAll();
  return runApp(
    MaterialApp(
      // home: LocationDetail(mockLocation),
      home: LocationList(mockLocations),
    ),
  );
}