import 'package:club_house/constants/style.dart';
import 'package:club_house/pages/home/home_page.dart';
import 'package:club_house/pages/welcome/welcome_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clubhouse UI Clone',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Style.LightSand,
          elevation: 0.0,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
      ),
      home: WelcomePage(),
    );
  }
}
