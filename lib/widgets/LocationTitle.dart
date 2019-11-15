import 'package:flutter/material.dart';
import '../models/location.dart';

class LocationTitle extends StatelessWidget {
  final VoidCallback callback;
  final Location location;
  LocationTitle(this.location, this.callback);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
      decoration: BoxDecoration(color: Colors.black.withOpacity(0.5)),
      child: Column(
        children: [
          GestureDetector(child: _itemTitle(location), onTap: callback),
          _subTitle(location)
        ],
      ),
    );
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
    //       onTap: callback,
    //   // onTap: callback,
    // ),
    // )
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

  //keep this for ListTile Widget
  Widget _itemThumbnail(Location location) {
    return Container(
      constraints: BoxConstraints.tightFor(width: 100),
      child: Image.network(location.url, fit: BoxFit.fitWidth),
    );
  }
}
