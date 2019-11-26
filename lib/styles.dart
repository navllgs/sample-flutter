import 'package:flutter/material.dart';

class Styles {
  static const _textSizeLarge = 24.0;
  static const _textSizeDefault = 14.0;
  static final Color _textColorStrong = _hexToColor('0000000');
  static final Color _textColorDefault = _hexToColor('666666');
  static final String _fontNameDefault = 'Muli';

  static final navBarTitleStyle = TextStyle(fontFamily: _fontNameDefault);

  static final headerLarge = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: _textSizeLarge,
    color: _textColorStrong,
  );

  static final textDefault = TextStyle(
    fontFamily: _fontNameDefault,
    fontSize: _textSizeDefault,
    color: _textColorDefault,
  );

  static Color _hexToColor(String code) {
    return Color(int.parse(code.substring(0, 6), radix: 16) + 0xFF000000);
  }

  static Widget appBarDefault(String text) {
    return AppBar(
      title: Text(
        text,
        style: Styles.navBarTitleStyle,
      ),
      centerTitle: true,
      backgroundColor: Colors.purple[900],
      // actions: <Widget>[
      //   Row(
      //     children: <Widget>[
      //       Text('nice'),
      //       Text('data'),
      //     ],
      //   )
      // ],
    );
  }
}
