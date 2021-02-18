import 'package:club_house/constants/util.dart';
import 'package:club_house/pages/home/lobby_page.dart';
import 'package:club_house/pages/home/widgets/home_app_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Util.LightSand,
      appBar: AppBar(
        title: HomeAppBar(),
      ),
      body: PageView(
        controller: _pageController,
        children: [
          LobbyPage(),
          LobbyPage(),
        ],
      ),
    );
  }
}
