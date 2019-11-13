import 'package:flutter/material.dart';
import 'models/location.dart';

class LocationDetail extends StatelessWidget {
  final Location location;

  LocationDetail(this.location);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(this.location.name),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // _section("One", Colors.red),
            // _section("Two", Colors.green),
            // _section("Three", Colors.yellow),
            ...render(this.location),
          ],
        ),
      ),
    );
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
      margin: EdgeInsets.only(top:8, bottom: 8),
      child: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
      ),
    );
  }

  Widget _sectionText(String text) {
    return Text(text);
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
