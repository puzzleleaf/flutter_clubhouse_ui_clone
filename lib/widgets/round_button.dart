import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final Color disabledColor;
  final EdgeInsets padding;
  final BoxConstraints constraints;
  final Function onPressed;
  final Widget child;

  const RoundButton({
    Key key,
    this.text = '',
    this.fontSize = 20,
    this.color,
    this.disabledColor,
    this.onPressed,
    this.padding = const EdgeInsets.symmetric(
      vertical: 15,
      horizontal: 25,
    ),
    this.constraints = const BoxConstraints(
      minWidth: 230,
    ), this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: constraints,
      child: RaisedButton(
        color: color,
        disabledColor: disabledColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        elevation: 0.5,
        padding: padding,
        onPressed: onPressed,
        child: text.isNotEmpty ? Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
            color: Colors.white,
          ),
        ) : child,
      ),
    );
  }
}
