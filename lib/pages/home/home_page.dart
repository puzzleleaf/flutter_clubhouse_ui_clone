import 'package:club_house/constants/style.dart';
import 'package:club_house/pages/home/widgets/home_app_bar.dart';
import 'package:club_house/pages/lobby/list_page.dart';
import 'package:club_house/pages/lobby/lobby_page.dart';
import 'package:club_house/pages/lobby/profile_page.dart';
import 'package:flutter/material.dart';

var profile = {
  'nickname': 'Golden Retriever',
  'username': '@dog',
  'followers': '1k',
  'following': '1',
  'image': 'assets/images/profile.jpg',
};

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.LightSand,
      appBar: AppBar(
        title: HomeAppBar(
          profile: profile,
          onProfileTab: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ProfilePage(
                profile: profile,
              );
            }));
          },
        ),
      ),
      body: PageView(
        children: [
          LobbyPage(),
          ListPage(),
        ],
      ),
    );
  }
}
