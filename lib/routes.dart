import 'main.dart';
import 'package:flutter/material.dart';
import './screens/location_detail_screen.dart';
import './screens/location_list_screen.dart';

const LocationsRoute = '/';
const LocationsDetailRoute = '/location_detail';

class Routes {
  static RouteFactory routes() {
    return (settings) {
      final Map<String, dynamic> arguments = settings.arguments;
      Widget screen;
      switch(settings.name){
        case LocationsDetailRoute:
          screen = LocationDetail(arguments['location']);
          break;
        case LocationsRoute:
          screen = LocationList(mockLocations);
          break;
        default:
        return null;
      }
      return MaterialPageRoute(
        builder: (context) => screen,
      );
    };
  }
}

