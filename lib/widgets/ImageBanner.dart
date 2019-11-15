import 'package:flutter/material.dart';

class ImageBanner extends StatelessWidget {
  final imageUrl;

  ImageBanner(this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(height: 200.0),
      decoration: BoxDecoration(
        color: Colors.grey,
      ),
      child: Container(
        constraints: BoxConstraints.tightFor(width: 200),
        child: Image.network(imageUrl, fit: BoxFit.cover),
      ),
    );
  }
}
