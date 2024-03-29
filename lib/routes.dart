import 'main.dart';
import 'package:flutter/material.dart';
import './screens/location_detail_screen.dart';
import './screens/location_list_screen.dart';
import './screens/post_list_screen.dart';
import './screens/profile_screen.dart';

const PostListRoute = '/profile';
const LocationsDetailRoute = '/location_detail';
const LocationsRoute = '/location_list';
const ProfileRoute = '/';

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
        case PostListRoute:
          screen = PostList();
          break;
        case ProfileRoute:
          screen = Profile();
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

