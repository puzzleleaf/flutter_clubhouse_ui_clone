import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final Color disabledColor;
  final EdgeInsets padding;
  final Function onPressed;
  final bool isCircle;
  final Widget child;
  final double minimumWidth;
  final double minimumHeight;
  final BoxConstraints constraints;

  const RoundButton({
    Key key,
    this.text = '',
    this.fontSize = 20,
    this.color,
    this.disabledColor,
    this.onPressed,
    this.constraints,
    this.padding = const EdgeInsets.symmetric(
      vertical: 10,
      horizontal: 25,
    ),
    this.child,
    this.isCircle = false,
    this.minimumWidth = 0,
    this.minimumHeight = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all<Size>(Size(minimumWidth, minimumHeight)),
        backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
          if (states.contains(MaterialState.disabled)) {
            return disabledColor; //Disabled color
          }
          return color; //Regular color
        }),
        padding: MaterialStateProperty.all<EdgeInsets>(padding),
        elevation: MaterialStateProperty.all<double>(0.5),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          isCircle
              ? CircleBorder()
              : RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
        ),
      ),
      onPressed: onPressed,
      child: text.isNotEmpty
          ? Text(
              text,
              style: TextStyle(
                fontSize: fontSize,
                color: Colors.white,
              ),
            )
          : child,
    );
  }
}
