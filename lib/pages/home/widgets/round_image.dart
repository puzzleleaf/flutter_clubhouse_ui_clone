import 'package:flutter/material.dart';

class RoundImage extends StatelessWidget {
  final String url;
  final EdgeInsets margin;

  const RoundImage({Key key, this.url, this.margin = EdgeInsets.zero}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: NetworkImage(url),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
