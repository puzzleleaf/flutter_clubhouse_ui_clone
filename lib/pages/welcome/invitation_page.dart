import 'package:club_house/util/history.dart';
import 'package:club_house/widgets/round_button.dart';
import 'package:club_house/widgets/round_image.dart';
import 'package:club_house/util/style.dart';
import 'package:club_house/pages/welcome/full_name_page.dart';
import 'package:flutter/material.dart';

class InvitationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.only(
          top: 30,
          bottom: 60,
        ),
        child: Column(
          children: [
            buildTitle(),
            SizedBox(
              height: 50,
            ),
            Expanded(
              child: buildContents(),
            ),
            buildBottom(context),
          ],
        ),
      ),
    );
  }

  Widget buildTitle() {
    return Text(
      '🎉 Welcome to Clubhouse.\nYou\'re Puzzleleaf\'s friend!',
      style: TextStyle(
        fontSize: 25,
      ),
    );
  }

  Widget buildContents() {
    return SingleChildScrollView(
      child: Column(
        children: [
          RoundImage(
            path: 'assets/images/puzzleleaf.png',
            width: 150,
            height: 150,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Puzzleleaf',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }

  Widget buildBottom(BuildContext context) {
    return Column(
      children: [
        Text(
          'Let\'s set up your profile?',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        RoundButton(
          onPressed: () {},
          minimumWidth: 230,
          color: Style.AccentBlue,
          text: '🐋 Import from Whale',
        ),
        SizedBox(
          height: 20,
        ),
        GestureDetector(
          onTap: () {
            History.pushPage(context, FullNamePage());
          },
          child: Text(
            'Enter my info manually',
            style: TextStyle(
              color: Style.AccentBlue,
            ),
          ),
        ),
      ],
    );
  }
}
