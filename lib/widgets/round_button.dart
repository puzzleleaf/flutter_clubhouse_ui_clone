import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final String text;
  final Color color;
  final Color disabledColor;
  final Function onPressed;

  const RoundButton(
      {Key key, this.text, this.color, this.disabledColor, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minWidth: 230,
      ),
      child: RaisedButton(
        color: color,
        disabledColor: disabledColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        elevation: 0.5,
        padding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 25,
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
