import 'package:club_house/pages/home/profile_page.dart';
import 'package:club_house/pages/lobby/invitation_page.dart';
import 'package:club_house/pages/lobby/lobby_page.dart';
import 'package:club_house/util/data.dart';
import 'package:club_house/util/style.dart';
import 'package:club_house/pages/home/widgets/home_app_bar.dart';
import 'package:flutter/material.dart';

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
          MainPage(),
          InvitationPage(),
        ],
      ),
    );
  }
}
