import 'package:flutter/material.dart';
import 'models/location.dart';
import 'styles.dart';

class LocationDetail extends StatelessWidget {
  final Location location;

  LocationDetail(this.location);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          this.location.name,
          style: Styles.navBarTitleStyle,
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: _renderBody(context, this.location),
        ),
      ),
    );
  }

  List<Widget> _renderBody(BuildContext context, Location location) {
    var result = List<Widget>();
    result.add(_bannerImage(location.url, 170.0));
    result.addAll(render(location));
    return result;
  }

  List<Widget> render(Location location) {
    var result = List<Widget>();
    for (var fact in location.facts) {
      result.add(_sectionTitle(fact.title));
      result.add(_sectionText(fact.text));
    }
    return result;
  }

  Widget _sectionTitle(String text) {
    return Container(
      margin: EdgeInsets.fromLTRB(25, 25, 25, 10),
      child: Text(
        text,
        textAlign: TextAlign.left,
        style: Styles.headerLarge,
      ),
    );
  }

  Widget _sectionText(String text) {
    return Container(
      margin: EdgeInsets.fromLTRB(25, 25, 25, 15),
      child:
          Text(text, textAlign: TextAlign.left, style: Styles.textDefault),
    );
  }

  Widget _bannerImage(String url, double height) {
    return Container(
      constraints: BoxConstraints.tightFor(height: height),
      color: Colors.grey[300],
      child: Image.network(
        url,
        fit: BoxFit.fitWidth,
      ),
    );
  }

  Widget _section(String title, Color color) {
    return Container(
      decoration: BoxDecoration(
        color: color,
      ),
      child: Text(
        title,
        textAlign: TextAlign.center,
      ),
    );
  }
}
