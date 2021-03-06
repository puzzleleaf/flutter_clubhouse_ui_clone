import 'package:flutter/material.dart';

class History {
  static Future pushPage(BuildContext context, Widget page) async {
    return await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) {
        return page;
      }),
    );
  }

  static Future pushPageUntil(BuildContext context, Widget page) async {
    return await Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) {
        return page;
      }),
          (Route<dynamic> route) => false,
    );
  }

  static Future pushPageReplacement(BuildContext context, Widget page) async {
    return await Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) {
        return page;
      }),
    );
  }
}
