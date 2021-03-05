import 'package:club_house/pages/home/profile_page.dart';
import 'package:club_house/pages/lobby/follower_page.dart';
import 'package:club_house/pages/lobby/lobby_page.dart';
import 'package:club_house/util/data.dart';
import 'package:club_house/util/history.dart';
import 'package:club_house/util/style.dart';
import 'package:club_house/pages/home/widgets/home_app_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: HomeAppBar(
          profile: myProfile,
          onProfileTab: () {
            History.pushPage(context, ProfilePage(
              profile: myProfile,
            ));
          },
        ),
      ),
      body: PageView(
        children: [
          LobbyPage(),
          FollowerPage(),
        ],
      ),
    );
  }
}
