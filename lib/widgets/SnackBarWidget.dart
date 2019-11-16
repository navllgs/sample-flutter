import 'package:flutter/material.dart';

class SnackBarWidget extends StatefulWidget {
  @override
  SnackBarDemo createState() => SnackBarDemo();
}

class SnackBarDemo extends State<SnackBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _SnackBarPage(),
    );
  }
}

class _SnackBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        onPressed: () {
          final snackBar = SnackBar(
            content: Text('Yay! A SnackBar!'),
            action: SnackBarAction(
              label: 'Nice',
              onPressed: () {
                // Some code to undo the change.
              },
            ),
          );

          // Find the Scaffold in the widget tree and use
          // it to show a SnackBar.
          Scaffold.of(context).showSnackBar(snackBar);
        },
        child: Text('Show SnackBar'),
      ),
    );
  }
}